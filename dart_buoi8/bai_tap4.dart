void main() {
  var productA = Product(1,"product A",10);
  var productB = Product(1,"product B",20);
  var productC = Product(1,"product C",50);

  var order = Order();
  order.themSanPham(productA);
  order.themSanPham(productB);
  order.themSanPham(productC);

  order.tongGiaTri();


  var id = productA.id;
  var name = productA.name;
  var price = productA.price;


}

class Product {
  var id;
  var name;
  var price;
  Product(this.id, this.name, this.price);
}

class Order {
  var listProduct = [];

  void themSanPham(product) {
    this.listProduct.add(product);
  }

  void tongGiaTri() {
    var tong = 0;
    for (var product in listProduct) {
      tong += int.parse(product.price.toString());
    }

    print("Giá trị đơn hàng: $tong");
  }
}
