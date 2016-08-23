package com.blogspot.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the user_tbl database table.
 * 
 */
@Entity
@Table(name="user_tbl")
@NamedQuery(name="UserTbl.findAll", query="SELECT u FROM UserTbl u")
public class UserTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userid;

	private int age;

	private String city;

	private int contactno;

	private String country;

	@Temporal(TemporalType.DATE)
	private Date dob;

	private String emailid;

	private String firstname;

	private String gender;

	private String lastname;

	private String password;

	private String state;

	//bi-directional many-to-one association to BlogTbl
	@OneToMany(mappedBy="userTbl", fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	private List<BlogTbl> blogTbls;

	public UserTbl() {
	}

	public UserTbl(int userid, int age, String city, int contactno, String country, Date dob, String emailid,
			String firstname, String gender, String lastname, String password, String state, List<BlogTbl> blogTbls) {
		super();
		this.userid = userid;
		this.age = age;
		this.city = city;
		this.contactno = contactno;
		this.country = country;
		this.dob = dob;
		this.emailid = emailid;
		this.firstname = firstname;
		this.gender = gender;
		this.lastname = lastname;
		this.password = password;
		this.state = state;
		this.blogTbls = blogTbls;
	}

	public int getUserid() {
		return this.userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getAge() {
		return this.age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getContactno() {
		return this.contactno;
	}

	public void setContactno(int contactno) {
		this.contactno = contactno;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Date getDob() {
		return this.dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getEmailid() {
		return this.emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getFirstname() {
		return this.firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLastname() {
		return this.lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public List<BlogTbl> getBlogTbls() {
		return this.blogTbls;
	}

	public void setBlogTbls(List<BlogTbl> blogTbls) {
		this.blogTbls = blogTbls;
	}

	public BlogTbl addBlogTbl(BlogTbl blogTbl) {
		getBlogTbls().add(blogTbl);
		blogTbl.setUserTbl(this);

		return blogTbl;
	}

	public BlogTbl removeBlogTbl(BlogTbl blogTbl) {
		getBlogTbls().remove(blogTbl);
		blogTbl.setUserTbl(null);

		return blogTbl;
	}
	@Override
	public String toString() {
		return "UserTbl [userid=" + userid + ", age=" + age + ", city=" + city + ", contactno=" + contactno
				+ ", country=" + country + ", dob=" + dob + ", emailid=" + emailid + ", firstname=" + firstname
				+ ", gender=" + gender + ", lastname=" + lastname + ", password=" + password + ", state=" + state
				+ "]";
	}
}