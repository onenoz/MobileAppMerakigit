import 'package:flutter/material.dart';

class CheckOutScreen extends StatefulWidget{
  @override
  CheckOutScreenState createState() => CheckOutScreenState();
}

class CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build (BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          title: Text(
            "Detail Order",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange),
            ),
            centerTitle: true,
        ),

          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Information",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Imam Kurniawan",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                          ),
                        ),
                      ],
                      ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "0823141423422",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                          ),
                        ),
                      ],
                      ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Adress",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Jl. Haji Makmur RT01/ RW 05 No.23",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                          ),
                        ),
                      ],
                      ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Detail Order",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100*1,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 5.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Image.network(
                                        "https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/zoom/1f2cbaabf4c3a97674acbfa042b2b90227380fc8_xxl-1.jpg",
                                        width: 85.0,
                                        height: 85.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15.0,
                                    ),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width - 130,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Product 1",
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black
                                                ),
                                              ),
                                              Text(
                                                "x 2",
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Container(
                                          width: MediaQuery.of(context).size.width - 130,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Rp. 100.000,00",
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.deepOrange
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )


                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    )
                    ]
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Cash On Delivery",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Notes",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            maxLines: 5,
                            keyboardType: TextInputType.text,
                            validator: (value){
                              if (value == null || value.isEmpty) {
                                return "Silahkan masukkan E-mail";
                              }
                              return null;
                            },
                            cursorColor: Colors.deepOrange,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: Colors.deepOrange),
                              ),
                              labelText: 'Notes',
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          )
                        ],
                      )
                    )
                  ],
                ),

                

                ],
            )
            
            ),
            
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 13.0, bottom: 12.0),
            height: 70,
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
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5.0)
                ),
              child: Center(
                child: Text(
                  "Chekout",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )
            ),
          )
          ),
    );
  }
}