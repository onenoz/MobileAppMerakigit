import 'package:MobileaAppMerakiCode/Models/ProductWidget.dart';
import 'package:flutter/material.dart';
import '../../Pages/ProductDetailScreen.dart';

class FuturedProductWidget extends StatefulWidget {
  final List<Product> lstproduct;
  FuturedProductWidget(this.lstproduct);
  @override
  FuturedProductWidgetState createState() => FuturedProductWidgetState();
}

class FuturedProductWidgetState extends State<FuturedProductWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Featured Product",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
              Container(
                  height: 210,
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: ListView.builder(
                    itemCount: widget.lstproduct.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductDetailScreen(
                                  widget.lstproduct[index])));
                        },
                        child: Container(
                          width: 150.0,
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
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
                              ]),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.0),
                                      topRight: Radius.circular(5.0)),
                                  child: Image.network(
                                      widget.lstproduct[index].img,
                                      height: 110,
                                      fit: BoxFit.cover,
                                      width: double.infinity),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 5.0, right: 5.0),
                                  child: Text(
                                    widget.lstproduct[index].name,
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
                                    widget.lstproduct[index].categoryName,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5.0, left: 5.0, right: 5.0),
                                  child: Text(
                                    widget.lstproduct[index].price,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                              ]),
                        ),
                      );
                    },
                  ))
            ],
          ),
        ));
  }
}
