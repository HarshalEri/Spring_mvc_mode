package com.blogspot.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.blogspot.model.BlogTbl;
import com.blogspot.model.CommentTbl;
import com.blogspot.model.UserTbl;

@Repository
public class BlogDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void insertBlog(BlogTbl blogDetails){
		Session session = sessionFactory.getCurrentSession();
		session.save(blogDetails);
		System.out.println("New Blog Insterted...");
	}
	
	public List<BlogTbl> getAllBlogs() {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(UserTbl.class);
		criteria.addOrder(Order.desc("userid"));
		return criteria.list();
	}
	
	public List<BlogTbl> getAllUserBlogs(int userid){	
		Session session = sessionFactory.getCurrentSession();
		String hql = "from BlogTbl blog where blog.userTbl = :userid order by blog.blogdate desc";
		Query userBlogList = session.createQuery(hql);
		userBlogList.setInteger("userid",userid);
		return userBlogList.list();
	 }
	
	public List<BlogTbl> getBlogsByCategory(String category)
	 {	
		Session session = sessionFactory.getCurrentSession();
		/*String hql = "from BlogTbl blog where blog.blogcatagory = :blogcatagory order by blog.blogdate desc";
		Query CBlogList = hbsession.createQuery(hql);
		CBlogList.setString("blogcatagory",category);*/
		Criteria criteria = session.createCriteria(BlogTbl.class);
		criteria.add(Restrictions.eq("blogcategory", category));
		criteria.addOrder(Order.desc("blogdate"));
		return criteria.list();
		
	 }
	
	public BlogTbl getBlogById(int blogId) {
		Session session = sessionFactory.getCurrentSession();
		BlogTbl blogDetails = (BlogTbl) session.get(BlogTbl.class, blogId);
		return blogDetails;
	}
	
	public void deleteBlog(BlogTbl blogDetails) {
		Session session = sessionFactory.getCurrentSession();
		BlogTbl blog = (BlogTbl) session.get(BlogTbl.class, blogDetails.getBlogid());
		session.delete(blog);
	}
	
	public List<CommentTbl> getCommentsOnBlog(int blogid) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CommentTbl comment where comment.blogTbl = :blogid";
		Query commentList = session.createQuery(hql);
		commentList.setInteger("blogid",blogid);
		return commentList.list();
	}
}
