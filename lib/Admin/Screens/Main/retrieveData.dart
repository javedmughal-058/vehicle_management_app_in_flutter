import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager{
  List lisofitem=[];
  Future counter()async{
    try{
      await FirebaseFirestore.instance
      .collection("shops")
      .orderBy("Shop Rating",descending: true)
          .get().then((querySnapshot) {
        querySnapshot.docs.forEach((result) {
          lisofitem.add(result.data());
        });
      });
      return lisofitem;
    }catch(e){
      print(e.toString());
      return null;
    }

  }
}

