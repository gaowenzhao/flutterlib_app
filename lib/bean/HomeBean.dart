class HomeBean {
  bool isLogin;
  ResultDataInvestmentflow investmentFlow;
  List<ResultDataNormalentrance> normalEntrance;
  List<ResultDataAdvertising> advertisings;
  bool isFirstInvestment;
  ResultDataNewesttrends newestTrends;
  ResultDataZongcoinmarket zongcoinmarket;
  ResultDataPlatformadvertisings platformadvertisings;
  List<ResultDataBanner> banners;
  List<ResultDataTask> tasks;
  List<ResultDataThenewbutton> theNewButtons;
  ResultDataRegisterredbag registerRedbag;

  HomeBean(
      {this.isLogin,
      this.investmentFlow,
      this.normalEntrance,
      this.advertisings,
      this.isFirstInvestment,
      this.newestTrends,
      this.zongcoinmarket,
      this.platformadvertisings,
      this.banners,
      this.tasks,
      this.theNewButtons,
      this.registerRedbag});

  HomeBean.fromJson(Map<String, dynamic> json) {
    isLogin = json['isLogin'];
    investmentFlow = json['investmentFlow'] != null
        ? new ResultDataInvestmentflow.fromJson(json['investmentFlow'])
        : null;
    if (json['normalEntrance'] != null) {
      normalEntrance = new List<ResultDataNormalentrance>();
      (json['normalEntrance'] as List).forEach((v) {
        normalEntrance.add(new ResultDataNormalentrance.fromJson(v));
      });
    }
    if (json['advertisings'] != null) {
      advertisings = new List<ResultDataAdvertising>();
      (json['advertisings'] as List).forEach((v) {
        advertisings.add(new ResultDataAdvertising.fromJson(v));
      });
    }
    isFirstInvestment = json['isFirstInvestment'];
    newestTrends = json['newestTrends'] != null
        ? new ResultDataNewesttrends.fromJson(json['newestTrends'])
        : null;
    zongcoinmarket = json['zongcoinmarket'] != null
        ? new ResultDataZongcoinmarket.fromJson(json['zongcoinmarket'])
        : null;
    platformadvertisings = json['platformadvertisings'] != null
        ? new ResultDataPlatformadvertisings.fromJson(
            json['platformadvertisings'])
        : null;
    if (json['banners'] != null) {
      banners = new List<ResultDataBanner>();
      (json['banners'] as List).forEach((v) {
        banners.add(new ResultDataBanner.fromJson(v));
      });
    }
    if (json['tasks'] != null) {
      tasks = new List<ResultDataTask>();
      (json['tasks'] as List).forEach((v) {
        tasks.add(new ResultDataTask.fromJson(v));
      });
    }
    if (json['theNewButtons'] != null) {
      theNewButtons = new List<ResultDataThenewbutton>();
      (json['theNewButtons'] as List).forEach((v) {
        theNewButtons.add(new ResultDataThenewbutton.fromJson(v));
      });
    }
    registerRedbag = json['registerRedbag'] != null
        ? new ResultDataRegisterredbag.fromJson(json['registerRedbag'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isLogin'] = this.isLogin;
    if (this.investmentFlow != null) {
      data['investmentFlow'] = this.investmentFlow.toJson();
    }
    if (this.normalEntrance != null) {
      data['normalEntrance'] =
          this.normalEntrance.map((v) => v.toJson()).toList();
    }
    if (this.advertisings != null) {
      data['advertisings'] = this.advertisings.map((v) => v.toJson()).toList();
    }
    data['isFirstInvestment'] = this.isFirstInvestment;
    if (this.newestTrends != null) {
      data['newestTrends'] = this.newestTrends.toJson();
    }
    if (this.zongcoinmarket != null) {
      data['zongcoinmarket'] = this.zongcoinmarket.toJson();
    }
    if (this.platformadvertisings != null) {
      data['platformadvertisings'] = this.platformadvertisings.toJson();
    }
    if (this.banners != null) {
      data['banners'] = this.banners.map((v) => v.toJson()).toList();
    }
    if (this.tasks != null) {
      data['tasks'] = this.tasks.map((v) => v.toJson()).toList();
    }
    if (this.theNewButtons != null) {
      data['theNewButtons'] =
          this.theNewButtons.map((v) => v.toJson()).toList();
    }
    if (this.registerRedbag != null) {
      data['registerRedbag'] = this.registerRedbag.toJson();
    }
    return data;
  }
}

class ResultDataInvestmentflow {
  String image;
  String firstTitle;
  List<ResultDataInvestmantflowButtons> buttons;
  String secondTitle;

  ResultDataInvestmentflow(
      {this.image, this.firstTitle, this.buttons, this.secondTitle});

  ResultDataInvestmentflow.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    firstTitle = json['firstTitle'];
    if (json['buttons'] != null) {
      buttons = new List<ResultDataInvestmantflowButtons>();
      (json['buttons'] as List).forEach((v) {
        buttons.add(new ResultDataInvestmantflowButtons.fromJson(v));
      });
    }
    secondTitle = json['secondTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['firstTitle'] = this.firstTitle;
    if (this.buttons != null) {
      data['buttons'] = this.buttons.map((v) => v.toJson()).toList();
    }
    data['secondTitle'] = this.secondTitle;
    return data;
  }
}

class ResultDataInvestmantflowButtons {
  String image;
  int no;
  String iosNavtiveUrl;
  String activeImage;
  String description;
  String nativeUrl;
  String type;
  bool done;
  bool isDone;
  String url;
  bool activityButton;
  String defaultColor;
  String activeColor;
  String name;
  int time;

  ResultDataInvestmantflowButtons(
      {this.image,
      this.no,
      this.iosNavtiveUrl,
      this.activeImage,
      this.description,
      this.nativeUrl,
      this.type,
      this.done,
      this.isDone,
      this.url,
      this.activityButton,
      this.defaultColor,
      this.activeColor,
      this.name,
      this.time});

  ResultDataInvestmantflowButtons.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    iosNavtiveUrl = json['ios_navtive_url'];
    activeImage = json['activeImage'];
    description = json['description'];
    nativeUrl = json['native_url'];
    type = json['type'];
    done = json['done'];
    isDone = json['isDone'];
    url = json['url'];
    activityButton = json['activityButton'];
    defaultColor = json['defaultColor'];
    activeColor = json['activeColor'];
    name = json['name'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['ios_navtive_url'] = this.iosNavtiveUrl;
    data['activeImage'] = this.activeImage;
    data['description'] = this.description;
    data['native_url'] = this.nativeUrl;
    data['type'] = this.type;
    data['done'] = this.done;
    data['isDone'] = this.isDone;
    data['url'] = this.url;
    data['activityButton'] = this.activityButton;
    data['defaultColor'] = this.defaultColor;
    data['activeColor'] = this.activeColor;
    data['name'] = this.name;
    data['time'] = this.time;
    return data;
  }
}

class ResultDataNormalentrance {
  String image;
  int no;
  String iosNavtiveUrl;
  String activeImage;
  String description;
  String nativeUrl;
  String type;
  bool done;
  bool isDone;
  String url;
  bool activityButton;
  String defaultColor;
  String activeColor;
  String name;
  int time;

  ResultDataNormalentrance(
      {this.image,
      this.no,
      this.iosNavtiveUrl,
      this.activeImage,
      this.description,
      this.nativeUrl,
      this.type,
      this.done,
      this.isDone,
      this.url,
      this.activityButton,
      this.defaultColor,
      this.activeColor,
      this.name,
      this.time});

  ResultDataNormalentrance.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    iosNavtiveUrl = json['ios_navtive_url'];
    activeImage = json['activeImage'];
    description = json['description'];
    nativeUrl = json['native_url'];
    type = json['type'];
    done = json['done'];
    isDone = json['isDone'];
    url = json['url'];
    activityButton = json['activityButton'];
    defaultColor = json['defaultColor'];
    activeColor = json['activeColor'];
    name = json['name'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['ios_navtive_url'] = this.iosNavtiveUrl;
    data['activeImage'] = this.activeImage;
    data['description'] = this.description;
    data['native_url'] = this.nativeUrl;
    data['type'] = this.type;
    data['done'] = this.done;
    data['isDone'] = this.isDone;
    data['url'] = this.url;
    data['activityButton'] = this.activityButton;
    data['defaultColor'] = this.defaultColor;
    data['activeColor'] = this.activeColor;
    data['name'] = this.name;
    data['time'] = this.time;
    return data;
  }
}

class ResultDataAdvertising {
  String image;
  int no;
  String description;
  bool festivalVersion;
  bool isFestivalVersion;
  int id;
  String time;
  String url;

  ResultDataAdvertising(
      {this.image,
      this.no,
      this.description,
      this.festivalVersion,
      this.isFestivalVersion,
      this.id,
      this.time,
      this.url});

  ResultDataAdvertising.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    description = json['description'];
    festivalVersion = json['festivalVersion'];
    isFestivalVersion = json['isFestivalVersion'];
    id = json['id'];
    time = json['time'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['description'] = this.description;
    data['festivalVersion'] = this.festivalVersion;
    data['isFestivalVersion'] = this.isFestivalVersion;
    data['id'] = this.id;
    data['time'] = this.time;
    data['url'] = this.url;
    return data;
  }
}

class ResultDataNewesttrends {
  String image;
  String firstTitle;
  List<ResultDataNewesttrendsAdvertising> advertisings;
  String secondTitle;

  ResultDataNewesttrends(
      {this.image, this.firstTitle, this.advertisings, this.secondTitle});

  ResultDataNewesttrends.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    firstTitle = json['firstTitle'];
    if (json['advertisings'] != null) {
      advertisings = new List<ResultDataNewesttrendsAdvertising>();
      (json['advertisings'] as List).forEach((v) {
        advertisings.add(new ResultDataNewesttrendsAdvertising.fromJson(v));
      });
    }
    secondTitle = json['secondTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['firstTitle'] = this.firstTitle;
    if (this.advertisings != null) {
      data['advertisings'] = this.advertisings.map((v) => v.toJson()).toList();
    }
    data['secondTitle'] = this.secondTitle;
    return data;
  }
}

class ResultDataNewesttrendsAdvertising {
  String image;
  int no;
  String description;
  bool festivalVersion;
  bool isFestivalVersion;
  int id;
  String time;
  String url;

  ResultDataNewesttrendsAdvertising(
      {this.image,
      this.no,
      this.description,
      this.festivalVersion,
      this.isFestivalVersion,
      this.id,
      this.time,
      this.url});

  ResultDataNewesttrendsAdvertising.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    description = json['description'];
    festivalVersion = json['festivalVersion'];
    isFestivalVersion = json['isFestivalVersion'];
    id = json['id'];
    time = json['time'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['description'] = this.description;
    data['festivalVersion'] = this.festivalVersion;
    data['isFestivalVersion'] = this.isFestivalVersion;
    data['id'] = this.id;
    data['time'] = this.time;
    data['url'] = this.url;
    return data;
  }
}

class ResultDataZongcoinmarket {
  String image;
  String firstTitle;
  List<ResultDataZongcoinmarketButton> buttons;
  String marketUrl;
  String secondTitle;
  String findAll;

  ResultDataZongcoinmarket(
      {this.image,
      this.firstTitle,
      this.buttons,
      this.marketUrl,
      this.secondTitle,
      this.findAll});

  ResultDataZongcoinmarket.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    firstTitle = json['firstTitle'];
    if (json['buttons'] != null) {
      buttons = new List<ResultDataZongcoinmarketButton>();
      (json['buttons'] as List).forEach((v) {
        buttons.add(new ResultDataZongcoinmarketButton.fromJson(v));
      });
    }
    marketUrl = json['marketUrl'];
    secondTitle = json['secondTitle'];
    findAll = json['findAll'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['firstTitle'] = this.firstTitle;
    if (this.buttons != null) {
      data['buttons'] = this.buttons.map((v) => v.toJson()).toList();
    }
    data['marketUrl'] = this.marketUrl;
    data['secondTitle'] = this.secondTitle;
    data['findAll'] = this.findAll;
    return data;
  }
}

class ResultDataZongcoinmarketButton {
  String image;
  int no;
  String iosNavtiveUrl;
  String activeImage;
  String description;
  String nativeUrl;
  String type;
  bool done;
  bool isDone;
  String url;
  bool activityButton;
  String defaultColor;
  String activeColor;
  String name;
  int time;

  ResultDataZongcoinmarketButton(
      {this.image,
      this.no,
      this.iosNavtiveUrl,
      this.activeImage,
      this.description,
      this.nativeUrl,
      this.type,
      this.done,
      this.isDone,
      this.url,
      this.activityButton,
      this.defaultColor,
      this.activeColor,
      this.name,
      this.time});

  ResultDataZongcoinmarketButton.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    iosNavtiveUrl = json['ios_navtive_url'];
    activeImage = json['activeImage'];
    description = json['description'];
    nativeUrl = json['native_url'];
    type = json['type'];
    done = json['done'];
    isDone = json['isDone'];
    url = json['url'];
    activityButton = json['activityButton'];
    defaultColor = json['defaultColor'];
    activeColor = json['activeColor'];
    name = json['name'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['ios_navtive_url'] = this.iosNavtiveUrl;
    data['activeImage'] = this.activeImage;
    data['description'] = this.description;
    data['native_url'] = this.nativeUrl;
    data['type'] = this.type;
    data['done'] = this.done;
    data['isDone'] = this.isDone;
    data['url'] = this.url;
    data['activityButton'] = this.activityButton;
    data['defaultColor'] = this.defaultColor;
    data['activeColor'] = this.activeColor;
    data['name'] = this.name;
    data['time'] = this.time;
    return data;
  }
}

class ResultDataPlatformadvertisings {
  String image;
  String firstTitle;
  List<ResultDataPlatformadvertisingsAdvertising> advertisings;
  String secondTitle;

  ResultDataPlatformadvertisings(
      {this.image, this.firstTitle, this.advertisings, this.secondTitle});

  ResultDataPlatformadvertisings.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    firstTitle = json['firstTitle'];
    if (json['advertisings'] != null) {
      advertisings = new List<ResultDataPlatformadvertisingsAdvertising>();
      (json['advertisings'] as List).forEach((v) {
        advertisings
            .add(new ResultDataPlatformadvertisingsAdvertising.fromJson(v));
      });
    }
    secondTitle = json['secondTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['firstTitle'] = this.firstTitle;
    if (this.advertisings != null) {
      data['advertisings'] = this.advertisings.map((v) => v.toJson()).toList();
    }
    data['secondTitle'] = this.secondTitle;
    return data;
  }
}

class ResultDataPlatformadvertisingsAdvertising {
  String image;
  int no;
  String description;
  bool festivalVersion;
  bool isFestivalVersion;
  int id;
  String time;
  String url;

  ResultDataPlatformadvertisingsAdvertising(
      {this.image,
      this.no,
      this.description,
      this.festivalVersion,
      this.isFestivalVersion,
      this.id,
      this.time,
      this.url});

  ResultDataPlatformadvertisingsAdvertising.fromJson(
      Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    description = json['description'];
    festivalVersion = json['festivalVersion'];
    isFestivalVersion = json['isFestivalVersion'];
    id = json['id'];
    time = json['time'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['description'] = this.description;
    data['festivalVersion'] = this.festivalVersion;
    data['isFestivalVersion'] = this.isFestivalVersion;
    data['id'] = this.id;
    data['time'] = this.time;
    data['url'] = this.url;
    return data;
  }
}

class ResultDataBanner {
  String image;
  int no;
  String description;
  bool festivalVersion;
  bool isFestivalVersion;
  int id;
  String time;
  String url;

  ResultDataBanner(
      {this.image,
      this.no,
      this.description,
      this.festivalVersion,
      this.isFestivalVersion,
      this.id,
      this.time,
      this.url});

  ResultDataBanner.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    description = json['description'];
    festivalVersion = json['festivalVersion'];
    isFestivalVersion = json['isFestivalVersion'];
    id = json['id'];
    time = json['time'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['description'] = this.description;
    data['festivalVersion'] = this.festivalVersion;
    data['isFestivalVersion'] = this.isFestivalVersion;
    data['id'] = this.id;
    data['time'] = this.time;
    data['url'] = this.url;
    return data;
  }
}

class ResultDataTask {
  String image;
  int no;
  String iosNavtiveUrl;
  String activeImage;
  String description;
  String nativeUrl;
  String type;
  bool done;
  bool isDone;
  String url;
  bool activityButton;
  String defaultColor;
  String activeColor;
  String name;
  int time;

  ResultDataTask(
      {this.image,
      this.no,
      this.iosNavtiveUrl,
      this.activeImage,
      this.description,
      this.nativeUrl,
      this.type,
      this.done,
      this.isDone,
      this.url,
      this.activityButton,
      this.defaultColor,
      this.activeColor,
      this.name,
      this.time});

  ResultDataTask.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    iosNavtiveUrl = json['ios_navtive_url'];
    activeImage = json['activeImage'];
    description = json['description'];
    nativeUrl = json['native_url'];
    type = json['type'];
    done = json['done'];
    isDone = json['isDone'];
    url = json['url'];
    activityButton = json['activityButton'];
    defaultColor = json['defaultColor'];
    activeColor = json['activeColor'];
    name = json['name'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['ios_navtive_url'] = this.iosNavtiveUrl;
    data['activeImage'] = this.activeImage;
    data['description'] = this.description;
    data['native_url'] = this.nativeUrl;
    data['type'] = this.type;
    data['done'] = this.done;
    data['isDone'] = this.isDone;
    data['url'] = this.url;
    data['activityButton'] = this.activityButton;
    data['defaultColor'] = this.defaultColor;
    data['activeColor'] = this.activeColor;
    data['name'] = this.name;
    data['time'] = this.time;
    return data;
  }
}

class ResultDataThenewbutton {
  String image;
  int no;
  String iosNavtiveUrl;
  String activeImage;
  String description;
  String nativeUrl;
  String type;
  bool done;
  bool isDone;
  String url;
  bool activityButton;
  String defaultColor;
  String activeColor;
  String name;
  int time;

  ResultDataThenewbutton(
      {this.image,
      this.no,
      this.iosNavtiveUrl,
      this.activeImage,
      this.description,
      this.nativeUrl,
      this.type,
      this.done,
      this.isDone,
      this.url,
      this.activityButton,
      this.defaultColor,
      this.activeColor,
      this.name,
      this.time});

  ResultDataThenewbutton.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    iosNavtiveUrl = json['ios_navtive_url'];
    activeImage = json['activeImage'];
    description = json['description'];
    nativeUrl = json['native_url'];
    type = json['type'];
    done = json['done'];
    isDone = json['isDone'];
    url = json['url'];
    activityButton = json['activityButton'];
    defaultColor = json['defaultColor'];
    activeColor = json['activeColor'];
    name = json['name'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['ios_navtive_url'] = this.iosNavtiveUrl;
    data['activeImage'] = this.activeImage;
    data['description'] = this.description;
    data['native_url'] = this.nativeUrl;
    data['type'] = this.type;
    data['done'] = this.done;
    data['isDone'] = this.isDone;
    data['url'] = this.url;
    data['activityButton'] = this.activityButton;
    data['defaultColor'] = this.defaultColor;
    data['activeColor'] = this.activeColor;
    data['name'] = this.name;
    data['time'] = this.time;
    return data;
  }
}

class ResultDataRegisterredbag {
  String image;
  int no;
  String iosNavtiveUrl;
  String activeImage;
  String description;
  String nativeUrl;
  String type;
  bool done;
  bool isDone;
  String url;
  bool activityButton;
  String defaultColor;
  String activeColor;
  String name;
  int time;

  ResultDataRegisterredbag(
      {this.image,
      this.no,
      this.iosNavtiveUrl,
      this.activeImage,
      this.description,
      this.nativeUrl,
      this.type,
      this.done,
      this.isDone,
      this.url,
      this.activityButton,
      this.defaultColor,
      this.activeColor,
      this.name,
      this.time});

  ResultDataRegisterredbag.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    no = json['no'];
    iosNavtiveUrl = json['ios_navtive_url'];
    activeImage = json['activeImage'];
    description = json['description'];
    nativeUrl = json['native_url'];
    type = json['type'];
    done = json['done'];
    isDone = json['isDone'];
    url = json['url'];
    activityButton = json['activityButton'];
    defaultColor = json['defaultColor'];
    activeColor = json['activeColor'];
    name = json['name'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['no'] = this.no;
    data['ios_navtive_url'] = this.iosNavtiveUrl;
    data['activeImage'] = this.activeImage;
    data['description'] = this.description;
    data['native_url'] = this.nativeUrl;
    data['type'] = this.type;
    data['done'] = this.done;
    data['isDone'] = this.isDone;
    data['url'] = this.url;
    data['activityButton'] = this.activityButton;
    data['defaultColor'] = this.defaultColor;
    data['activeColor'] = this.activeColor;
    data['name'] = this.name;
    data['time'] = this.time;
    return data;
  }
}
