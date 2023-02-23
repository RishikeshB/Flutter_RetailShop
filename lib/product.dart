class Product 
{
  final String name;
  final String description;
  final int price;
  final String image;

  Product(this.name,this.description,this.price,this.image);

  static List<Product> getProducts()
  {
    List<Product> items = <Product>[];
    items.add
    (
      Product
      (
        "Reebok shoes",
        "Make with high quality material with attrative colors",
        1700,
        "reebok.jpg"
      )
    );
     items.add
    (
      Product
      (
        "Puma",
        "Make with high quality material with attrative colors",
        1800,
        "puma.jpg"
      )
    );
      items.add
    (
      Product
      (
        "Sport",
        "Make with high quality material with attrative colors",
        1800,
        "sport.jpg"
      )
    );
    return items;
  }
}