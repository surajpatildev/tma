package com.testmyaptitude.pojo;
// Generated Jan 26, 2018 3:00:53 PM by Hibernate Tools 5.2.6.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "contact_us", catalog = "luq7bmtf_spatil")
public class ContactUs implements java.io.Serializable {
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "Query_Id", unique = true, nullable = false)
	private Integer queryId;
	
	@Column(name = "Name", nullable = false, length = 45)
	private String name;
	
	@Column(name = "Email", nullable = false, length = 45)
	private String email;
	
	@Column(name = "Mobile_No")
	private Long mobileNo;
	
	@Column(name = "Messege", nullable = false)
	private String messege;

	public ContactUs() {
	}

	public ContactUs(String name, String email, String messege) {
		this.name = name;
		this.email = email;
		this.messege = messege;
	}

	public ContactUs(String name, String email, Long mobileNo, String messege) {
		this.name = name;
		this.email = email;
		this.mobileNo = mobileNo;
		this.messege = messege;
	}

	
	public Integer getQueryId() {
		return this.queryId;
	}

	public void setQueryId(Integer queryId) {
		this.queryId = queryId;
	}

	
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public Long getMobileNo() {
		return this.mobileNo;
	}

	public void setMobileNo(Long mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getMessege() {
		return this.messege;
	}

	public void setMessege(String messege) {
		this.messege = messege;
	}

}
