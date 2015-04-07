package kr.co.kosta.study.moviereservation.vo;


/**
 * @author jdy 2015-03-30(최종수정)
 *
 *         '영화' VO 클래스'
 * 
 *         name : 영화명 imagePath : 영화이미지 경로 director : 영화 감독 actor : 영화 배우
 *         synopsis : 줄거리 playDate : 개봉일 viewingTime : 상영시간
 */
public class Movie {
	private String genre;
	private String name;
	private String director;
	private String actor;
	private String playDate;
	private String watchGrade;
	private String viewingTime;
	private String synopsis;
	private String imagePath;

	public Movie() {
	}

	public Movie(String genre, String name, String director, String actor,
			String playDate, String watchGrade, String viewingTime,
			String synopsis, String imagePath) {
		super();
		this.genre = genre;
		this.name = name;
		this.director = director;
		this.actor = actor;
		this.playDate = playDate;
		this.watchGrade = watchGrade;
		this.viewingTime = viewingTime;
		this.synopsis = synopsis;
		this.imagePath = imagePath;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getPlayDate() {
		return playDate;
	}

	public void setPlayDate(String playDate) {
		this.playDate = playDate;
	}

	public String getWatchGrade() {
		return watchGrade;
	}

	public void setWatchGrade(String watchGrade) {
		this.watchGrade = watchGrade;
	}

	public String getViewingTime() {
		return viewingTime;
	}

	public void setViewingTime(String viewingTime) {
		this.viewingTime = viewingTime;
	}

	public String getSynopsis() {
		return synopsis;
	}

	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "Movie [genre=" + genre + ", name=" + name + ", director="
				+ director + ", actor=" + actor + ", playDate=" + playDate
				+ ", watchGrade=" + watchGrade + ", viewingTime=" + viewingTime
				+ ", synopsis=" + synopsis + ", imagePath=" + imagePath + "]";
	}

}
