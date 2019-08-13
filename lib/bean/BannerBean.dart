class BannerBean {
	String image;
	int id;
	int type;
	String title;
	String url;

	BannerBean({this.image, this.id, this.type, this.title, this.url});

	BannerBean.fromJson(Map<String, dynamic> json) {
		image = json['image'];
		id = json['id'];
		type = json['type'];
		title = json['title'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['image'] = this.image;
		data['id'] = this.id;
		data['type'] = this.type;
		data['title'] = this.title;
		data['url'] = this.url;
		return data;
	}
}
