/*
 Navicat Premium Data Transfer

 Source Server         : server123.57.136.136
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 123.57.136.136:3306
 Source Schema         : myblog

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 16/04/2022 19:08:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_background
-- ----------------------------
DROP TABLE IF EXISTS `t_background`;
CREATE TABLE `t_background`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_background
-- ----------------------------
INSERT INTO `t_background` VALUES (14, 'https://img-blog.csdnimg.cn/20200815151326685.jpg');
INSERT INTO `t_background` VALUES (15, 'https://img-blog.csdnimg.cn/20200823113714486.jpg');
INSERT INTO `t_background` VALUES (17, 'https://img-blog.csdnimg.cn/20200821160355107.jpg');
INSERT INTO `t_background` VALUES (18, 'https://img-blog.csdnimg.cn/20200819225148765.jpg');
INSERT INTO `t_background` VALUES (23, 'https://img-blog.csdnimg.cn/20200818112652752.jpg');
INSERT INTO `t_background` VALUES (28, 'https://img-blog.csdnimg.cn/20201004202242288.jpg');
INSERT INTO `t_background` VALUES (29, 'https://img-blog.csdnimg.cn/20201004202204578.jpg');


-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `firstpicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updatetime` datetime NULL DEFAULT NULL,
  `tagid` int(0) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `view` int(0) NULL DEFAULT NULL,
  `description` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stick` bit(1) NULL DEFAULT NULL,
  `recommend` bit(1) NULL DEFAULT NULL,
  `reprint` bit(1) NULL DEFAULT NULL,
  `supportreview` bit(1) NULL DEFAULT NULL,
  `admire` int(0) NULL DEFAULT NULL,
  `typeid` int(0) NULL DEFAULT NULL,
  `recycle` bit(1) NULL DEFAULT NULL,
  `recordlife` bit(1) NULL DEFAULT NULL,
  `sort` bigint(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 220 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (4, 'https://img-blog.csdnimg.cn/20201021183628989.gif', '2020-07-26', '2022-03-31 11:59:21', 1, '# 我的编程经历\n\n------------\n## 初识编程\n\n- ##### 博主的编程经历异常坎坷,无数次放弃,又无数次拾起,下面我将来讲述我曲折的编程道路!\n\n- ##### 在博主小学时期,由于那时候经常看一些国外的黑客电影,所以对计算机产生了浓厚的兴趣,但是小孩子的童年兴趣大多都是由游戏主导,我也不列外,小学4年级,家里面给我买了一台电脑,那时候别提多高兴了,但是由于是小学生,所以每天玩电脑打游戏的时间极少,那时候最大的乐趣就是在周末白天和小伙伴们开黑、晚上出去捉迷藏、烤烧烤等等等等，所以我的童年时光过的非常充实!\n\n- ##### 时间转瞬即逝,来到了中考，最终我以400多分进入了职业院校，选择了园林专业，至于为什么选择园林专业，最大的原因就是放学比较早，还记得那是2016年，我踏入了高中校园，开始了我一塌糊涂的高中生活，每天上学刷手机，放学玩游戏，由于4年级买的电脑已经不足以支撑当时的主流游戏了，所以渐渐的我开始了解编程！\n\n- ##### 但那个时候玩心大，并没有系统的学习，各种收集资源，但是一个也不看，就这样浑浑噩噩的度过了高一高二，在高三时期，因为一款游戏，开始真正接触到编程！\n\n	> 2020-05-17\n\n------------\n\n## 易语言对我的影响\n\n- ##### 时间转到2018年，我开始了解编程，我接触的第一个编程语言便是中文编程语言 - 易语言，全中文编程、拖动式组件让我产生了极大的兴趣，至此，我踏上了编程的道路！在此期间也写了许多小程序，但是都是作用于一些平时练习，没有什么实质性的作用，在高三上学期快结束时逐渐开始感到写代码的乏味无趣，恰逢家里的电脑换了新显卡，于是我又回归了每天打游戏的生活！直到寒假快结束时，自己也渐渐意识到每天过的浑浑噩噩，没有一点希望，渴望改变，但又无力改变，做事情总是3分钟热度，这个阶段也算是我个人转变的开始吧，寒假结束后，回到学校，和初中上了普高的同学聊天，了解到他们都在为了高考冲刺而奋斗，那时的我感到一丝后悔，但后悔终归后悔，把握当下才是最重要的，也是那时开始慢慢改变自己,后来我和我高中的一个好兄弟一起开始学习易语言,奉上本人第一个易语言程序↓\n\n	```Java\n	.版本 2\n\n	.程序集 窗口程序集_启动窗口\n\n	.子程序 __启动窗口_创建完毕\n\n	.子程序 _按钮1_被单击\n\n	信息框 (“你好易语言”, 0, , )\n\n	```\n\n- ##### 在高三下学期，学完易语言后做了许多软件，对自己也很有用，慢慢的体会到了编程的快乐，但是依然没有全身心的投入,当时游戏的吸引力还是巨大的!附上本人用易语言开发的小软件截图!↓\n\n	> 学习时候做的一些练习\n\n	![](https://img-blog.csdnimg.cn/20201026195149952.png)\n\n	> 钱包助手,那时候还想着每天记账\n\n	![](https://img-blog.csdnimg.cn/20201026195313999.png)\n\n	![](https://img-blog.csdnimg.cn/20201026195250194.png)\n\n	> 取图标工具,当时是跟着视频教程做的\n\n	![](https://img-blog.csdnimg.cn/20201026195409547.png)\n\n	> 学习助手,记录敲代码的时间\n\n	![](https://img-blog.csdnimg.cn/20201026195449586.png)\n\n	> 这个软件嵌套了许多功能,桌面标签、作息时间等等\n\n	![](https://img-blog.csdnimg.cn/20201026195537488.png)\n\n	> 一个挂机锁\n\n	![](https://img-blog.csdnimg.cn/20201026195753677.png)\n\n	> 桌面整理小程序,当时为了一个靠边伸缩功能纠结了好久\n\n	![](https://img-blog.csdnimg.cn/20201026195622606.png)\n\n\n- ##### 至此易语言也就暂时结束了，写过的程序远远不止这些，就不一一记录了易语言可以说是我的编程道路上的启蒙语言，一是因为中文编程感觉很亲切，第二是组件直接使用很容易激发兴趣，在我学习其他语言时不免会遇到很棘手的困难，那时候再回来写写易语言，也可以释放一些压力，所以易语言也是我继续坚持学习的动力之一,否则可能我的编程之路还没开始就结束了，也不会有这些文章了！感谢易语言！\n\n- ##### 不管是易语言、C、java等等，在学习期间都会遇到形形色色的困难，很多时候自己搞个2、3天也无法解决，一度怀疑自己是否真的不适合学编程，但是当真正亲手解决问题后，那种成就感是难以言表的！易语言是我的编程道路的第一步，但绝对不是最后一步，我将会继续努力,开拓更广阔的视野！\n> 2020-05-18 10:05:21 星期一\n\n------------\n\n## 接触C语言\n![](https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1589970064840&di=a51fb361fa7dfb7b878ed30c9f26e225&imgtype=0&src=http%3A%2F%2Fd.hiphotos.baidu.com%2Fzhidao%2Fwh%3D450%2C600%2Fsign%3D48394314861001e94e691c0b8d3e57da%2F279759ee3d6d55fb590e7cdb66224f4a21a4dd07.jpg)\n\n- ##### 在懒散的学习了接近半年易语言后，我逐渐感到易语言的局限性，做一些小软件很方便，但是很多复杂的功能难以实现，所以，在此之后，我开始准备着手学习一门新的编程语言，恰巧当时看到了一个编程语言排行榜，Java位居榜首，本来准备学习Java的，但是在网上看到许多建议是先学习C，了解所谓的面向过程，再去学习面向对象的Java，至此，我开始了C语言的学习！\n\n- ##### 在刚开始学习时，并没有什么学习路线，记得当时在网上买了一本《C语言从入门到精通》的书籍，照着书上的内容敲代码，但是因为本人是实打实的学渣一个，从小英语就不好，加上之前易语言的编程习惯，在学习C语言的时候非常头疼，看到一大串英文字母，那叫一个劲的头大，什么int、double、char、return、void等等，一个都不认识，那时候又有了放弃的念头！\n\n- ##### 在学到指针的时候，因为之前的基础知识学的不是很好，所以在这块学习起来非常费劲，那天晚上，我再一次放弃了编程，又投入到了游戏的怀抱，一个月后的晚上，我在看《当幸福来敲门》，这部电影对我触动很大，看完后我陷入了沉思，想起了这些天的自己，无比颓废，那时的我犹豫不决，想要改变，但又不想改变，总觉得现在继续学习已经晚了，别人已经领先很多了，但最终还是重新拾起了编程，只是学习的时间少的可怜，每天就那么几十分钟，那时的我还养成了一个坏习惯 - 拖延症，遇到问题总是明天再说，今天没学习，每天补上，明天没学，后天补，就在这样的情况下，高三下学期过了一半，我终于啃完了C语言的语法，没错，只是语法 if else那种！\n\n- ##### 高三下学期快结束时，我感到了前所未有的压力，以前的同学，身边的朋友，都在努力，高考的高考，工作的工作，不断充实自己的生活，而我依旧每天度日如年，一个周末，我与一个初中同学聚餐，他告诉我他们每天没日没夜的学习，早上6点起，晚上12、1点睡，就为了考上自己理想的大学，这些话又让我看到我自己是多么的不堪、懒散，那一刻，我真正的开始改变，开始学习！\n\n- ##### 那天回去后，我上网查资料，制定自己的学习路线，最开始是在B站看郝斌老师的C语言教程，感觉非常不错，视频中变量名称，方法名称等，能简则简，没有铺天盖地的英文，对初学者非常友好，并且各个内容讲的非常详细，虽然视频是09年的，但是我至今也认为这是我看过最好的C语言教程！于是，我在郝斌老师的带领下，学完了C语言，期间也写了很多程序，从最基础，到小功能的实现，即使写100行代码，会报十多个错误，但是当程序真正跑起来的那一刻，内心还是很有成就感的！\n\n- ##### 附上学习期间的代码：\n\n	> 入门必写的 hello world\n\n	```c\n	#include<stdio.h>\n\n	int main()\n	{\n		printf(\"Hello World!\\n\");\n\n		return 0;\n	}\n	```\n\n	> if...else\n\n	```c\n	#include<stdio.h>\n\n	int main(void)\n	{\n		if(2>1）              \n			printf(\"A\\n\");\n\n		else\n			printf(\"B\\n\");\n\n		return 0;\n	}\n	```\n\n	> for循环与if\n\n	```c\n	/*求1-100能被3整除的数之和*/\n	#include<stdio.h>\n\n	int main(void)\n	{\n		int i;\n		int sum=0;\n		for(i=3;i<=12;++i) //3 6 9 12 = 30\n		{\n			if(i%3==0)     //如果i能被3整除    i%3==0\n			 sum=sum+i;\n		}\n		printf(\"%d\\n\",sum);\n		return 0;\n	}\n	}\n	```\n\n	> 数组\n\n	```c\n	#include<stdio.h>\n\n	int main(void)\n	{\n		int a[5]={1,2,3,4,5};\n		//a表示数组额名字，[5]表示有几个元素，{1，2，3，4，5}表示元素\n\n		int i;\n		for(i=0;i<5;++i)//0 1 2 3 4 \n		printf(\"%d\\n\",a[i]);\n		//printf(\"m%d\\n\",a[5]);\n	return 0;\n	}\n	```\n\n	> 指针\n\n	```c\n	#include<stdio.h>\n\n	int main(void)\n	{\n		int * p;//p是变量的名字，而 int* 表示的是p变量只能存放int类型变量的地址\n\n		int i;\n		double b;\n		//p=&b;//错误 是因为 不能将double类型变量的地址存放进 p 变量 因为p变量只能存放int类型的变量地址 \n\n		//p=i;   //错误是因为i是整型变量 而p变量只能存放整型变量的地址 不能存放整型变量\n		//p=55;  //错误 55 也是一个整数 而 p 变量只能存放 整型变量(int类型)的地址\n		//p=&i; //正确 \n\n		return 0;\n	}\n\n	```\n\n	> 学完做了个贪吃蛇小游戏(纯界面) 代码较多就不上传了\n\n	![](https://external-30160.picsz.qpic.cn/b5a2041c9c931dc2509293bc927186ce)\n\n\n- ##### C语言虽然我只是学习了一些皮毛，并且在学习过程中遇到了非常多的困难，但是它带给我的并不只是一些编程知识，更是让我了解了什么是编程，让我有了解决困难的勇气，让我明白编程并不是只有聪明人才会的技能，每个人都能写出好程序！它让我度日如年的生活开始慢慢转变...\n\n- ##### 此时我已经不满足于C语言给我带来的乐趣了,接下来我便踏入的Java的世界!\n\n> 2020-05-22 20:15:51 星期五\n\n------------\n\n\n\n## Java语言的学习历程\n\n\n- ##### 在学C语言时，程序总是以黑窗口的形式运行，慢慢的自己也就不满足于一些小游戏小功能的实现了，于是，在高三暑假期间，我正式开始学习Java！因为暑假报了驾校，放假了又爱玩，所以学习时间并不是特别多，大概一天可能就1、2个小时，高三的暑假放假接近有3个月，我开始了盲目的学习！\n\n- ##### 最初开始学习Java的时候，根本不知道什么是Java，也不知道有前端、后端之分，那时候我给自己的规划是：JavaSE、JavaWeb、JavaScript，在我像一个无头苍蝇一样，乱碰乱撞的学习了接近1个半月，越学越离谱，后来查了许多资料才明白，原来还有前后端这种概念，那个时候没有学习方法和学习路线，浪费了很多时间，从那之后，每次学习一门新的技术，都会先去了解他的使用方法、诞生背景、应用范围、要知道你看JavaScript的书是学不了Java的！这也为我后来的学习道路做了一个很好的铺垫！！\n\n- ##### 因为有一些C语言的基础，所以在学习JavaSE语法时段，并没有遇到太大的困难，于是当时的我便稍微优点膨胀了, 在后面接触到面向对象时, 完全不能理解, 什么ArrayList、LinkedList、HashMap等等，对当时的我来说完全是听天书，而且那个时候不做笔记，学完就忘，以至于后来我学完JavaSE后对这些知识点还是非常模糊，刚接触到流的时候，老是被那些流的名字搞混，当时的学习方法也就是的跟着视频教程敲代码，俗话说师傅领进门，修行在个人，如果一味的跟着别人的路线走，难免会出错，每个人的开发环境不同，编码习惯也不一样，所以导致了视频中运行正常，自己写的代码却接连报错！特别是打印的异常信息，当时还没用到集成开发环境，是用的EditPlus来开发，运行程序也是在Dos命令行，一旦出错，就被打印的一大串英文刷屏，很是头疼，只能翻译后去看，但很多时候，翻译了也看不懂，为了解决这种问题，我加了无数个Java交流群，百度无法解决的话，就只能一个群一个群去请教群友！就这样慢慢的学完了JavaSE的内容，虽然学的很浅，但那时候对Java也有一定的了解了...\n\n	> 附java学习图\n\n	![](https://external-30160.picsz.qpic.cn/501df4b5d2ac2caf450bfa35d18a75dd)\n\n	![](https://external-30160.picsz.qpic.cn/ed41fd4f2df89e9e5e33808ecdb4e165)\n\n- ##### 学完Java的基础,接下来开始接触前端页面了，当时刚刚用HTML做出一个静态网页时，特别激动，附上第一个静态页面截图\n	> 静夜思\n\n	![](https://external-30160.picsz.qpic.cn/5db677f4766754c6189c7df2aa302534)\n\n- ##### 前端内容相对于前面的学习，简单很多，而且有趣，所以我也比较急切，在学习CSS时，学得非常快，导致基础不牢固，直到现在也是，如果不用框架的话，那我的CSS完全就是面向百度布局！在继CSS之后又学习了JavaScript，这前端3大块学完后，就开始了数据库MYSQL的学习...\n\n### MYSQL数据库\n- ##### 在学习Mysql的时候，刚开始还是比较顺利的，但是越往后面学习越觉得难受，特别是到表连接和分组查询那一阶段，感觉比较难以理解，很多时候能看懂代码，但是自己就是写不出来，后来慢慢的写了很多sql语句，做了很多增删改查，慢慢的就熟练起来了，在我学完MySQL后，对于一些简单的多表连接查询已经信手拈来了！\n\n	>  附上mysql学习截图\n\n	![](https://external-30160.picsz.qpic.cn/42897134e2a28ab51005e3f5f187bcb5)\n\n- ##### 学习完mysql数据库后，我恰好步入了大学校园，一切新的东西映入眼帘，此时我脱离了家人和老师的管束，但是很庆幸有了之前的经历，大学的生活并没有让我颓废，相反，有了更多的课余时间，我可以学习更多的东西，充实自己的生活，在刚进入大学校园时，满怀对未来生活的憧憬，对一切事情都很乐观，因为是第一次住校，刚开始还有点不习惯，但是寝室的小伙伴们都是自己的高中同学，和大家相处的很愉快，而且我还被大家选成了宿舍长承担起了打扫卫生的重要责任！\n\n- ##### 于此同时，在高中时期和我一起学习易语言的兄弟也开始重拾梦想，再次走上了编程的道路，我也不再是孤军奋战！\n\n	>  在MYSQL过后便迎来了Servlet....\n\n### Servlet\n- ##### 学习Servlet时，第一次用到了集成开发环境，那种感觉就像哥伦布发现新大陆一样，写代码太爽了，根本停不下来，Servlet可以说是我在接触Java后最有趣的一块技术点了，在写出第一个前后端交互程序时，内心有一种难以言表的激动，虽然只是短短的几行代码，但是又增加了我很大的信心，那时才明白，原来我们平常在网上经常做的登录功能可以这样实现！但是在学习Servlet过程中,也遇到了很多比较棘手的问题，遇到最多的可能就是xml文件的配置问题和路径问题，但是总的来说Servlet的学习还是比较顺利的！\n\n### JDBC\n\n- ##### 学习完成Servlet后，对Java也越来越感兴趣，随后，我便开始了JDBC的学习，但是幸运往往是有限的，在学习JDBC的时候，遇到了一个让我崩溃的问题，这一度让我怀疑自己的能力，记得当时是在写第一个Java语言链接数据库的代码，因为mysql时域问题，刚一运行，直接出来一大串报错信息，伴随着乱码，让我直接不知所措！那时候又刚刚从Myeclipse转到IDEA，还不太熟练，所以这个问题我没日没夜的弄了有3天左右！\n\n	> 附上这个万恶的异常！\n\n	```java\n	The server time zone value \'???ú±ê×??±??\' is unrecognized or represents more than one time zone. You must configure either the server or JDBC driver (via the serverTimezone configuration property) to use a more specifc time zone value if you want to utilize time zone support.\n	```\n\n- ##### 最后在群友的帮助下，一行代码解决问题！\n\n	`set global time_zone=“+08:00”；`\n\n- ##### 有过这次经历后，在后来的学习历程中，也有了自己解决问题的信心！JDBC因为内容比较少，大概两天就搞定了，此时的我已经能够简单的结合HTML、Java实现增删改查的功能了！在做了几个增删改查的项目后，我开始了框架的学习，那时候单纯认为框架就是最终目的，所以准备开始学习还是很激动的....\n\n### 框架\n\n- ##### JDBC完成后，接下来就是框架了，但是当时我连什么是框架都不知道，只是每天看一些文章，感觉框架很强大，学完就天下无敌的那种，后来我才明白，基础才是最重要的，既然要学习，那就要先了解，不能再像以前一样盲目的浪费时间，于是我查阅了很多资料，了解到SSM和SSH，当时很困惑，到底学那一块，后来请教群友们后，决定开始SSM的学习！\n\n- ##### 对于框架，我的学习顺序是Mybatis > Spring > SpringMVC，我的第一个学习的框架是持久层的mybatis，在刚学习时，我总感觉这个框架是多余的，明明jdbc几行代码就能搞定的事情，非得写一大堆xml配置文件，而且动不动就报错，但是没办法，还是慢慢学完了mybatis，但是学的很浅，mybatis过后遍开始了Spring的学习，这三个框架中我个人感觉最难的就是Spring了，那时mybatis的xml配置已经让我很难受了，但是没想到Spring的xml配置文件更多，而且太多英文单词记不住了，各种类名、属性名搞得我是晕头转向，常常是学完这个忘了那个，对于Spring的IOC和AOP感觉很难理解，就算学完了，我都还说不清楚这两个有什么用！Spring过后便是SpringMVC了，这个框架倒不是很难，加上我的Servlet学习的还不错，没有遇到什么较大的困难！\n\n- ##### 框架的学习期间也遇到了很多的困难，特别是spring的IOC和AOP，但是由于有了之前的经验，也都陆续解决了这些困难，三大框架的学习几乎用了我一学期的时间，后来也陆续学习了一些其他的技术，redis、Linux等，在今年的疫情期间，利用闲暇时间基于SpringBoot做了这么一个博客项目，也算是对之前学习的一些知识进行巩固吧！\n\n### 整合\n- ##### 学习完三大框架后，我突然不知道该做什么了，脑子里很乱，总觉得学了根没学一样，没办法把他们综合起来用，后来又去了解了三层架构，看了一些三大框架整合的视频，自己也做出了一个增删改查的算是小项目吧，那时还是比较兴奋的，后续有做了很多小项目，但是也都只是简单的增删改查而已！\n\n- ##### 写了一些简单的项目后，我开始不满足与现状，想做一个大一点的项目，那时候心比天高，什么都想过，商城、网盘、图书管理等等，最后还是决定做个个人博客项目，那样也好记录学习和生活！但是由于我的前端基础能力太差，连个像样的页面都写不出来，那段时间折腾了很久很久，建了无数个项目，不出所料最后全都烂尾了！！后来偶然在B站看到了一个博主发的个人博客的搭建教学视频！于是就开始跟着视频学习，记得那个时候我还在上网课，但是我几乎每节课都在敲代码。\n\n- ##### 由于视频中使用的技术是：semanticUI + SpringMVC + Spirng + SpringDataJpa，但是我那时又没学过semanticUI和SpringDataJpa，于是简单了解了下就开始跟着视频里的老师敲代码，就这样他写一个div我写一个div慢慢的写完了前台页面，其中遇到的问题数不胜数，比如各种插件无法引入、样式不生效等等，但是最后还是解决掉了，光是前台页面大概我就写了5、6天，前台写完便开始了后台的开发，依旧是跟着敲代码，经过我不懈的努力，最终还是完成了博客的搭建，尽管阉割了很多功能，但是搭建成功了还是很开心的！\n\n- ##### 博客虽然搭建完成了，而且也部署到服务器了，但是我深知这并不是我靠自己的搭建的，恰好疫情好转，我们也开学了，我便下定决心在放暑假之前一定要靠自己搭建出一个像样的个人博客，理想总是美好的，现实却是残酷的，在开学之后，我整个人就像失去了方向似的，不知道该干些什么！想写项目，又写不出页面，想拿别人的页面，又看不懂，而且出各种问题，思来想去还是决定学习一门前端框架，于是我便开始了semanticUI的学习，大概学了3、4天，我依旧是毫无头绪，不知道一个页面怎么搭建，连抄别人的代码都不会，那时感觉自己已经不能用菜来形容了，简直就像智商不够一样，经过几天的酝酿，在请教很多大佬过后，我放弃了semanticUI的学习，转而学习bootstrap，本以为会好一点但是在学完bootstrap后我依旧是写不出页面，跟着视频敲，最后的成果都会有很大出入，而且一直在学习前端知识，让本来就薄弱的后端和JavaSE已经遗忘的差不多了，那段时间我接近崩溃，感觉自己这一年来花了这么多的心血但是什么都没学到，为了不让自己无所事事，也是为了逃避，假装自己还在努力，我开始学习python，在学校的一个多月，我没课的时候整天在图书馆浑浑噩噩的学习。\n\n- ##### 学校放假后，回到家的我变得更加颓废，在校期间还会假装自己很努力，回到家后我彻底堕落了，每天刷手机、骑自行车逛绿道、打游戏，这样的生活持续了一周左右，我渐渐的开始感到不服气，反复的问自己：“已经坚持这么久了，难道要放弃吗？以后会后悔吗？” 在经过强烈的思想斗争过后，最终还是选择继续，我从头开始学习了bootstrap，看了无数别人写的代码，但是依旧无济于事，自己还是写不出一个像样的页面，7月3日的晚上，这是一个让我铭记的夜晚，我从bootstrap官网搬运了一个导航，一个巨幕，稍作修改，加了个背景，做出了一个简单的欢迎页面，附图 ↓\n\n	![](https://img-blog.csdnimg.cn/202010052245101.JPG)\n\n- ##### 紧接着我又搬运了一个登录界面，并且实现了登录功能，这个时候我已经是信心满满了，越往后做，越是感觉得心应手，不久后我便写出了一个完整的页面，并实现了后端代码，附图 ↓\n\n	![](https://img-blog.csdnimg.cn/20201005225156602.JPG)\n\n- ##### 这便是我的第一个有点作用的项目了，搭建这个项目大概花费了7、8天，这个项目搭建完成后自己再写页面也就简简单单了，在这个项目过后，我正式开始搭建我的个人博客，真正的从0开始开发，每开发一个页面、实现一个功能都会让我自己更加自信，整个博客系统从开发到基本功能的实现，大概花费了8-10天左右，当真正把项目打包部署到服务器，那一刻内心真的无比骄傲，联想到以前的努力、以及这几天的废寝忘食，突然感觉这一切都是值得的，也为自己能够坚持到今天感到高兴！\n\n> 2020-10-05 23:03:26 星期一 记录\n\n------------\n\n![](https://picsum.photos/seed/picsum/1000/600)\n## 结尾\n\n- ##### 从刚开始的hello world，到今天能够独立开发一些小项目，从以前不停的在群里抛异常，到现在也能给别人解疑答惑，从度日如年的生活，到现在感觉光阴似箭，从网瘾少年，到有梦想的开发者，完成这些我用了接近1年的时间，中间不免有过放弃，有过迷茫，虽然现在也是一个小白，但是我将会不断的学习新的知识，充实自己的生活，很感谢当初的自己重新拾起了编程，有时候放弃与坚持就在一念之间，当你停下脚步，别人却还在奔跑，偶尔感觉学习实在是太累了，想放弃，我也无数次有过这些念头，那时候解决方法就是看一些励志电影，励志短片，但也就管用个2、3天，所以有一段时间我几乎每天都会看这些类似的影片！也很感谢我身边的许多朋友，他们也在鼓励我、激励着我，让我不要放弃！我会继续怀揣我的梦想，走向更远的道路！我也希望可以用我的经历帮助到那些正在面临这些困惑的朋友！\n\n- ##### 编程带给我的不仅仅是技术方面的收获，更重要的是它让我有了解决困难的勇气，让我明白努力肯定会有收获，当靠自己的努力做好一件事情时，内心是非常有成就感的，在我的这个博客项目开发以及部署到服务器的过程，都遇到了形形色色的困难，这些困难很棘手，有时候几小时甚至几天都没办法解决，但是最终自己努力解决后不仅收获心里上的成就感，而且以后再次遇到此类错误，很快就能解决，所以我认为在编程的道路上，就是不断的探索错误，寻求解决方法，在解决这些错误的同时，自己的技术能力也在不断的提高，日积月累，一年两年后也许就会会成为别人口中的大牛！生活亦是如此，我将会把在编程中学习到的理念运用在实际生活中，用这样的心态去面对生活中许许多多的困难！\n\n> 2020-05-22 20:17:07 星期五\n\n##### —— 完 ——\n\n\n\n\n\n\n', '原创', '我的编程经历', 4946, '编程 - 它改变了我的生活，让我从一个网瘾少年转变成为一个有梦想的开发者、学习者，它是我的挚友，亦是我生活中的精神依托，我将开启我的逐梦之旅，望能在这条路上越走越远...', b'0', b'1', b'0', b'1', 112, 4, b'0', b'0', 99, NULL);
INSERT INTO `t_blog` VALUES (12, 'https://img-blog.csdnimg.cn/20200809231318800.jpg', '2020-07-27', '2020-08-26 18:13:55', NULL, '# 我在学习英语\r\n\r\n![](https://cdn.u1.huluxia.com/g4/M01/7C/51/rBAAdl7u1sSAKCmSAAqf56y2lX4596.jpg)\r\n\r\n![](https://external-30160.picsz.qpic.cn/387e7fb8b5e962111abc086e2656f32e)\r\n> ### doing sth\r\n\r\n\r\n![](https://cdn.u1.huluxia.com/g4/M02/7C/51/rBAAdl7u1uCAVnLYAAqFRyLoVok341.jpg)\r\n\r\n\r\n![](https://external-30160.picsz.qpic.cn/a79155e9267be73559afebca47ea498b)\r\n> ### sb to do sth\r\n\r\n![](https://external-30160.picsz.qpic.cn/8beaecdac1111648f975506fdec0e80f)\r\n> ### sb doing sth\r\n\r\n', '原创', '我的英语学习经历', 298, '对于英语的学习不能想着一步登天,我们需要花费很多努力,可能一时间不会有太多的回报,但是坚持下去一定能成功!', b'0', b'0', b'0', b'1', 0, 3, b'1', b'0', 0, NULL);
INSERT INTO `t_blog` VALUES (13, 'https://external-30160.picsz.qpic.cn/8dd40a630e5f0eed1e63201c260f8fa9', '2020-07-28', '2020-08-26 17:02:21', NULL, '## <font color=\'teal\'>HashMap</font>\n##### HashMap的key就是HashSet集合，无序、不可重复\n##### HashMap底层是一个Hash表，属性有key，value，hash，next\n##### 数组中每个元素中的单向链表的每个节点的hash值是相同的，该hash值就是该单向链表所在的元素的 **下标**,hash值是通过调用key的hashCode()方法经过hash算法得到的.\n\n## <font color=\'red\'>HashMap的put(k,v)方法实现原理:</font>\n- ##### 1. 当调用put(k,v)时,会将传入的key和value封装到Node对象中\n- ##### 2.再调用key的hashCode()方法得出hash值,**通过hash算法计算出对于数组中的下标**,如果下标中没有元素,那么直接将此Node对象添加到当前位置,**如果下标中已经存在链表了,那将会用Node中的key和每一个节点中的key进行equals()**,如何全部返回false,就将Node添加至链表的末尾,如果有一个返回true,那么将其value值覆盖(也就是hashMap中的key重复,value覆盖)\n\n## <font color=\'red\'>HashMap的get(k)方法实现原理:</font>\n- ##### 当调用get(k)方法时,先调用k的hashCode()方法,得出hash值,再通过hash算法的到数组对应的下标,如果当前下标没有元素,那麽直接返回null,**否则用key对链表中的每一个节点的key进行equals(),如果为true,将会返回此key对应的value值!如果每一个节点都返回false,表示没有找到,返回null**\n\n## **<font color=\'red\'>重点: </font>**\n- ##### 1. 在Hash表中,**每一个下标对应的节点中的hash值是相同的,表示这些节点存在于同一张单向链表上**,这也是为什么需要重写hashCode()方法,如果不重写,将会调用Object中的hashCode(),那样会导致每一个节点对象的hash值都不相同,每个Node都会被添加到数组对应下标的第一个元素中!\n\n- ##### 2. 为了保证元素的不重复,所以需要重写equals()方法,因为HashMap中的key就是HashSet集合,所以存储在HashSet中的元素也需要重写HashCode()和equals()方法\n\n- ##### 3. 如果重写的hashCode()**都返回固定的值**,那样会导致**所有的Node的hash值相同,全部挂在一张链表上**,此时的hash表就成了单向链表,反之,如果重写的hashCode()方法**全都返回不同的值,那么每个Node的hash值都不同**,就变成了一维数组,以上问题称之为:**散列分布不均匀**\n\n- ##### 4. HashMap的默认初始化容量为16,默认加载因子是0.75,当数组容量达到75%时,进行扩容<br><i>比如当前默认初始化容量为16,负载因子为0.75,16*0.75 = 12, 当数组容量达到12,进行扩容</i>\n\n- ##### 5. HashMap的初始化容量必须是2的倍数,这是为了散列分布均匀,和提高存取效率\n\n- ##### <font color=\'green\'>♦6.对于存储在HashMapkey部分和存储在HashSet集合中的元素,都需要同时重写hashCode()和equals()方法</font>\n\n- ### 7.关于扩容:resize()方法,进行扩容,扩容之后是原容量的2倍\n\n## 关于HashMap的负载因子\n- ##### 负载因子相当于是一个扩容机制的阈值,当容量超过这个阈值,就会引发扩容机制,默认是0.75,但是可以通过构造方法指定\n- ##### 为什么要设置为0.75?\n	- ##### <font color=\'red\'>我们先要了解,数据一开始是保存在数组里面的，当发生了Hash碰撞的时候，就是在这个数据节点上，生出一个链表，当链表长度达到一定长度的时候,默认为8，就会把链表转化为红黑树,当树上的分支小于6后又会变成单向链表</font>\n\n	- ##### 设想我们将负载因子设置为1，如果数组长度为10，只有将这10个元素全部填满，才会引发扩容机制，这样会导致很大的问题，因为hash冲突是不可避免的，<font color=\'red\'>当负载因子为1，会导致大量的hash冲突，底层的红黑树会很复杂，查询效率变低，这样空间的利用率虽然是最大化的，但是效率降低了！</font>\n\n	- ##### 如果我们将负载因子设置为0.5呢？那样会导致数组容量使用到一半时就开始扩容，那也填充的数据少了，hash冲突也会减少，底层链表的长度和红黑树的高度也会降低，检索效率增加，但是又会导致空间利用率降低，原本10m的数据，需要用20m来存储<font color=\'red\'>这样虽然时间效率提升了，但是空间利用率降低了</font>\n\n	- ##### <font color=\'red\'>将负载因子设置为0.75是一个折中的方法,此时空间利用率较高,也会减少较多的hash冲突,底层的链表和红黑树的长度较低,提升了时间效率</font>\n\n\n### jdk代码\n\n```java\n\n 		/**\n         * 默认初始化容量16\n         */\n        static final int DEFAULT_INITIAL_CAPACITY = 1 << 4; // aka 16\n\n        /**\n         * 默认负载因子0.75\n         */\n        static final float DEFAULT_LOAD_FACTOR = 0.75f;\n\n		//当链表长度到达8时,将链表转换为红黑树\n		static final int TREEIFY_THRESHOLD = 8;\n\n		//当长度为6时再转换成链表\n		static final int UNTREEIFY_THRESHOLD = 6;\n```\n\n### Node对象\n```java\n    transient Node<K,V>[] table;\n\n    static class Node<K,V> implements Map.Entry<K,V> {\n        final int hash;\n        final K key;\n        V value;\n        Node<K,V> next;\n\n        Node(int hash, K key, V value, Node<K,V> next) {\n            this.hash = hash;\n            this.key = key;\n            this.value = value;\n            this.next = next;\n        }\n\n        public final K getKey()        { return key; }\n        public final V getValue()      { return value; }\n        public final String toString() { return key + \"=\" + value; }\n\n        public final int hashCode() {\n            return Objects.hashCode(key) ^ Objects.hashCode(value);\n        }\n\n        public final V setValue(V newValue) {\n            V oldValue = value;\n            value = newValue;\n            return oldValue;\n        }\n\n        public final boolean equals(Object o) {\n            if (o == this)\n                return true;\n            if (o instanceof Map.Entry) {\n                Map.Entry<?,?> e = (Map.Entry<?,?>)o;\n                if (Objects.equals(key, e.getKey()) &&\n                    Objects.equals(value, e.getValue()))\n                    return true;\n            }\n            return false;\n        }\n    }\n\n```\n\n![](https://external-30160.picsz.qpic.cn/9ca2a30e13279839960d00f670bb9734)', '原创', 'HashMap', 1235, '哈希表：相比上述几种数据结构，在哈希表中进行添加，删除，查找等操作，性能十分之高，不考虑哈希冲突的情况下（后面会探讨下哈希冲突的情况），仅需一次定位即可完成，时间复杂度为O(1)，接下来我们就来看看哈希表是如何实现达到惊艳的常数阶O(1)的。', b'0', b'1', b'0', b'1', 1, 14, b'0', b'0', 0, NULL);
INSERT INTO `t_blog` VALUES (14, 'https://external-30160.picsz.qpic.cn/8dd40a630e5f0eed1e63201c260f8fa9', '2020-07-28', '2020-07-28 16:37:12', NULL, '## List集合\n\n### 有序、可重复\n### 有序：存进去说明顺序，取出来还是什么顺序\n\n##### ArrayList是数组:数组有下标,所以ArrayList有很多新特性\n\n### 初始容量以及扩容\n- ##### ArrayList的底层初始化容量是10,扩容之后是原容量的1.5倍\n##### Vector集合默认初始化容量是10,扩容是原容量的2倍\n### 优化:\n##### **尽量减少数组的扩容,因为扩容会进行数组拷贝,很消耗内存，推荐在创建集合的时候初始化容量**\n\n### 适用范围\n\n##### ArrayList：\n- ##### 底层采用数组进行存储元素：适合查询，不适合频繁的增删元素\n\n### LinkedList：\n- ##### 底层采用双向链表数据结构，适合增删元素，不适合查询\n\n### Vector：\n- ##### 底层用的也是数组，但Vector是线程安全的，效率较低，很少使用\n\n### 常用方法\n##### //添加方法：\n- ##### add(int index, Object o) //向指定位置添加元素\n- ##### addAll(int index, Collection c) //向指定位置添加集合\n##### //删除方法\n- ##### remove(int index) //删除指定元素\n##### //查询方法：\n- ##### get(int index) //获取指定位置的元素\n- ##### indexOf(Object o) //获取指定元素的位置\n- ##### lastIndexOf(Object o) //获取指定元素最后一次出现的位置\n##### //修改方法：\n- ##### subList(int fromIndex, int toIndex) //截取子集合从fromIndex到toIndex，要头不要尾\n- ##### set(int index, Object o) //修改指定位置的元素\n\n', '原创', 'List集合常用方法', 160, 'Java中的集合包含多种数据结构，如链表、队列、哈希表等。从类的继承结构来说，可以分为两大类，一类是继承自Collection接口，这类集合包含List、Set和Queue等集合类。另一类是继承自Map接口，这主要包含了哈希表相关的集合类。', b'0', b'0', b'0', b'1', 1, 1, b'1', b'0', 0, NULL);
INSERT INTO `t_blog` VALUES (15, 'https://external-30160.picsz.qpic.cn/8dd40a630e5f0eed1e63201c260f8fa9', '2020-07-28', '2020-08-10 00:54:58', NULL, '## SpringMVC执行流程\n\n##### 1.浏览器提交请求给中央调度器（DispatcherServlet）\n\n##### 2.中央调度器（DispatcherServlet）判断该请求是否为multiparty请求\n\n##### 3.中央调度器将这个请求给了处理器映射器（HandleMapping），然而处理器映射器被封装成一个集合，需要通过遍历所有的处理器映射器，找到对应这个请求的处理器映射器\n\n##### 3.处理器映射器（HandleMapping）根据这个请求找到对应的处理器，（hm.getHandler(request)）将这个处理器和拦截器一起封装成一个处理器执行链（HandlerExecutionChain），最后返回给了中央调度器（DispatcherServlet）\n\n##### 4.中央调度器（DispatcherServlet）用处理器执行链（HandlerExecutionChain）中的处理器（Handler），通过遍历所有的处理器适配器（HandlerAdapter），再通过ha.supports(handler)方法，supports方法底层通过instanceof,找到对应的处理器适配器（HandlerAdapter）\n\n##### 5.处理器适配器（HandlerAdapter）再调用handle方法执行处理器执行链（HandlerExecutionChain）中的处理器（Handler）执行返回的结果是ModelAndView	（mv =ha.handle(processedRequest, response, mappedHandler.getHandler())）处理器将执行结果返回给了适配器，适配器直接将ModelAndView返回给了中央调度器\n\n##### 6.中央调度器（DispatcherServlet）将ModelAndView给了视图解析器，视图解析器将逻辑视图解析成物理视图，生成View对象，再将View对象返回给中央调度器\n\n##### 7.中央调度器拿到View对象，再调用View自己的render方法将view进行渲染（数据填充（通过ModelAdnView））渲染方法：render(mv, request, response)\n\n##### 8.中央调度器再将View形成响应（response），返给浏览器.\n\n![](https://cdn.u1.huluxia.com/g4/M02/45/FE/rBAAdl7NNyaAf0-IAAVIP-WSgXU156.png)', '原创', 'SpringMVC执行流程', 1014, 'Spring 框架提供了构建 Web 应用程序的全功能 MVC 模块。使用 Spring 可插入的 MVC 架构，从而在使用Spring进行WEB开发时，可以选择使用Spring的Spring MVC框架', b'0', b'1', b'0', b'1', 1, 17, b'0', b'0', 1, NULL);
INSERT INTO `t_blog` VALUES (16, 'https://external-30160.picsz.qpic.cn/14041f077f2af75dafbddb963b0eee55', '2020-07-28', '2020-08-02 17:29:45', NULL, '# 列表\n### 创建一个列表\n- ##### member = [\"张三\",\"李四\",\"王五\",\"赵六\"]\n\n### 向列表中追加元素\n- ##### member.append(\"xxx\")\n\n### 向列表中追加多个元素\n- ##### member.extend([\"Mario\",\"Lucy\"])\n\n### 在指定位置插入元素\n- ##### member.insert(0,9999)\n\n```python\n#创建一个列表\nmember = [\"张三\",\"李四\",\"王五\",\"赵六\"]\nprint(member)\n\n#创建一个空列表\nempty = []\n\nnumber = [1,5,6]\nprint(number)\n\n#列表可以添加多种数据类型\ntogether = [\"Mary\",12.7,50,True,[1,1.5,\"哈哈哈\"]]\nprint(together[4][0])   #1\n\n#追加数据\nmember.append(\"田七\")\n\n#extend参数可以是一个列表\nmember.extend([\"Mario\",\"Lucy\"])\nprint(member)\n\n#insert:在指定位置插入一个元素\nmember.insert(0,9999)\nprint(member)\n```\n\n### del：通过下标删除，如果不给下标会直接删除掉整个列表\n### remover(\"元素\")：通过传入列表中的元素进行删除\n### pop()：弹出列表的最后一个元素，并返回该元素\n\n```python\n#创建列表\nmember = [\"李四\",\"王五\",\"Lisa\",\"Mary\"]\n\n#删除\n#删除下标为1的元素\ndel member[1]\nprint(member)\n\n#remover\nmember.remove(\"李四\") #传入需要删除的元素\nprint(member)\n\n#弹出最后一个元素\nname = member.pop()\nprint(name)\n```\n## 列表的常用操作符\n\n```python\n\nlist1 = [123,456]\nlist2 = [456,123]\nlist3 = [789,547]\n\n#当列表又多个元素时默认比较第0个元素\nprint(list1 > list2)    #False\n\nprint((list1 < list2) and (list3 > list2))  #True\n\n#类似extend方法,但有所不同\nlist4 = list1 + list2\nprint(list4)    #[123, 456, 456, 123]\n\nlist1 *= 3\nprint(list1)    #[123, 456, 123, 456, 123, 456]\n\n#判断数组中是否包含该元素\nprint(123 in list1) #True\n\n#判断数组中是否不包含该元素\nprint(123 not in list1) #False\n\nlist5 = [\"李四\",[123,\"王五\"],\"赵六\"]\nprint(\"王五\" in list5) #False\nprint(\"王五\" in list5[1]) #True\n\n#常用方法\n\'\'\'\n#1.count(source)\n    判断source在列表中出现的次数\n#list1:[123, 456, 123, 456, 123, 456]\n\'\'\'\nprint(list1.count(123)) #3\n\n\'\'\'\n2.index\n    检索元素第一次出现的位置\n\'\'\'\nprint(list1.index(123)) #0\nprint(list1.index(123,1,3)) #2\n\n\'\'\'\n3.reverse()\n    反转列表\n\'\'\'\nprint(list1)\nlist1.reverse()\nprint(list1)\n\n\'\'\'\n4.sort()\n    列表排序\n\'\'\'\nlist6 = [10,5,6,44,8,9,15,4]\nlist6.sort()\nprint(list6)\nlist6.sort(reverse=True)\nprint(list6)\n\n```\n\n## 关于列表的copy\n```python\nlist1 = [15,25,6,41,87]\n\'\'\'\n# 拷贝一个新的数组,在内存中重新分配一块地址,修改list1不会影响list2\nlist2 = list1[:]\n\n# 创建了一个list3的变量名指向list1的列表的内存地址地址,修改list1,list3也会跟着改变\nlist3 = list1\n\nlist2 = list1[:]\nlist3 = list1\n\nprint(list12)\nprint(list13)\n\nlist11.sort()\n\nprint(list12)\nprint(list13)\n```\n\n![](https://cdn.u1.huluxia.com/g4/M02/76/0F/rBAAdl7q062AXCZfAABsr7VigV0636.jpg)\n\n> 2020-06-18 10:39:43 星期四\n\n', '原创', 'Python列表', 257, '序列是Python中最基本的数据结构。序列中的每个元素都分配一个数字 - 它的位置，或索引，第一个索引是0，第二个索引是1，依此类推。', b'0', b'0', b'0', b'0', 0, 6, b'1', b'0', 0, NULL);
INSERT INTO `t_blog` VALUES (17, 'https://external-30160.picsz.qpic.cn/14041f077f2af75dafbddb963b0eee55', '2020-07-28', '2020-07-28 16:43:03', NULL, '## 字符串常用方法\r\n### 1，去掉空格和特殊符号\r\n- ##### name.strip()  去掉空格和换行符\r\n- ##### name.strip(\'xx\')  去掉某个字符串\r\n- ##### name.lstrip()  去掉左边的空格和换行符\r\n- ##### name.rstrip()  去掉右边的空格和换行符\r\n\r\n\r\n------------\r\n\r\n\r\n\r\n### 2，字符串的搜索和替换\r\n- ##### name.count(\'x\')  查找某个字符在字符串里面出现的次数\r\n- ##### name.capitalize()  首字母大写\r\n- ##### name.center(n,\'-\')   把字符串放中间，两边用- 补齐\r\n- ##### name.find(\'x\')   找到这个字符返回下标，多个时返回第一个；不存在的字符返回-1\r\n- ##### name.index(\'x\') 找到这个字符返回下标，多个时返回第一个；不存在的字符报错\r\n- ##### name.replace(oldstr, newstr)  字符串替换\r\n- ##### name.format（） 字符串格式化\r\n- ##### name.format_map(d)  字符串格式化，传进去的是一个字典\r\n \r\n- #####  Year {} Rs. {:.2f}\".format(year, value) 称为字符串格式化，大括号和其中的字符会被替换成传入 str.format() 的参数，也即 year 和 value。其中 {:.2f} 的意思是替换为 2 位精度的浮点数。{:5d} 的意思是替换为 5 个字符宽度的整数，宽度不足则使用空格填充。\r\n\r\n\r\n------------\r\n\r\n\r\n\r\n### 3，字符串的测试和替换函数\r\n- ##### S.startswith(prefix[,start[,end]]) 是否以prefix开头 \r\n- ##### S.endswith(suffix[,start[,end]]) 以suffix结尾 \r\n- ##### S.isalnum() 是否全是字母和数字，并至少有一个字符 \r\n- ##### S.isalpha() #是否全是字母，并至少有一个字符 \r\n- ##### S.isdigit() #是否全是数字，并至少有一个字符 \r\n- ##### S.isspace() #是否全是空白字符，并至少有一个字符 \r\n- ##### S.islower() #S中的字母是否全是小写 \r\n- ##### S.isupper() #S中的字母是否便是大写 \r\n- ##### S.istitle() #S是否是首字母大写的\r\n\r\n\r\n------------\r\n\r\n\r\n\r\n### 4，字符串的分割\r\n- ##### name.split()  默认是按照空格分割\r\n- ##### name.split(\',\')   按照逗号分割\r\n\r\n------------\r\n\r\n### 5，连接字符串\r\n- ##### ‘，’.join(slit)      用逗号连接slit 变成一个字符串，slit 可以是字符，列表，字典（可迭代的对象）int 类型不能被连接\r\n\r\n------------\r\n\r\n\r\n### 6，截取字符串（切片\r\n- ##### str = \'0123456789′\r\n- ##### print str[0:3] #截取第一位到第三位的字符\r\n- ##### print str[:] #截取字符串的全部字符\r\n- ##### print str[6:] #截取第七个字符到结尾\r\n- ##### print str[:-3] #截取从头开始到倒数第三个字符之前\r\n- ##### print str[2] #截取第三个字符\r\n- ##### print str[-1] #截取倒数第一个字符\r\n- ##### print str[::-1] #创造一个与原字符串顺序相反的字符串\r\n- ##### print str[-3:-1] #截取倒数第三位与倒数第一位之前的字符\r\n- ##### print str[-3:] #截取倒数第三位到结尾\r\n- ##### print str[:-5:-3] #逆序截取\r\n\r\n------------\r\n\r\n\r\n### 7.string 模块\r\n- ##### import string \r\n \r\n- ##### string.ascii_uppercase  所有大写字母\r\n- ##### string.ascii_lowercase 所有小写字母\r\n- ##### string.ascii_letters  所有字母\r\n- ##### string.digits  所有数字\r\n\r\n', '原创', 'python字符串常用方法', 167, '字符串是 Python 中最常用的数据类型。我们可以使用引号(\'或\")来创建字符串。\r\n创建字符串很简单，只要为变量分配一个值即可。', b'0', b'0', b'0', b'0', 0, 6, b'1', b'0', 0, NULL);
INSERT INTO `t_blog` VALUES (18, 'https://external-30160.picsz.qpic.cn/af663644b92be85f4ac6a67e039eefc1', '2020-07-28', '2020-08-18 00:32:25', NULL, '## 基础命令\n\n### 终端界面\n![](https://cdn.u1.huluxia.com/g4/M03/79/24/rBAAdl7s0ZiABcbfAAHLSs0EA0o001.png)\n\n## **1、操作命令**\n\n------------\n\n\n### 1.关机\n- ##### 1.shutdown -h now（正常关机，可以定时关机）\n\n- ##### 2.halt（关闭内存，也可以关机）\n\n- ##### 3.init 0（也可以，但有局限性）\n\n##### 2.重启：\n- ##### 1.reboot　　　　　　#工作中常用\n- ##### 2.shutdown -r now  #工作中常用\n- ##### 3.shutdown -r +1　 #一分钟后重启\n- ##### 3.init 6\n\n##### 3.注销：\n- ##### 1.logout\n- ##### 2.exit　　　　　　#工作中常用\n- ##### 3.ctrl+d　　　　　#工作中常用\n\n## **2、ls指令**\n\n------------\n\n\n### 1.ls\n- ##### 用法1：ls\n- ##### 作用：列出当前工作目录下的所有文件、文件夹名称\n\n### 2：ls 路径\n- ##### 作用：列出指定路径下的所有文件及文件夹名称\n\n### 关于路径（重要）\n- ##### 相对路径：参照路径是当前的工作路径\n- ##### 写法：./当前目录 	../上一级目录	/表示根目录\n- ##### 绝对路径：从跟路径开始找\n\n### ls 选项 路径\n- ##### 作用：在列出指定路径下的文件夹、文件时，以指定选项格式显示\n\n### 常见语法\n- ##### ls -l\n- ##### ls -a\n- ##### 解析：\n	- ##### -l  以详细列表形式显示\n![](http://note.youdao.com/yws/res/1255/7093D23124A64483813C11E401117205)\n> 上述列表第一列表示文档类型\n-表示文件\nd表示文件夹\n\n- ##### -a 显示所有文件夹、文件（包括隐藏文件、文件夹）\n\n- ##### ls -lh \n	- ##### 显示文档大小的时候，以可读性较高的形式展现\n\n## **3、pwd命令（print working directory）**\n\n------------\n\n\n- ##### 打印当前工作路径\n\n## **4、cd（change directory）**\n\n------------\n\n\n- ##### 切换当前的工作目录 \n\n## **5、mkdir (make directory) 创建文件夹**\n\n------------\n\n\n- ##### 用法：mkdir 路径【可以直接是文件夹名称，也可以是包含文件夹名称的完整路径】\n\n![普通用户](http://note.youdao.com/yws/res/9533/CA8EC36B6E6F484793B1D18974C7BDC8 \"普通用户\")\n> 普通用户\n\n![root用户](http://note.youdao.com/yws/res/9538/3FEEFDAB351346DF95A6385DCA3F4958 \"root用户\")\n> root用户\n\n### ls 列出的数据颜色：\n- ##### 蓝色：表示文件夹\n- ##### 黑色：文件\n- ##### 绿色：拥有所有权限：可读可写，可执行\n\n------------\n\n\n##### 在指定目录下创建 :  mkdir /xxx/xxx\n\n\n##### 在文件夹下创建多“重”目录	mkdir -p /xxx/xxx/xxx\n![创建多重目录](http://note.youdao.com/yws/res/9575/D7795FBC8B1C4C52801EAAC6CD80D07A \"创建多重目录\")\n\n##### 在文件夹下创建多“个”目录	mkdir q w e r t\n![](http://note.youdao.com/yws/res/9582/6A13FC247AE24831A985B4B11C30C9EC \"创建多个目录\")\n\n## **6、touch创建文件	touch xxx.txt**\n\n------------\n\n![](https://external-30160.picsz.qpic.cn/62454562cd2404339a55d7c30a2facaf)\n\n- ##### 指定目录下创建文件\n![](https://external-30160.picsz.qpic.cn/138e7b26ae6249c6ff2d86763766c0b7)\n\n## 7：**CP：（copy）copy 需要copy的文件路径	需要拷贝到哪个路径**\n\n------------\n\n\n![](https://external-30160.picsz.qpic.cn/924e0bc6403a25bf9181a97f757b34ef)\n\n- ### 如果用cp命令赋值文件夹，需要添加-r参数，否则文件夹会被忽略\n- ### -r表示递归，因为拷贝的文件夹可能里面还有很多文件和文件夹，所以需要用到递归\n![](https://external-30160.picsz.qpic.cn/502d2a6b609f6669983d5ad46f929f86)\n\n## **8、MV（move  剪切）移动文件夹到指定位置**\n\n------------\n\n\n![](https://external-30160.picsz.qpic.cn/2b362efa3689a47abc5fff60d47b5cc1)\n\n- ##### 重命名（注意，重命名的两个路径都需要相同，如果不同，就会造成是剪切）\n\n## **9.rm：remove删除操作**\n\n------------\n\n\n- ### 可选参数	\n	- ##### -r(recursion)	:递归删除 \n	- ##### -f(force)	:不提示,直接删除\n\n- ### 9.1 删除文件\n	- ##### 删除当前目录下的testfile.properties\n	- ##### rm  ./testfile.properties 会询问是否删除\n	- ![](https://external-30160.picsz.qpic.cn/9e4a3e27ff067a278940ccd28dcb1555)\n\n	- ### rm -f testfile.properties 不会询问，直接删除\n	- ![](https://external-30160.picsz.qpic.cn/2a8c4b1547ca1a5f8d2ac9d018a4032b)\n\n- ### 9.2删除文件夹（需要加-r参数，因为文件夹下可能还有数据，所以需要递归删除（-r））\n	- ![](https://external-30160.picsz.qpic.cn/d0b437b657498e48725d4f74c6a86332)\n\n	- ### rm -r ./testfolder(会询问是否删除)	递归删除文件夹\n	- ![](https://external-30160.picsz.qpic.cn/2104e5f6dbc0718e965e3a1ce77514e1)\n\n	- ### rm -r -f testfolder	直接删除文件夹,不询问\n	- ![](https://external-30160.picsz.qpic.cn/cf3490af98c5f2acac6fca5b067f9365)\n\n	- ### 删除具有共同特性的文件\n	 - ##### rm -[rf] xxx.*\n	 - ##### 如:删除T开头的文件夹\n	 - ##### rm -rf t.*\n	- ![](https://external-30160.picsz.qpic.cn/4c04899909c76a70d1a7717311425eda)\n\n## 10、vim命令\n\n------------\n\n- ##### 指令: vim (vim是一款文本编辑器)\n- ##### 语法: #vim文件的路径\n- ##### 作用:打开一个文件(可以不存在,也可以存在)\n- ##### 案例:使用vim来打开文件\n- ##### 退出打开的文件: 在没有按下其他命令的时候,按下shitt+冒号,输入q,按下回车即可\n\n## 11、输出重定向\n\n------------\n\n\n- ##### 一般命令的输出都会显示在终端中,有些时候需要将一些命令的执行结果想要保存到文件中进行后续的分析/统计,则这时候需要使用到的输出重定向技术。\n- ##### >: 覆盖输出,会覆盖掉原先的文件内容\n- ##### >>: 追加输出,不会覆盖原始文件内容,会在原始内容末尾继续添加\n- ##### 语法: #正常执行的指令>/>>文件的路径注意:文件可以不存在,不存在则新建\n- ##### 案例:使用覆盖重定向,保存Is-la的执行结果,保存到当前目录下的Is.txt\n![](https://external-30160.picsz.qpic.cn/de988d946812c3eb242c34684a8270f0)\n\n## 12.cat指令\n\n------------\n\n- ##### 直接打开一个文件\n- ##### 语法:cat 文件路径\n	- ![](https://external-30160.picsz.qpic.cn/b5f11f6f24afbbc47e16862591aa6d7e)\n\n- ##### 合并文件\n	- #####语法:cat 需要合并的文件路径1 需要合并的文件路径2 需要合并的文件路径n... \n	- ![](https://external-30160.picsz.qpic.cn/995490fc301ab586db193c81198d44c4)', '原创', 'Linux基础命令', 420, 'Linux，全称GNU/Linux，是一套免费使用和自由传播的类UNIX操作系统，其内核由林纳斯·本纳第克特·托瓦兹于1991年第一次释出，它主要受到Minix和Unix思想的启发，是一个基于POSIX和Unix的多用户、多任务、支持多线程和多CPU的操作系统。它能运行主要的Unix工具软件、应用程序和网络协议。', b'0', b'0', b'0', b'1', 0, 7, b'0', b'0', 0, NULL);


-- ----------------------------
-- Table structure for t_code
-- ----------------------------
DROP TABLE IF EXISTS `t_code`;
CREATE TABLE `t_code`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `security_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_code
-- ----------------------------
INSERT INTO `t_code` VALUES (1, '572645');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blogid` bigint(0) NULL DEFAULT NULL,
  `parentid` bigint(0) NULL DEFAULT NULL,
  `admincomment` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 422 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (16, '测试评论', NULL, '2020-08-03', '162@qq.com', '测试01', 4, 0, b'0');
INSERT INTO `t_comment` VALUES (17, '测试回复功能', NULL, '2020-08-03', '162@qq.com', '测试02', 4, 16, b'0');
INSERT INTO `t_comment` VALUES (18, '测试管理员评论', NULL, '2020-08-03', '2822930767@qq.com', '阳光少年', 4, 0, b'1');


-- ----------------------------
-- Table structure for t_dailymusic
-- ----------------------------
DROP TABLE IF EXISTS `t_dailymusic`;
CREATE TABLE `t_dailymusic`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  ` musicUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pictureUrl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lyric` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_friends
-- ----------------------------
DROP TABLE IF EXISTS `t_friends`;
CREATE TABLE `t_friends`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorization` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_friends
-- ----------------------------
INSERT INTO `t_friends` VALUES (1, 'http://www.yl1727.xyz/', 'YLBlog', 'https://s3.bmp.ovh/imgs/2021/10/9c4d6947a9ba0870.png', b'1');
INSERT INTO `t_friends` VALUES (2, 'http://figure.blogry.cn/#/login', '创美图床', 'http://www.blogry.cn/images/avatar/default.jpg', b'1');
INSERT INTO `t_friends` VALUES (23, 'https://www.xn--vrvr65b0rv.online/indexBlob/to', '等风来', 'https://www.等风来.online/static/images/avatar.jpg', b'0');

-- ----------------------------
-- Table structure for t_messageboard
-- ----------------------------
DROP TABLE IF EXISTS `t_messageboard`;
CREATE TABLE `t_messageboard`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentid` int(0) NULL DEFAULT NULL,
  `admin` bit(1) NULL DEFAULT NULL,
  `parentname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_messageboard
-- ----------------------------
INSERT INTO `t_messageboard` VALUES (23, '/images/avatar/default.jpg', '求一份前端代码!', '2020-08-15', '2569847532@qq.com', '来看看', 0, b'0', NULL);
INSERT INTO `t_messageboard` VALUES (28, 'https://external-30160.picsz.qpic.cn/ee78f0f265b644d8b3650fd618cc3b32', '可以的,加我QQ吧，有些小bug还没改完，暂时还没整理到GitHub,!', '2020-08-15', '2822930767@qq.com', '阳光少年', 23, b'1', NULL);
INSERT INTO `t_messageboard` VALUES (29, 'https://img-blog.csdnimg.cn/20200815151905991.jpg', '首页的图片可以换吗？还是写死的呢？', '2020-08-15', '216354875@qq.com', '到此一游', 0, b'0', NULL);
INSERT INTO `t_messageboard` VALUES (30, 'https://external-30160.picsz.qpic.cn/ee78f0f265b644d8b3650fd618cc3b32', '可以在后台自定义的！', '2020-08-15', '2822930767@qq.com', '阳光少年', 29, b'1', NULL);
INSERT INTO `t_messageboard` VALUES (31, 'https://img-blog.csdnimg.cn/20210130000634814.jpg', '感觉前台写的很好啊!', '2020-10-03', '16895475@163.com', 'JK', 30, b'0', NULL);


-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `p_picture__url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `p_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `p_link_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `p_tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `p_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `p_online_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES (1, 'https://img-blog.csdnimg.cn/b6af345282af4fd1a4dab9d5421531fd.jpg', '博客采用Springboot、thymeleaf、bootstrap等技术搭建 , 目前已经开发出文章增删改查 , 排序 , 分类等功能!! 项目总体而言比较简单 , 上手比较容易 , 适合新手!! 这是我的第二个实战项目 , 当时也是刚学完springboot就开始做了 , 源码比较杂乱 , 各位多多包含!!', 'https://gitee.com/renyispace/myblog', '简单 ● JavaWeb', '个人博客', 'http://www.blogry.cn/');
INSERT INTO `t_project` VALUES (2, 'https://img-blog.csdnimg.cn/13c09a6a3b7a43d3ad853ba1c68d2ace.jpg', '这是一个前后端分离的图床项目的前台页面 , 可以自行注册登录 , 可以管理自己上传的图片 , 项目比较简单 , 也是我的学完Vue之后的第一个前后端分离项目!!!', 'https://gitee.com/renyispace/FigureBed/', '简单 ● Vue', '创美图床-前台', 'http://figure.blogry.cn/#/login');
INSERT INTO `t_project` VALUES (3, 'https://img-blog.csdnimg.cn/7d0b529feda74656a5725adb43dff792.jpg', '这是一个前后端分离的图床项目的后台页面 , 可以自行注册登录 , 可以管理自己上传的图片 , 项目比较简单 , 也是我的学完Vue之后的第一个前后端分离项目!!!', 'https://gitee.com/renyispace/figure-p', '简单 ● SpringBoot', '创美图床-后台', 'http://figure.blogry.cn/#/login');
INSERT INTO `t_project` VALUES (7, 'https://img-blog.csdnimg.cn/20200822233936613.jpg', '这是我的第一个有点作用的项目，虽然写的很烂，但是如果您是初学者，正需要一个简单并且写出来又有点用的项目来练手的话，那么这个项目无疑是很好的选择！！', 'https://gitee.com/renyispace/networkdisk', '简单 ● SpringBoot', '个人网盘', 'http://disk.blogry.cn/');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, 'Java');
INSERT INTO `t_type` VALUES (3, '英语');
INSERT INTO `t_type` VALUES (4, '学习经历');
INSERT INTO `t_type` VALUES (6, 'Python');
INSERT INTO `t_type` VALUES (7, 'Linux');
INSERT INTO `t_type` VALUES (10, '前端');
INSERT INTO `t_type` VALUES (11, '易语言');
INSERT INTO `t_type` VALUES (13, '爱我中华');
INSERT INTO `t_type` VALUES (14, 'Java基础');
INSERT INTO `t_type` VALUES (15, 'Spring');
INSERT INTO `t_type` VALUES (17, 'SpringMVC');
INSERT INTO `t_type` VALUES (19, 'Mybatis');
INSERT INTO `t_type` VALUES (21, '面试题');
INSERT INTO `t_type` VALUES (22, '数据结构');
INSERT INTO `t_type` VALUES (25, '记录生活');
INSERT INTO `t_type` VALUES (26, 'Redis');
INSERT INTO `t_type` VALUES (29, 'SpringBoot');
INSERT INTO `t_type` VALUES (30, '年计划');
INSERT INTO `t_type` VALUES (32, 'Shiro');
INSERT INTO `t_type` VALUES (33, 'Vue');
INSERT INTO `t_type` VALUES (35, '致敬伟人');
INSERT INTO `t_type` VALUES (36, '图书馆');
INSERT INTO `t_type` VALUES (41, '其他');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creat_time` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(0) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pagetitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `firstPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `search_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'http://123.57.136.136:8888/image/1.20210824101308326.jpg', '2020-07-25 00:00:00', '2822930767@qq.com', '阳光少年', '21232f297a57a5a743894a0e4a801fc3', 1, '2020-07-25 00:00:00', 'admin', '一个热爱编程的01年小伙儿，也是一个终身学习者，渴望能够汲取更多的知识，充实自己的生活，希望能在编程的道路上越走越远！!', '阳光少年', '热爱祖国，热爱生活，热爱学习！', 'admin', 'https://img-blog.csdnimg.cn/5bae85342ea24fbb87d77d5043ee2546.png', 'black', 'http://123.57.136.136:8888/image/1.20220125163508556.jpg');

SET FOREIGN_KEY_CHECKS = 1;
