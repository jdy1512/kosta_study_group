package kr.co.kosta.study.moviereservation.vo;

import java.util.Date;

/**
 * @author jdy 2015-03-30(최종수정)
 *
 * '영화' VO 클래스'
 * 
 * name : 영화명
 * imagePath : 영화이미지 경로
 * director : 영화 감독
 * actor : 영화 배우
 * synopsis : 줄거리
 * playDate : 개봉일
 * viewingTime : 상영시간
 */
public class Movie {
	private String name;
	private String imagePath;
	private String director;
	private String actor;
	private String synopsis;
	private Date playDate;
	private String viewingTime;

	public Movie() {
	}

	public Movie(String name, String imagePath, String director, String actor,
			String synopsis, Date playDate, String viewingTime) {
		super();
		this.name = name;
		this.imagePath = imagePath;
		this.director = director;
		this.actor = actor;
		this.synopsis = synopsis;
		this.playDate = playDate;
		this.viewingTime = viewingTime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getSynopsis() {
		return synopsis;
	}

	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}

	public Date getPlayDate() {
		return playDate;
	}

	public void setPlayDate(Date playDate) {
		this.playDate = playDate;
	}

	public String getViewingTime() {
		return viewingTime;
	}

	public void setViewingTime(String viewingTime) {
		this.viewingTime = viewingTime;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((actor == null) ? 0 : actor.hashCode());
		result = prime * result
				+ ((director == null) ? 0 : director.hashCode());
		result = prime * result
				+ ((imagePath == null) ? 0 : imagePath.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result
				+ ((playDate == null) ? 0 : playDate.hashCode());
		result = prime * result
				+ ((synopsis == null) ? 0 : synopsis.hashCode());
		result = prime * result
				+ ((viewingTime == null) ? 0 : viewingTime.hashCode());
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
		Movie other = (Movie) obj;
		if (actor == null) {
			if (other.actor != null)
				return false;
		} else if (!actor.equals(other.actor))
			return false;
		if (director == null) {
			if (other.director != null)
				return false;
		} else if (!director.equals(other.director))
			return false;
		if (imagePath == null) {
			if (other.imagePath != null)
				return false;
		} else if (!imagePath.equals(other.imagePath))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (playDate == null) {
			if (other.playDate != null)
				return false;
		} else if (!playDate.equals(other.playDate))
			return false;
		if (synopsis == null) {
			if (other.synopsis != null)
				return false;
		} else if (!synopsis.equals(other.synopsis))
			return false;
		if (viewingTime == null) {
			if (other.viewingTime != null)
				return false;
		} else if (!viewingTime.equals(other.viewingTime))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Movie [name=" + name + ", imagePath=" + imagePath
				+ ", director=" + director + ", actor=" + actor + ", synopsis="
				+ synopsis + ", playDate=" + playDate + ", viewingTime="
				+ viewingTime + "]";
	}

}
