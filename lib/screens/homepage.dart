import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logistics_optimizer_app/features/route_service/route_service_home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          drawer: Drawer(),
          appBar: AppBar(
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
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
              "Home Page",
              style: GoogleFonts.poppins(
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/logo/LO-Logo.png',
                      height: 100,
                      width: 220,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    "Welcome Back, Diva!",
                    style: GoogleFonts.poppins(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "What service you would like to try today?",
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: AnotherCarousel(
                      images: [
                        CarousalContainer(
                            image: "assets/lottie/CustomerSupport.json",
                            title: "24x7 Customer Support!",
                            subtitle:
                                "Our team is there, to support you 24x7 with all the necessity servies from our side."),
                        CarousalContainer(
                            image: "assets/lottie/Search.json",
                            title: "Route Provider!",
                            subtitle:
                                "Provides the efficient route available, by inferring all possible routes through AIML"),
                        CarousalContainer(
                            image: "assets/lottie/Search.json",
                            title: "Track Shippments!",
                            subtitle:
                                "Track your shippments instantly, Just my entering the shippment number, that we've provided"),
                      ],
                      dotSize: 5,
                      indicatorBgPadding: 5.0,
                      borderRadius: true,
                      radius: Radius.circular(20),
                      autoplay: false,
                      autoplayDuration: Durations.extralong3,
                      boxFit: BoxFit.fill,
                      dotBgColor: Color.fromRGBO(152, 200, 236, 1),
                      dotSpacing: 30,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Pick from your recently tried services...",
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ServiceContainer(
                            image: "assets/lottie/GlobalGPS.json",
                            title: "Route Service",
                            width: width),
                        ServiceContainer(
                            image: "assets/lottie/PlaneRoute.json",
                            title: "Tracker Service",
                            width: width)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class CarousalContainer extends StatelessWidget {
  String image;
  String title;
  String subtitle;

  CarousalContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(198, 230, 255, 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Lottie.asset(image, width: 100),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(35.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(subtitle)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ServiceContainer extends StatefulWidget {
  String image;
  String title;
  double width;

  ServiceContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.width});

  @override
  State<ServiceContainer> createState() => _ServiceContainerState();
}

class _ServiceContainerState extends State<ServiceContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RouteServiceHomePage()),
        );
      },
      child: Container(
        height: 200,
        width: (widget.width / 2.3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromRGBO(152, 200, 236, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Lottie.asset(widget.image, height: 100, width: 100),
            Text(
              widget.title,
              style: GoogleFonts.roboto(),
            )
          ],
        ),
      ),
    );
  }
}

//Track your Shipment

//Route Finder
//Type of Product
//Quantity of Product
//Choose Vehicle
//Choose Pickup Point
//Choose Destination Point
//
