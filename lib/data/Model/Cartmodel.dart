class Cartmodel{
  String id;
  String userid;
  String name;
  String image;
  String price;
  String qunitty;
  Cartmodel({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.qunitty,
    required this.userid
}
);
  Cartmodel.fromjson(Map<String , dynamic>json):this(
id:json['id']as String,
name:json['name']as String,
image:json['image']as String,
price:json['price']as String,
qunitty:json['qunitty']as String,
    userid: json['userid'],
  );
 Map<String, dynamic> tojson(){
   return{
     'id':id,
     'name':name,
     'image':image,
     'price':price,
     'qunitty':qunitty,
     'userid':userid
   };
 }
}