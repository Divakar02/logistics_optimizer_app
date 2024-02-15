import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'homepage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            LiquidSwipe(
              liquidController: controller,
              enableSideReveal: false,
              onPageChangeCallback: (index) {
                setState(() {});
              },
              slideIconWidget: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              pages: [
                SwipePageWidget(
                  image: "assets/lottie/PlaneRoute.json",
                  title: "Efficient Shippers!",
                  subtitle:
                      "Streamlining transportation modes and routes to minimize delays and optimize delivery schedules, ensuring goods reach their destinations promptly and reliably.",
                ),
                SwipePageWidget(
                    image: "assets/lottie/CalenderClock.json",
                    title: "Time Efficient!",
                    subtitle:
                        "Utilizing advanced tracking technologies and real-time monitoring systems to enhance visibility and control over shipments, enabling swift decision-making and proactive management of logistics operations to meet tight deadlines."),
                SwipePageWidget(
                    image: "assets/lottie/MoneyDollar.json",
                    title: "Cost Efficient!",
                    subtitle:
                        "Implementing strategies to reduce shipping expenses by leveraging economical transportation options, negotiating favorable contracts with carriers, and optimizing supply chain processes to minimize overhead costs."),
              ],
            ),
            Positioned(
              bottom: 10,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Text(
                      'Skip',
                      style: GoogleFonts.merriweather(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: EdgeInsets.all(5),
                        fixedSize: Size(30, 30)),
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: controller.currentPage,
                    count: 3,
                    effect: const WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 12,
                        dotColor: Colors.white54,
                        activeDotColor: Colors.white),
                    onDotClicked: (index) {
                      controller.animateToPage(page: index);
                    },
                  ),
                  ElevatedButton(
                    child: Text(
                      'Next>',
                      style: GoogleFonts.merriweather(
                          color: Colors.white, fontSize: 10),
                    ),
                    onPressed: () {
                      final page = controller.currentPage + 1;
                      controller.animateToPage(
                          page: page > 4 ? 0 : page, duration: 400);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: EdgeInsets.all(5),
                      fixedSize: Size(30, 30),
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

class SwipePageWidget extends StatelessWidget {
  String image; //Path of Image
  String title; //Title Text of Page
  String subtitle; //Content Text of Title
  SwipePageWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 45, 0, 90),
              child: Column(
                children: [
                  Text(
                    "LOGISTICS OPTIMIZER",
                    style: GoogleFonts.josefinSans(fontSize: 20),
                  ),
                  Text(
                    "Efficiency is our No.1 Priority!",
                    style: GoogleFonts.josefinSans(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Center(child: Lottie.asset(image,width: 300,height: 300,),),
          Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.blueAccent,
                child: Text(
                  subtitle,
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
