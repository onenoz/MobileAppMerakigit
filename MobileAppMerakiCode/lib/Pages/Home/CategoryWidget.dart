import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget{
  @override
  CategoryWidgetState createState() => CategoryWidgetState();
}

class Category {
  final String categoryName;
  Category({required this.categoryName});
}

class CategoryWidgetState extends State<CategoryWidget>{
  @override
  void initState() {
    super.initState();
  }
  List<Category> lstCategory = [
    Category(categoryName: "Elektronik"),
    Category(categoryName: "Baju"),
    Category(categoryName: "Makanan"),
    Category(categoryName: "Minuman"),
    Category(categoryName: "Sabun"),
    Category(categoryName: "Hp"),
    Category(categoryName: "Laptop"),
    ];
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 
        const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      child: Container(
        height: 90.0,
        child: ListView.builder(
          itemCount: lstCategory.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0, vertical: 5.0),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.folder,
                    size: 30.0,
                  ),
                  Text(
                    lstCategory[index].categoryName,
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}