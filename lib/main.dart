import 'package:flutter/material.dart';
import 'package:test_app/product_page.dart';
import 'product_box.dart';
import 'product.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Product Navigation',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch:Colors.deepPurple
      ),
      home: MyHomePage(title:'Product state Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key,required this.title}):super(key: key);
  final String title;
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar:AppBar
      (
        title:Text("Product Navigation"),),
        body:ListView.builder
        (
          itemCount: items.length,
          itemBuilder: (context, index) 
          {
            return GestureDetector
            (
              child: ProductBox(item:items[index],),
              onTap:()
              {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => ProductPage(items:items[index])));
              },
            );
          },
        ),

      );
  }

}
