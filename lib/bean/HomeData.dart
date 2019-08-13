import 'first_page_item.dart';

class HomeData{
   int total;
   List<FirstPageItem> entrylist;
   HomeData({this.total,this.entrylist});
   HomeData.fromJson(Map<String, dynamic> json){
     total = json['total'];
     if(json['entrylist']!=null){
       entrylist =  List<FirstPageItem>();
       (json['entrylist'] as List).forEach((v) {
         entrylist.add(new FirstPageItem.fromJson(v));
       });
     }
   }
}