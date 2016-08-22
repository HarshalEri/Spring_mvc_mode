package com.blogspot.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the comment_tbl database table.
 * 
 */
@Entity
@Table(name="comment_tbl")
@NamedQuery(name="CommentTbl.findAll", query="SELECT c FROM CommentTbl c")
public class CommentTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int commentid;

	@Temporal(TemporalType.DATE)
	private Date commentdate;

	private String commenttext;

	private String name;

	//bi-directional many-to-one association to BlogTbl
	@ManyToOne(cascade={CascadeType.ALL})
	@JoinColumn(name="blogid")
	private BlogTbl blogTbl;

	public CommentTbl() {
	}

	public int getCommentid() {
		return this.commentid;
	}

	public void setCommentid(int commentid) {
		this.commentid = commentid;
	}

	public Date getCommentdate() {
		return this.commentdate;
	}

	public void setCommentdate(Date commentdate) {
		this.commentdate = commentdate;
	}

	public String getCommenttext() {
		return this.commenttext;
	}

	public void setCommenttext(String commenttext) {
		this.commenttext = commenttext;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BlogTbl getBlogTbl() {
		return this.blogTbl;
	}

	public void setBlogTbl(BlogTbl blogTbl) {
		this.blogTbl = blogTbl;
	}

}