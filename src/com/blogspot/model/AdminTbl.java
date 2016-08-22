package com.blogspot.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the admin_tbl database table.
 * 
 */
@Entity
@Table(name="admin_tbl")
@NamedQuery(name="AdminTbl.findAll", query="SELECT a FROM AdminTbl a")
public class AdminTbl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String username;
	private String password;

	public AdminTbl() {
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}