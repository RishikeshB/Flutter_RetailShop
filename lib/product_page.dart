import 'Package:flutter/material.dart';
import 'product.dart';

class ProductPage extends StatelessWidget
{

  ProductPage({Key? key,required this.items}):super(key: key);
  final Product items;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar
      (
        title: Text(this.items.name),
      ),
      body: Center
      (
        child: Container
        (
          
          padding: EdgeInsets.all(3),
          child:Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("images/"+this.items.image,height: 150,),
              ),
              Expanded(child: Container(padding: EdgeInsets.all(1),
              child:Column(children: [
                Text(this.items.name,style:TextStyle(fontWeight: FontWeight.bold),),
                Text(this.items.description),
                Text("Price"+this.items.price.toString()),
              ],)))
            ],
          )
        ),
      ),
    
    );
  }
}