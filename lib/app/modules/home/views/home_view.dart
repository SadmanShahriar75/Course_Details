import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7455F7),
      body: Column(
        children: [
          const Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Text(
                      'Course Details',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.shopping_basket_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),

          ///
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                height: 3000,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Color(0xFFF7F8FA),
                  ),

                  //......................START................
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //container box
                        Container(
                          width: 345,
                          height: 160,
                          decoration: ShapeDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment(1.00, -0.06),
                              end: Alignment(-1, 0.06),
                              colors: [
                                Color(0x00039D55),
                                Color(0xFF7455F7),
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Center(
                            child: Image.asset("assets/images/play.png"),
                          ),
                        ),
                        /////////////////////////////////////
                        const SizedBox(
                          height: 50,
                        ),

                        Obx(
                          () => Text(
                            homeController.singleproductdata["data"]["title"]
                                .toString(),
                            style: const TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                          ),
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: homeController.singleproductdata["data"]
                                        ["sub_title"]
                                    .toString(),
                                style: const TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const TextSpan(
                                text: 'See more',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Text(
                              '5.0',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset("assets/images/star.png"),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '(25,00)',
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),

                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '9,591 students',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Mentor ',
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                ),
                              ),
                              TextSpan(
                                text: 'Ashutosh Pawar',
                                style: TextStyle(
                                  color: Color(0xFF7455F7),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/update.png"),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              'Last update 06/2023',
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Image.asset("assets/images/english.png"),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              'English',
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        // api testing
                        Obx(
                          () => Text(
                            "BDT ${homeController.singleproductdata["data"]["price"].toString()}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        //

                        const SizedBox(
                          height: 5,
                        ),

                        Container(
                          width: 345,
                          height: 46,
                          decoration: ShapeDecoration(
                            color: Color(0xFF7455F7),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: const Center(
                            child: Text(
                              'Buy now',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        Row(
                          children: [
                            Container(
                              width: 155,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFEDEBFA),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFF7455F7)),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Add to cart',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF7455F7),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0.08,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 17,
                            ),
                            Container(
                              width: 155,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: Color(0xFFEDEBFA),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFF7455F7)),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Add to wishlist',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF7455F7),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0.08,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //api test

                        const Text(
                          'What you’ll learn ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF7455F7),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Obx(
                              () => Text(
                                homeController.singleproductdata["data"]
                                        ["learning_topic"][0]
                                    .toString(),
                                style: const TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF7455F7),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Obx(
                              () => Text(
                                homeController.singleproductdata["data"]
                                        ["learning_topic"][1]
                                    .toString(),
                                style: const TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Container(
                                width: 5,
                                height: 5,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF7455F7),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Obx(
                              () => Text(
                                homeController.singleproductdata["data"]
                                        ["learning_topic"][2]
                                    .toString(),
                                style: const TextStyle(
                                  color: Color(0xFF666666),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Show more',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF7455F7),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(
                          height: 40,
                        ),

                        const Text(
                          'Course Curriculum ',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        /////////////////////////////

                        Container(
                          width: 345,
                          height: 210,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFF6F6F6)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Padding(
                            padding:
                                EdgeInsets.only(top: 15, left: 15, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Sectionn 1 -Basic knowledge',
                                      style: TextStyle(
                                        color: Color(0xFFA335F3),
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      color: Color(0xFFA335F3),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.play_arrow_outlined,
                                      color: Color(0xFFA335F3),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Course Introduction',
                                      style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.play_arrow_outlined,
                                      color: Color(0xFFA335F3),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Expressions for Discussion',
                                      style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 95,
                                    ),
                                    Icon(
                                      Icons.lock_outline,
                                      color: Color(0xFFA335F3),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.mic_none_outlined,
                                      color: Color(0xFFA335F3),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'How to Ask for & Provide Information',
                                      style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.receipt,
                                      color: Color(0xFFA335F3),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Vocabulary for Emergency Situation',
                                      style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 10,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 48,
                                    ),
                                    Icon(
                                      Icons.lock_outline,
                                      color: Color(0xFFA335F3),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),

                        ///////////////////////////////////////////////////

                        const SizedBox(
                          height: 10,
                        ),
                        /////////////////////////

                        Container(
                          width: 345,
                          height: 42,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFF6F6F6)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Section 2 -How to Be More Polite with Your Words',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 10.5,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.read_more_sharp)
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        Container(
                          width: 345,
                          height: 42,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFF6F6F6)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Section 3 -How to Be More Polite with Your Words',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 10.5,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.read_more_sharp)
                            ],
                          ),
                        ),

                        Container(
                          width: 345,
                          height: 42,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFF6F6F6)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Section 4 -How to Be More Polite with Your Words',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 10.5,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.read_more_sharp)
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        Container(
                          width: 345,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEDEBFA),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF7455F7)),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              '16 more sections',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF7455F7),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0.08,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        //This course includes

                        const Text(
                          'This course includes',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            Image.asset("assets/images/youtube.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '34.5 total hours on- demand vedio',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            Image.asset("assets/images/document.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Support Files',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            Image.asset("assets/images/book.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '10 Articles',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            Image.asset("assets/images/infinity.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Full lifetime access',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            Image.asset("assets/images/smartphone.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Access on mobile, desktop, and TV',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            Image.asset("assets/images/certificate.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Certificate of Completion',
                              style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),

                        const Text(
                          'Requirements',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Row(
                          children: [
                            Container(
                              width: 5,
                              height: 5,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF7455F7),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Obx(() => Text(
                                  homeController.singleproductdata["data"]
                                          ["requirements"]
                                      .toString(),
                                  style: const TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 1,
                                )),
                          ],
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        const Text(
                          'Description',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //textapi
                        Obx(
                          () => Text(
                            homeController.singleproductdata["data"]
                                    ["description"]
                                .toString(),
                            style: const TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        const Text(
                          'Learn Django Right From The Basic Like\nCreating A Django Project, Understanding\nModels, Making Migrations,Running Django\nApplications On Local Server',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        const Text(
                          'Show more',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF7455F7),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.07,
                          ),
                        ),

                        const SizedBox(
                          height: 70,
                        ),
                        ////
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
