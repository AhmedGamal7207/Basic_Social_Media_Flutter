import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  CollectionReference users = FirebaseFirestore.instance.collection("users");

  Future<void> addUser(String email, String firstName, String lastName) {
    return users.doc(email).set({
      "email": email,
      "firstName": firstName,
      "lastName": lastName,
      "creationTimeStamp": Timestamp.now(),
    });
  }

  Stream<QuerySnapshot> getUsersStream() {
    return users.orderBy("firsName").snapshots();
  }

  Future<void> updateUser(
    String userID,
    String email,
    String firstName,
    String lastName,
  ) {
    return users.doc(userID).update({
      "email": email,
      "firstName": firstName,
      "lastName": lastName,
      "creationTimeStamp": Timestamp.now(),
    });
  }

  Future<void> deleteUser(String userID) {
    return users.doc(userID).delete();
  }
}
