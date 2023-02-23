import 'package:flutter/material.dart';
import 'product.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key? key,required this.item}):super(key: key);

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 200, 
      child:Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: 
          [
           
            // Image.asset("images/"+this.item.image,height: 150,width:100,),
            Expanded
            (
              child: Container
              (
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(color:Color.fromARGB(255, 16, 174, 223),borderRadius:BorderRadius.circular(20)),
                
                child:Column
                (
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: 
                  [
                     ClipRRect(borderRadius: BorderRadius.circular(20),child:SizedBox.fromSize(
              size:Size.fromRadius(44),
              child:Image.asset("images/"+this.item.image,height: 150,width:100,fit: BoxFit.cover,)
            )),
                    Text(this.item.name,
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(this.item.description),
                    Text("Price: "+this.item.price.toString())
                  ],
                )
              )
            )
          ],
        ),
      )
    );
  }
}