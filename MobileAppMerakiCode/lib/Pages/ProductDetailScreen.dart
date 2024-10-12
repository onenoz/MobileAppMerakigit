import 'package:app_commmerce/Components/DrawerWidget.dart';
import 'package:app_commmerce/Models/ProductWidget.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget{
  final Product product;
  ProductDetailScreen(this.product);
  @override
  ProductDetailScreenState createState() => ProductDetailScreenState();
}

class ProductDetailScreenState extends State<ProductDetailScreen> {
    int _current = 0;
  final CarouselController _controller = CarouselController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build (BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        endDrawer: DrawerWidget(),
        body: ListView(
          children: [
            Stack(
              children: [
                Image.network("https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/zoom/1f2cbaabf4c3a97674acbfa042b2b90227380fc8_xxl-1.jpg",
                width: 100.0),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: (){
                        scaffoldKey.currentState!.openEndDrawer();
                      }, 
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: 
                    TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                    maxLines:2,
                  ),
                  Text(
                    widget.product.categoryName,
                    style: 
                    TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                    maxLines:1,
                  ),
                  Text(
                    widget.product.price,
                    style: 
                    TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                    maxLines:1,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                  ),
                  const SizedBox(
                    height: 5.0,
                   ),
                  Text(
                    widget.product.description,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                    textAlign: TextAlign.justify,
                    ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Other Products",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                    ),
                ],
              ),
            ),

            Container(
              height: 210,
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){

                    },
                    child: Container(
                      width: 150.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 7.0, vertical: 5.0),
                      padding: const EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.01),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.02),
                            spreadRadius: 0,
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.12),
                            spreadRadius: 0,
                            blurRadius: 8,
                            offset: const Offset(0, 1),
                          ),
                        ]
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0)),
                            child: Image.network("https://fjallraven.co.id/cdn/shop/files/329af6d2-c730-4fce-846a-c6945b0015bf.jpg?v=1707985616&width=1946",
                            width: 90.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5.0),
                            child: Text(
                              "Product 1",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                              maxLines: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5.0),
                            child: Text(
                              "Category",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                              maxLines: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, left: 5.0, right: 5.0),
                            child: Text(
                              "Rp. 100.000,00",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.01),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.02),
                spreadRadius: 0,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                spreadRadius: 0,
                blurRadius: 8,
                offset: const Offset(0, 1),
              ),
            ]
          ),
          child: Container(
            margin: 
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            decoration: BoxDecoration(color: Colors.deepOrange),
            child: Center(
            child: Text(
              "Add to Chart",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
            ),
            )
          ),
        )
      )
    );
  }
}