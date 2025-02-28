import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food/data/Model/Cartmodel.dart';
import 'package:food/data/Model/User.dart';


class FireStroreData {
  static CollectionReference<UserModel> creatCollections() {
    return FirebaseFirestore.instance
        .collection("My user")
        .withConverter<UserModel>(
            fromFirestore: (snap, _) => UserModel.frojson(snap.data()!),
            toFirestore: (model, _) => model.tojson());
  }

  static Future<void> saveUser(UserModel user) {
  return  creatCollections().doc(user.id).set(user);
  }

  static Future<UserModel?> getUser(UserModel user) async {
    var docs = await creatCollections().doc(user.id).get();
    return docs.data();
  }
  static  CollectionReference<Cartmodel>CreatCollectionsCart(){
    return FirebaseFirestore.instance.collection('order').
    withConverter<Cartmodel>(fromFirestore:(snap, _)=>Cartmodel.fromjson(snap.data()!)
        , toFirestore:(model,_)=>model.tojson() );
  }
  static Future<Cartmodel>saveorder(Cartmodel cart)async{
    var docs= CreatCollectionsCart().doc();
    cart.id=docs.id;
    await docs.set(cart);
    return cart;
  }
  static Stream<QuerySnapshot<Cartmodel>>getorder(String  userid){
    return CreatCollectionsCart().where('userid', isEqualTo: userid).snapshots();
  }
static Future<void>deletorders(Cartmodel cart){
    return CreatCollectionsCart().doc(cart.id).delete();
}

}
