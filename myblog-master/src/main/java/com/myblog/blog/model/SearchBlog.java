package com.myblog.blog.model;

import java.util.Objects;

/**
 * ClassName:SearchBlog
 * Package:com.myblog.blog.model
 * Description:
 *
 * @Date:2020/7/27 22:01
 * @com.chuangmei
 */
public class SearchBlog {

    private String searchtitle;
    private String searchtypeid;
    private String searchrecommend;
    private Boolean realsearchrecommend;
    private String recognize = "default";

    public String getSearchtitle() {
        return searchtitle;
    }

    public void setSearchtitle(String searchtitle) {
        this.searchtitle = searchtitle;
    }

    public String getSearchtypeid() {
        return searchtypeid;
    }

    public void setSearchtypeid(String searchtypeid) {
        this.searchtypeid = searchtypeid;
    }

    public String getSearchrecommend() {
        return searchrecommend;
    }

    public String getRecognize() {
        return recognize;
    }

    public void setRecognize(String recognize) {
        this.recognize = recognize;
    }

    public void setSearchrecommend(String searchrecommend) {
        this.searchrecommend = searchrecommend;
    }

    public Boolean isRealsearchrecommend() {
        return realsearchrecommend;
    }

    public void setRealsearchrecommend(Boolean realsearchrecommend) {
        this.realsearchrecommend = realsearchrecommend;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SearchBlog that = (SearchBlog) o;
        return Objects.equals(searchtitle, that.searchtitle) &&
                Objects.equals(searchtypeid, that.searchtypeid) &&
                Objects.equals(searchrecommend, that.searchrecommend) &&
                Objects.equals(recognize, that.recognize);
    }

    @Override
    public int hashCode() {
        return Objects.hash(searchtitle, searchtypeid, searchrecommend, recognize);
    }

    @Override
    public String toString() {
        return "SearchBlog{" +
                "searchtitle='" + searchtitle + '\'' +
                ", searchtypeid='" + searchtypeid + '\'' +
                ", searchrecommend='" + searchrecommend + '\'' +
                ", recognize='" + recognize + '\'' +
                '}';
    }
}
