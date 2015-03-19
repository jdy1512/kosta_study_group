package kr.co.kosta.study.moviereservation.vo;

import java.util.Date;

public class Customer {
	private String id;
	private String pwd;
	private String name;
	private String addr;
	private String phoneNo;
	private String birth;
	private String channel;// fk
	private String email;
	private int gradeId;// fk
	private int mileage;
	private Date joinDate;
	private Date dropDate;

	/**
	 * @param id : ID - 이메일 (PK)
	 * @param pwd : Password
	 * @param name : 이름
	 * @param addr : 주소
	 * @param phoneNo : 연락처 (000-0000-0000)
	 * @param birth : 생년월일 (YYYY-MM-DD)
	 * @param channel :
	 * @param email : 이메일
	 * @param gradeId : 등급 (FK)
	 * @param mileage : 마일리지
	 * @param joinDate : 가입일 (Date)
	 * @param dropDate : 탈퇴일 (Date)
	 */
	public Customer(String id, String pwd, String name, String addr,
			String phoneNo, String birth, String channel) {
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.addr = addr;
		this.phoneNo = phoneNo;
		this.birth = birth;
		this.channel = channel;
		this.email = id;
		this.gradeId = 0;
		this.mileage = 0;
		this.joinDate = new Date();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getChannel() {
		return channel;
	}

	public void setChannel(String channel) {
		this.channel = channel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGradeId() {
		return gradeId;
	}

	public void setGradeId(int gradeId) {
		this.gradeId = gradeId;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public Date getDropDate() {
		return dropDate;
	}

	public void setDropDate(Date dropDate) {
		this.dropDate = dropDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((addr == null) ? 0 : addr.hashCode());
		result = prime * result + ((birth == null) ? 0 : birth.hashCode());
		result = prime * result + ((channel == null) ? 0 : channel.hashCode());
		result = prime * result
				+ ((dropDate == null) ? 0 : dropDate.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + gradeId;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result
				+ ((joinDate == null) ? 0 : joinDate.hashCode());
		result = prime * result + mileage;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((phoneNo == null) ? 0 : phoneNo.hashCode());
		result = prime * result + ((pwd == null) ? 0 : pwd.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Customer other = (Customer) obj;
		if (addr == null) {
			if (other.addr != null)
				return false;
		} else if (!addr.equals(other.addr))
			return false;
		if (birth == null) {
			if (other.birth != null)
				return false;
		} else if (!birth.equals(other.birth))
			return false;
		if (channel == null) {
			if (other.channel != null)
				return false;
		} else if (!channel.equals(other.channel))
			return false;
		if (dropDate == null) {
			if (other.dropDate != null)
				return false;
		} else if (!dropDate.equals(other.dropDate))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (gradeId != other.gradeId)
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (joinDate == null) {
			if (other.joinDate != null)
				return false;
		} else if (!joinDate.equals(other.joinDate))
			return false;
		if (mileage != other.mileage)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (phoneNo == null) {
			if (other.phoneNo != null)
				return false;
		} else if (!phoneNo.equals(other.phoneNo))
			return false;
		if (pwd == null) {
			if (other.pwd != null)
				return false;
		} else if (!pwd.equals(other.pwd))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", pwd=" + pwd + ", name=" + name
				+ ", addr=" + addr + ", phoneNo=" + phoneNo + ", birth="
				+ birth + ", channel=" + channel + ", email=" + email
				+ ", gradeId=" + gradeId + ", mileage=" + mileage
				+ ", joinDate=" + joinDate + ", dropDate=" + dropDate + "]";
	}

}
