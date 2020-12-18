package com.pojo;

public class News {
	private Integer id;
	private String title;
	private String content;
	private String photo;
	private String type;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public News(Integer id, String title, String content, String photo, String type) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.photo = photo;
		this.type = type;
	}

	public News() {

	}
}
