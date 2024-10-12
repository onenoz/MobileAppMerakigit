import 'package:MobileaAppMerakiCode/Components/DrawerWidget.dart';
import 'package:MobileaAppMerakiCode/Models/ProductWidget.dart';
import 'package:MobileaAppMerakiCode/Pages/Home/CarouselWidget.dart';
import 'package:MobileaAppMerakiCode/Pages/Home/CategoryWidget.dart';
import 'package:MobileaAppMerakiCode/Pages/Home/FuturedProductWidget.dart';
import 'package:MobileaAppMerakiCode/Pages/Home/LastestProductWidget.dart';
import 'package:MobileaAppMerakiCode/Components/DrawerWidget.dart';
import 'package:MobileaAppMerakiCode/Models/ProductWidget.dart';
import 'package:MobileaAppMerakiCode/Pages/Home/CategoryWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

List<Product> lstproduct = [
  Product(
      name: 'baju tidur',
      categoryName: 'Baju',
      price: 'Rp. 100.000',
      img:
          'https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/zoom/1f2cbaabf4c3a97674acbfa042b2b90227380fc8_xxl-1.jpg',
      description: ''),
  Product(
      name: "Topi",
      categoryName: 'Baju',
      price: 'Rp. 50.000',
      img:
          'https://fjallraven.co.id/cdn/shop/files/329af6d2-c730-4fce-846a-c6945b0015bf.jpg?v=1707985616&width=1946',
      description: ''),
  Product(
      name: 'Seblak',
      categoryName: 'Makanan',
      price: 'Rp. 10.000',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjpR_GIIF2PT_R9n-2-8Ydi1FXq4mAUEzEyw&s',
      description: ''),
  Product(
      name: 'Iphone SE 2020 128 GB',
      categoryName: 'Elekronik',
      price: 'Rp. 5.700.000',
      img:
          'https://images.tokopedia.net/img/cache/700/VqbcmM/2020/5/22/6786f16f-eaa1-4041-adf0-2d0039acd552.jpg',
      description: ''),
  Product(
      name: 'Kaos Partai Nasdem',
      categoryName: 'Baju',
      price: 'Rp. 80.000',
      img:
          'https://images.tokopedia.net/img/cache/700/VqbcmM/2023/6/15/89036d05-9beb-4c60-9e8a-2ead8cf945b9.jpg',
      description: ''),
  Product(
      name: "Jaket Corduroy",
      categoryName: 'Baju',
      price: 'Rp. 180.000',
      img:
          'https://img.lazcdn.com/g/p/4c8ae3dc2f1f7c30cf6e226f1cf100cf.png_720x720q80.png',
      description: ''),
  Product(
      name: 'Ayam Penyet Bu Yudhi',
      categoryName: 'Makanan',
      price: 'Rp. 22.000',
      img:
          'https://asset.kompas.com/crops/J7KOPBoSnx10zYpoFaid0E5_c-0=/2x0:700x465/750x500/data/photo/2023/11/07/654a25a73f416.jpg',
      description: ''),
  Product(
      name: 'Charger Lighting to type-C U-Green',
      categoryName: 'Elekronik',
      price: 'Rp. 250.000',
      img:
          'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/10/18/dafb4050-b575-4308-9ae4-7237fe9a9738.jpg',
      description: ''),
  Product(
      name: 'Sabun Nuvo Merah 400ml',
      categoryName: 'Sabun',
      price: 'Rp. 14.000',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXBzEZM77XiUEhW05ZdkMBB69y_F_C89ee3A&s',
      description: ''),
  Product(
      name: 'Indomie Original',
      categoryName: 'Makanan',
      price: 'Rp. 3.500',
      img: 'https://img.ws.mms.shopee.co.id/db01e3eb3f83ff9216f298f931d2106d',
      description: ''),
];

class HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        endDrawer: DrawerWidget(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          title: const Text(
            "E-Commerce",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
          actions: [
            IconButton(
              onPressed: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.grey,
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            CarouselWidget(),
            CategoryWidget(),
            FuturedProductWidget(lstproduct),
            LastestProductWidget(lstproduct),
          ],
        ),
      ),
    );
  }
}
