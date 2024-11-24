import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './../product/productdetails.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;

    List<Product> products = [
      Product(
        name: 'Long Long Long Long Product Name',
        price: '\$100',
        brand: 'Brand A',
        image: 'assets/images/m1.png',
      ),
      Product(
        name: 'Product 2',
        price: '\$150',
        brand: 'Brand B',
        image: 'assets/images/m2.png',
      ),
      Product(
        name: 'Long Long Long Long Product Name',
        price: '\$100',
        brand: 'Brand A',
        image: 'assets/images/m3.png',
      ),
      Product(
        name: 'Product 2',
        price: '\$150',
        brand: 'Brand B',
        image: 'assets/images/m4.png',
      ),
      Product(
        name: 'Long Long Long Long Product Name',
        price: '\$100',
        brand: 'Brand A',
        image: 'assets/images/m5.png',
      ),
      Product(
        name: 'Product 2',
        price: '\$150',
        brand: 'Brand B',
        image: 'assets/images/m6.png',
      ),
      Product(
        name: 'Long Long Long Long Product Name',
        price: '\$100',
        brand: 'Brand A',
        image: 'assets/images/m7.png',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Soraya',
          style: GoogleFonts.kalnia(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.search, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite, size: 20, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag, size: 20, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Orders',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ProductCard(product: products[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 70,
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.withOpacity(0.5),
      //         spreadRadius: 1,
      //         blurRadius: 2,
      //         offset: Offset(0, 1),
      //       ),
      //     ],
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             ElevatedButton(
      //               onPressed: () {},
      //               style: ElevatedButton.styleFrom(
      //                 backgroundColor: primaryColor,
      //                 padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(6.0),
      //                 ),
      //               ),
      //               child: Row(
      //                 mainAxisSize: MainAxisSize.min,
      //                 children: const [
      //                   Text(
      //                     'Proceed to Checkout',
      //                     style: TextStyle(
      //                       fontSize: 18,
      //                       fontWeight: FontWeight.w600,
      //                       color: Colors.white,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductDetails()),
          );
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        product.brand,
                        style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.price,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.grey.withOpacity(0.5),
                                  //     spreadRadius: 1,
                                  //     blurRadius: 2,
                                  //     offset: Offset(0, 1),
                                  //   ),
                                  // ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String brand;
  final String image;

  Product({
    required this.name,
    required this.price,
    required this.brand,
    required this.image,
  });
}

