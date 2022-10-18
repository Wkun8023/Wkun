package com.myblog.blog.controller;

import com.myblog.blog.model.Blog;
import com.myblog.blog.model.BlogComment;
import com.myblog.blog.model.Pager;
import com.myblog.blog.model.User;
import com.myblog.blog.service.BlogCommentService;
import com.myblog.blog.service.BlogService;
import com.myblog.blog.service.UserService;
import com.myblog.blog.utility.BuildPager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * ClassName:BlogController
 * Package:com.myblog.blog.controller
 * Description:
 *
 * @Date:2020/7/23 16:47
 * @com.chuangmei
 */
@Controller
public class BlogController {

    @Autowired
    private BlogService blogService;

    @Autowired
    private UserService userService;

    @Autowired
    private BlogCommentService blogCommentService;

    //  初始化评论数量
    public int commentCount = 10;

    @GetMapping("/blogs/{id}")
    public String blog(@PathVariable String id, Model model, HttpServletRequest request) {

        //查询User
        User user = userService.queryUser();
        model.addAttribute("user", user);

        //在回收站中查询
        int count = blogService.queryBlogByrecycle(Long.valueOf(id));

        //已经在回收站的博客不提供访问
        if (count > 0) {
            model.addAttribute("user", user);
            return "error/404.html";
        }

        //文章是否加密
        Integer EncryptedPass = blogService.queryBlogIsEncrypted(id);


        // 加密
        if (EncryptedPass != null && EncryptedPass != 0) {
            if (request.getSession().getAttribute(id) != null) {}else {
                model.addAttribute("blogId",id);
                return "encrypted";
            }
        }

        //通过id查询blog
        Blog blog = blogService.getBlogByIdAndConvert(id);
        //查询评论
        List<BlogComment> comments = blogCommentService.queryCommentsByBlogIdLimit(Long.valueOf(id),commentCount);

        // 查询对应博客下的所有父级评论数量
        int parentBlogComment = blogCommentService.queryCommentCountByBlogId(Long.valueOf(id));

        //将查询的blog加入到request
        model.addAttribute("blog", blog);
        model.addAttribute("comments", comments);
        model.addAttribute("parentBlogComment",parentBlogComment);
        // 用于评论数量初始化
        model.addAttribute("commentCount", commentCount);

        return "blog";
    }

    //用于从博客详情页面返回到搜索页面,避免不支持Post请求导致500
    @GetMapping("/search")
    public String search() {
        return "redirect:/";
    }

    @PostMapping("/search")
    public String search(@RequestParam(defaultValue = "") String articletitle, Model model) {

        boolean enlargeRange = false;

        //如果搜索内容包括指定值那么开启扩大匹配范围
        if (articletitle.contains("^扩大匹配 ")) {
            articletitle = articletitle.replace("^扩大匹配 ", "");
            enlargeRange = true;
        }

        //通过title查询
        List<Blog> blogs = blogService.queryBlogByTitle(articletitle, enlargeRange);
        //查询出User
        User user = userService.queryUser();

        //加入
        model.addAttribute("blogs", blogs);
        model.addAttribute("user", user);
        model.addAttribute("searchcount", blogs.size());

        return "search";
    }

    //分页
    @PostMapping("/paging")
    public String paging(Integer pagestart, Model model, HttpServletRequest request) {

        //查询出博客数量
        Integer blogcount = blogService.queryBlogCount();

        //构建pager
        Pager pager = BuildPager.biuldPager(blogcount, pagestart);

        //查询出User
        User user = userService.queryUser();

        //System.out.println(pager);

        //查询出所有博客
        List<Blog> blogs = blogService.getAllBlog(pager);

        //当前页
        //request.getSession().setAttribute("currentPage",pagestart);

        //System.out.println("设置的页数" + pagestart);
        //System.out.println("得到的页数" + request.getSession().getAttribute("currentPage"));

        //加入
        model.addAttribute("blogs", blogs);
        model.addAttribute("pager", pager);
        model.addAttribute("user", user);

        return "index :: panelbodyContent";
    }


    @PostMapping("/blog/encryption")
    @ResponseBody
    public int blogEncryption(String code,Long blogId,HttpServletRequest request) {

        int count = 0;

        if (blogService.queryBlogEncryption(code,blogId) != null) {
            count = 1;
            request.getSession().setAttribute(blogId+"",code);
        }

        return count;
    }

    @GetMapping("/blog/encrypted")
    public String encrypted(Long blogid,HttpServletRequest request,Model model) {

        if (request.getSession().getAttribute(blogid+"") != null) {
            //查询User
            User user = userService.queryUser();

            //通过id查询blog
            Blog blog = blogService.getBlogByIdAndConvert(blogid+"");
            //查询评论
            List<BlogComment> comments = blogCommentService.queryCommentsByBlogId(Long.valueOf(blogid));

            //将查询的blog加入到request
            model.addAttribute("blog", blog);

            model.addAttribute("user", user);
            model.addAttribute("comments", comments);
            // model.addAttribute("originalBlogcontent", blogService.queryBlogOriginalContent(Integer.parseInt(blogid+"")));

            // 查询对应博客下的所有父级评论数量
            int parentBlogComment = blogCommentService.queryCommentCountByBlogId(Long.valueOf(blogid));
            model.addAttribute("parentBlogComment",parentBlogComment);
            // 用于评论数量初始化
            model.addAttribute("commentCount", commentCount);

            return "blog";
        }else {
            model.addAttribute("user", userService.queryUser());
            model.addAttribute("blogId",blogid);
            return "encrypted";
        }

    }

    // 点赞
    @GetMapping("/blog/admire")
    @ResponseBody
    public String admire(Long blogid,int admire) {

        int count = blogService.addAdmire(blogid);

        return count > 0 ? admire+1 + "" : "error/error";

    }

    // 通过blogid 获取 title 和 password(博客加密密码)
    @GetMapping("blog/simpleblog")
    @ResponseBody
    public Blog titlePassword(Long blogid) {

        // 通过博客id查询title和
        Blog blog = blogService.queryBlogRemoveContentByBlogId(blogid);

        return blog;

    }

    /**
     * 加密文章,通过blogid
     * 参数: blogid,password
     */
    @RequestMapping("blog/encryptByBlogId")
    @ResponseBody
    public Map encryptByBlogId(Long blogid,String password) {

        // 创建返回数据
        Map<String,Object> datas = new HashMap<>();

        if (blogid != null && blogid!= 0) {
            // 调用service修改博客的password属性 实现加密
            int count = blogService.modifyBlogPasswordByBlogID(blogid,password);

            datas.put("status",count);
            if (count > 0)
                datas.put("responseText","修改成功!");
            else {
                datas.put("responseText","修改失败!");
            }
        }else {
            datas.put("status",0);
            datas.put("responseText","修改失败,博客id为空!");
        }

        return datas;
    }


}
