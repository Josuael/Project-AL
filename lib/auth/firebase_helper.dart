import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cultulingo/auth/user.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FirebaseHelper {
  // Instance dari Firestore
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  
  // Nama collection (pengganti nama tabel 'users')
  final String collectionName = 'users';

  // 1. Ambil Semua User
  Future<List<Users>> getAllUsers() async {
    QuerySnapshot snapshot = await _db.collection(collectionName).get();
    
    return snapshot.docs.map((doc) {
      // Perlu cast doc.data() ke Map<String, dynamic>
      return Users.fromMap(doc.data() as Map<String, dynamic>);
    }).toList();
  }

  // 2. Tambah User Baru (Insert)
  Future<void> insertUser(Users user) async {
    // add() akan otomatis membuat ID unik (pengganti AUTOINCREMENT)
    DocumentReference docRef = await _db.collection(collectionName).add(user.toMap());
    print('User inserted to Firestore with ID: ${docRef.id}');
  }

  // 3. Cari User berdasarkan Username (Untuk Login)
  Future<Users?> getUserByUsername(String username) async {
    QuerySnapshot snapshot = await _db.collection(collectionName)
        .where('username', isEqualTo: username)
        .limit(1) // Ambil 1 saja
        .get();

    if (snapshot.docs.isNotEmpty) {
      return Users.fromMap(snapshot.docs.first.data() as Map<String, dynamic>);
    }
    return null; // Jika user tidak ditemukan
  }

  // 4. Update Data User
  Future<void> updateUser(Users user) async {
    // Di Firestore, kita harus cari dulu ID dokumennya berdasarkan username
    QuerySnapshot snapshot = await _db.collection(collectionName)
        .where('username', isEqualTo: user.username)
        .get();

    if (snapshot.docs.isNotEmpty) {
      String docId = snapshot.docs.first.id;
      // Update dokumen menggunakan ID tersebut
      await _db.collection(collectionName).doc(docId).update(user.toMap());
    }
  }

  // 5. Hapus User
  Future<void> deleteUser(String username) async {
    QuerySnapshot snapshot = await _db.collection(collectionName)
        .where('username', isEqualTo: username)
        .get();

    if (snapshot.docs.isNotEmpty) {
      String docId = snapshot.docs.first.id;
      // Hapus dokumen
      await _db.collection(collectionName).doc(docId).delete();
    }
  }

  // 6. Save ke TXT (Logikanya hampir sama persis, hanya beda pemanggilan data)
  Future<void> saveUsersToTxt(BuildContext context) async {
    try {
      List<Users> users = await getAllUsers();

      if (users.isEmpty) {
        print('No users found to save.');
        return;
      }

      StringBuffer sb = StringBuffer();
      for (var user in users) {
        sb.writeln('Username: ${user.username}');
        sb.writeln('Password: ${user.pass}');
        sb.writeln('Telepon: ${user.tlpn}');
        sb.writeln('------------------------');
      }

      final directory = await getApplicationDocumentsDirectory();
      final path = '${directory.path}/data.txt';
      final file = File(path);

      await file.writeAsString(sb.toString());
      print('Data saved to Firestore local cache/txt at $path');

      if (context.mounted) { // Pengecekan context standar di Flutter terbaru
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Data berhasil disimpan ke $path'),
            duration: const Duration(seconds: 5),
            backgroundColor: const Color.fromARGB(255, 32, 142, 36),
          ),
        );
      }
    } catch (e) {
      print('Error saving users to TXT: $e');
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error saving users to TXT: $e'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }
}