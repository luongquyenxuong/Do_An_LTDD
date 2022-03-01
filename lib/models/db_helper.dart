import 'dart:io';

import 'package:app_thoi_trang/models/cart.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';


class DBHelper {
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDatabase();
    return _db!;
  }

  initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'cart.db');
    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE cart (id INTEGER PRIMARY KEY AUTOINCREMENT, productId INTEGER, name TEXT,image TEXT,quantity INTEGER, unitPrice INTEGER, totalPrice INTEGER,size VARCHAR)');
  }

  Future<Cart> insert(Cart cart) async {
    var dbClient = await db;
    await dbClient.insert('cart', cart.toMap());
    return cart;
  }

  Future<List<Cart>> getCartList() async {
    var dbClient = await db;
    final List<Map<String, Object?>> queryResult = await dbClient.query('cart');
    return queryResult.map((e) => Cart.fromMap(e)).toList();
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete('cart', where: 'id=?', whereArgs: [id]);
  }

  Future<int> updateQuantity(Cart cart) async {
    var dbClient = await db;
    return await dbClient
        .update('cart', cart.toMap(), where: 'id=?', whereArgs: [cart.id]);
  }

  Future<bool> isItem(int id) async{
    var dbClient = await db;
    final isItem = await dbClient.rawQuery('SELECT EXISTS(SELECT * FROM cart WHERE productId=?)', [id]);
    int? exits = Sqflite.firstIntValue(isItem);
    return exits == 1;
  } 

  Future<int> updateItem(int id)async{
    var dbClient = await db;
    final raw = await dbClient.query('cart',where: 'productId=?', whereArgs: [id]);
    final cart = raw.map((e) => Cart.fromMap(e)).toList();
    int quantity = cart[0].soluong!;
    quantity++;
    int newTotalPrice =  cart[0].giabandau!* quantity;
    return await dbClient.rawUpdate('''
      UPDATE cart
      SET totalPrice=?,quantity=?
      WHERE productId=?
    ''', [newTotalPrice, quantity, id]);
  }
  Future<int> updateQuantityItem(int id,int soluong)async{
   var dbClient = await db;
    final raw = await dbClient.query('cart',where: 'productId=?', whereArgs: [id]);
    final cart = raw.map((e) => Cart.fromMap(e)).toList();
    int quantity = cart[0].soluong!;
    quantity=quantity+soluong;
    int newTotalPrice =  cart[0].giabandau!* quantity;
    return await dbClient.rawUpdate('''
      UPDATE cart
      SET totalPrice=?,quantity=?
      WHERE productId=?
    ''', [newTotalPrice, quantity, id]);
}
Future<bool> deleteAllCart()async{
 var dbClient = await db;
 final result= await dbClient.delete('cart');
 return result!=0;
}
}