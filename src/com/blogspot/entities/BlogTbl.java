package com.blogspot.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the blog_tbl database table.
 * 
 */
@Entity
@Table(name="blog_tbl")
@NamedQuery(name="BlogTbl.findAll", query="SELECT b FROM BlogTbl b")
public class BlogTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int blogid;

	private String blogcategory;

	@Lob
	private String blogcontent;

	@Temporal(TemporalType.DATE)
	private Date blogdate;

	private String blogtitle;

	//bi-directional many-to-one association to UserTbl
	@ManyToOne(fetch=FetchType.EAGER,cascade={CascadeType.ALL})
	@JoinColumn(name="userid")
	private UserTbl userTbl;

	//bi-directional many-to-one association to CommentTbl
	@OneToMany(mappedBy="blogTbl", fetch=FetchType.EAGER,cascade={CascadeType.ALL})
	private List<CommentTbl> commentTbls;

	public BlogTbl() {
	}

	public BlogTbl(int blogid, String blogcategory, String blogcontent, Date blogdate, String blogtitle,
			UserTbl userTbl, List<CommentTbl> commentTbls) {
		this.blogid = blogid;
		this.blogcategory = blogcategory;
		this.blogcontent = blogcontent;
		this.blogdate = blogdate;
		this.blogtitle = blogtitle;
		this.userTbl = userTbl;
		this.commentTbls = commentTbls;
	}
	public int getBlogid() {
		return this.blogid;
	}

	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}

	public String getBlogcategory() {
		return this.blogcategory;
	}

	public void setBlogcategory(String blogcategory) {
		this.blogcategory = blogcategory;
	}

	public String getBlogcontent() {
		return this.blogcontent;
	}

	public void setBlogcontent(String blogcontent) {
		this.blogcontent = blogcontent;
	}

	public Date getBlogdate() {
		return this.blogdate;
	}

	public void setBlogdate(Date blogdate) {
		this.blogdate = blogdate;
	}

	public String getBlogtitle() {
		return this.blogtitle;
	}

	public void setBlogtitle(String blogtitle) {
		this.blogtitle = blogtitle;
	}

	public UserTbl getUserTbl() {
		return this.userTbl;
	}

	public void setUserTbl(UserTbl userTbl) {
		this.userTbl = userTbl;
	}

	public List<CommentTbl> getCommentTbls() {
		return this.commentTbls;
	}

	public void setCommentTbls(List<CommentTbl> commentTbls) {
		this.commentTbls = commentTbls;
	}

	public CommentTbl addCommentTbl(CommentTbl commentTbl) {
		getCommentTbls().add(commentTbl);
		commentTbl.setBlogTbl(this);

		return commentTbl;
	}

	public CommentTbl removeCommentTbl(CommentTbl commentTbl) {
		getCommentTbls().remove(commentTbl);
		commentTbl.setBlogTbl(null);

		return commentTbl;
	}

	@Override
	public String toString() {
		return "BlogTbl [blogid=" + blogid + ", blogcategory=" + blogcategory + ", blogcontent=" + blogcontent
				+ ", blogdate=" + blogdate + ", blogtitle=" + blogtitle + ", userTbl=" + userTbl + ", commentTbls="
				+ commentTbls + "]";
	}

	

	
}