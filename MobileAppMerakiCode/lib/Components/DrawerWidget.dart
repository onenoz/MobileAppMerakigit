import 'package:MobileaAppMerakiCode/Pages/CheckOutScren.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  DrawerWidgetState createState() => DrawerWidgetState();
}

class DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Text(
              "List Chart",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                            height: 90.0,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.network(
                                    "https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/zoom/1f2cbaabf4c3a97674acbfa042b2b90227380fc8_xxl-1.jpg",
                                    width: 80,
                                    height: 80.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Product 1",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "Category",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: 190.0,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons
                                                .indeterminate_check_box_outlined,
                                            color: Colors.deepOrange,
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(fontSize: 17.0),
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Icon(
                                            Icons.add_box_outlined,
                                            color: Colors.deepOrange,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ));
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CheckOutScreen()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      color: Colors.deepOrange,
                      child: Center(
                        child: Text(
                          "Process",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
