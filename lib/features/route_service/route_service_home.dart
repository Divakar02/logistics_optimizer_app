import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logistics_optimizer_app/features/route_service/route_service_sub_category.dart';
import 'package:google_fonts/google_fonts.dart';

class RouteServiceHomePage extends StatefulWidget {
  const RouteServiceHomePage({super.key});

  @override
  State<RouteServiceHomePage> createState() => _RouteServiceHomePageState();
}

class _RouteServiceHomePageState extends State<RouteServiceHomePage> {
  //Data Items of Goods
  static List<GoodsModel> goods_list = [
    GoodsModel(
        "Consumer Electronics",
        "Covers all electrical and electronic items",
        "assets/goods_type/Consumer_Electronics.png"),
    GoodsModel(
        "Apparel and Fashion",
        "Includes clothing, footwear, and accessories",
        "assets/goods_type/Apparel_and_Fashion.png"),
    GoodsModel(
        "Home and Garden",
        "Encompasses furniture, home decor, and garden tools",
        "assets/goods_type/Home_and_Garden.png"),
    GoodsModel(
        "Automotive Parts",
        "Comprises engine components, braking systems, etc.",
        "assets/goods_type/Automotive_Parts.png"),
    GoodsModel(
        "Health and Beauty",
        "Involves skincare, makeup, haircare, and supplements",
        "assets/goods_type/Health_and_Beauty.png"),
    GoodsModel(
        "Food and Beverage",
        "Includes packaged foods, beverages, and fresh produce",
        "assets/goods_type/Food_and_Beverage.png"),
    GoodsModel(
        "Pharmaceuticals and Medical Supplies",
        "Covers drugs, equipment, etc.",
        "assets/goods_type/Pharmaceuticals_and_Medical_Supplies.png"),
    GoodsModel(
        "Toys and Games",
        "Comprises action figures, board games, puzzles, etc.",
        "assets/goods_type/Toys_and_Games.png"),
    GoodsModel(
        "Industrial and Manufacturing Equipment",
        "Includes machinery parts, tools, etc.",
        "assets/goods_type/Industrial_and_Manufacturing_Equipment.png"),
    GoodsModel(
        "Books and Media",
        "Encompasses books, DVDs, CDs, and video games",
        "assets/goods_type/Books_and_Media.png"),
    GoodsModel(
        "Sporting Goods",
        "Comprises gym equipment, athletic apparel, etc.",
        "assets/goods_type/Sporting_Goods.png"),
    GoodsModel(
        "Electrical Components",
        "Includes circuit boards, wiring harnesses, etc.",
        "assets/goods_type/Electrical_Components.png"),
    GoodsModel(
        "Construction Materials",
        "Comprises lumber, cement, steel beams, etc.",
        "assets/goods_type/Construction_Materials.png"),
    GoodsModel(
        "Pet Supplies",
        "Includes pet food, toys, beds, and grooming products",
        "assets/goods_type/Pet_Supplies.png"),
    GoodsModel(
        "Office Supplies",
        "Encompasses paper products, writing instruments, etc.",
        "assets/goods_type/Office_Supplies.png"),
    GoodsModel(
        "Jewelry and Watches",
        "Comprises rings, necklaces, bracelets, watches",
        "assets/goods_type/Jewelry_and_Watches.png"),
    GoodsModel(
        "Electronic Appliances",
        "Includes refrigerators, washing machines, etc.",
        "assets/goods_type/Electronic_Appliances.png"),
    GoodsModel(
        "Art and Collectibles",
        "Comprises paintings, sculptures, antiques, etc.",
        "assets/goods_type/Art_and_Collectibles.png"),
    GoodsModel(
        "Chemicals and Hazardous Materials",
        "Includes cleaning agents, solvents, etc.",
        "assets/goods_type/Chemicals_and_Hazardous_Materials.png"),
    GoodsModel(
        "Textiles and Fabrics",
        "Comprises cotton, silk, polyester, wool fabrics",
        "assets/goods_type/Textiles_and_Fabrics.png")
  ];

  List<GoodsModel> display_list = List.from(goods_list);

  void updateList(String value) {
    //function to filter our shippment goods list

    setState(() {
      display_list = goods_list
          .where((element) =>
              element.category!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(152, 200, 236, 1),
          toolbarHeight: 65,
          elevation: 0.0,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(152, 200, 236, 1),
                  Color.fromRGBO(154, 200, 236, 1)
                ],
              ),
            ),
          ),
          title: Text(
            "Route Service Page",
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/mixedbluebackground.jpg",
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                FocusScopeNode currentFocus = FocusScope.of(context);

                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/logo/LO-Logo.png',
                      height: 100,
                      width: 220,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    "Type of Good Selection",
                    style: GoogleFonts.roboto(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Select the type of good you prefer to ship from below",
                    style: GoogleFonts.roboto(fontSize: 12),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 55,
                    child: TextField(
                      autofocus: true,
                      onChanged: (value) => updateList(value),
                      style: GoogleFonts.roboto(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Eg:${display_list[Random().nextInt(display_list.length)].category}",
                        prefixIcon: Icon(Icons.search),
                        // prefixIconColor:
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: display_list.length == 0
                        ? Center(
                            child: Text(
                            "No result Found!",
                            style: GoogleFonts.roboto(),
                          ))
                        : ListView.builder(

                            itemCount: display_list.length,
                            itemBuilder: (context, index) => ListTile(
                              onTap: (){
                                RouteServiceSubCategory(selected_category: "Electronic Components");
                              },
                              title: Text(
                                display_list[index].category!,
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(
                                display_list[index].content!,
                                style: GoogleFonts.roboto(
                                  fontSize: 9,
                                  color: Colors.grey,
                                ),
                              ),
                              trailing: IconButton(
                                iconSize: 15,
                                icon: Icon(Icons.search),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          RouteServiceSubCategory(
                                            selected_category: display_list[index].category!,
                                          ),
                                    ),
                                  );
                                },
                              ),
                              leading: Image.asset(
                                display_list[index].image!,
                                height: 35,
                                width: 48,
                              ),
                              minVerticalPadding: 20,
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Page-1

class GoodsModel {
  String? category;

  String? content;

  String? image;

  GoodsModel(this.category, this.content, this.image);
}

//Reference: https://www.youtube.com/watch?v=jFHSkfjN96I
//https://flutterigniter.com/dismiss-keyboard-form-lose-focus/
