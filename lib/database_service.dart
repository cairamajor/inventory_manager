import 'package:cloud_firestore/cloud_firestore.dart';
import 'item.dart';

class DatabaseService {
  final CollectionReference _items = FirebaseFirestore.instance.collection('inventory');

  // Real-time Stream
  Stream<List<Item>> get items {
    return _items.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Item.fromMap(doc.id, doc.data() as Map<String, dynamic>)).toList());
  }

  // Add Item
  Future<void> addItem(String name, int qty) => _items.add({'name': name, 'quantity': qty});

  // Update Item
  Future<void> updateItem(String id, int qty) => _items.doc(id).update({'quantity': qty});

  // Delete Item
  Future<void> deleteItem(String id) => _items.doc(id).delete();
}