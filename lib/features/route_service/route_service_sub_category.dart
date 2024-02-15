import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logistics_optimizer_app/features/route_service/route_service_data.dart';
import 'package:google_fonts/google_fonts.dart';



class RouteServiceSubCategory extends StatefulWidget {
  final String selected_category;
  const RouteServiceSubCategory({super.key, required this.selected_category});

  @override
  State<RouteServiceSubCategory> createState() => _RouteServiceSubCategoryState();
}

class _RouteServiceSubCategoryState extends State<RouteServiceSubCategory> {
  late List<SubCategoryModel> subCategoryList;
  late List<SubCategoryModel> display_list;
  @override
  void initState() {
    super.initState();
    subCategoryList = getCategoryList(widget.selected_category)!;
    display_list=List.from(subCategoryList);
    
  }

  List<SubCategoryModel>? getCategoryList(String desiredCategory) {
    
    if (desiredCategory == "Electronic Components") {
      return Electronic_Components;
    } else if (desiredCategory == "Consumer Electronics") {
      return Consumer_Electronics;
    } else if (desiredCategory == "Apparel and Fashion") {
      return Apparel_and_Fashion;
    } else if (desiredCategory == "Home and Garden") {
      return Home_and_Garden;
    } else if (desiredCategory == "Automotive Parts") {
      return Automotive_Parts;
    } else if (desiredCategory == "Health and Beauty") {
      return Health_and_Beauty;
    } else if (desiredCategory == "Food and Beverage") {
      return Food_and_Beverage;
    } else if (desiredCategory == "Pharmaceuticals and Medical Supplies") {
      return Pharmaceuticals_and_Medical_Supplies;
    } else if (desiredCategory == "Toys and Games") {
      return Toys_and_Games;
    } else if (desiredCategory == "Industrial and Manufacturing Equipment") {
      return Industrial_and_Manufacturing_Equipment;
    } else if (desiredCategory == "Books and Media") {
      return Books_and_Media;
    } else if (desiredCategory == "Sporting Goods") {
      return Sporting_Goods;
    } else if (desiredCategory == "Construction Materials") {
      return Construction_Materials;
    } else if (desiredCategory == "Pet Supplies") {
      return Pet_Supplies;
    } else if (desiredCategory == "Office Supplies") {
      return Office_Supplies;
    } else if (desiredCategory == "Jewelry and Watches") {
      return Jewelry_and_Watches;
    } else if (desiredCategory == "Electronic Appliances") {
      return Electronic_Appliances;
    } else if (desiredCategory == "Art and Collectibles") {
      return Art_and_Collectibles;
    } else if (desiredCategory == "Chemicals and Hazardous Materials") {
      return Chemicals_and_Hazardous_Materials;
    } else if (desiredCategory == "Textiles and Fabrics") {
      return Textiles_and_Fabrics;
    }
    else
      {
        return Textiles_and_Fabrics;
      }
  }
  
 

  // List<SubCategoryModel> display_list = List.from(Electronic_Components);

  void updateList(String value) {
    //function to filter our shippment goods list

    setState(() {
      display_list = subCategoryList
          .where((element) =>
          element.item.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
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
                        //Using random function to pick a random sub category from list to display in hint text
                        hintText: "Eg:${display_list[Random().nextInt(display_list.length)].item}",
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
                        title: Text(
                          display_list[index].item!,
                          style: GoogleFonts.roboto(
                              fontSize: 10,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          display_list[index].description!,
                          style: GoogleFonts.roboto(
                            fontSize: 9,
                            color: Colors.grey,
                          ),
                        ),
                        trailing: IconButton(
                          iconSize: 15,
                          icon: Icon(Icons.check),
                          onPressed: () {


                          },
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
    );
  }
}
