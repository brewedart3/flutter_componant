import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Implement Firebase authentication methods if needed (sign-in, sign-out, etc.).

  // CRUD operations
  Future<void> createData(Map<String, dynamic> data, String collectionName) async {
    await _firestore.collection(collectionName).add(data);
  }

  Future<List<DocumentSnapshot>> readData(String collectionName) async {
    final querySnapshot = await _firestore.collection(collectionName).get();
    return querySnapshot.docs;
  }

  Future<void> updateData(String documentId, Map<String, dynamic> data, String collectionName) async {
    await _firestore.collection(collectionName).doc(documentId).update(data);
  }

  Future<void> deleteData(String documentId, String collectionName) async {
    await _firestore.collection(collectionName).doc(documentId).delete();
  }
}
