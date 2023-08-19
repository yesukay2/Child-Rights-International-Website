import 'package:criweb/aboutPage.dart';
import 'package:criweb/blogPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, this.url});
  final url;

  _launchURL(url) async {
    Uri _url = Uri.parse(url);
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {

    var appleAssetsImg = new AssetImage('asset/Apple_Download-removebg-preview.png');
    var appleImage = Image(image: appleAssetsImg, fit: BoxFit.cover, width: 150,);
    var googleAssetsImg = new AssetImage('asset/Google__Download-removebg-preview.png');
    var googleImage = Image(image: googleAssetsImg, fit: BoxFit.cover, width: 150,);

    return Scaffold(
      body: SingleChildScrollView(
        child: StickyHeader(
          header: Container(
            foregroundDecoration: const BoxDecoration(),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.white.withOpacity(0.9),
                    spreadRadius: 5,
                    blurRadius: 40,
                    offset: Offset(0, 3),
                    blurStyle: BlurStyle.normal)
              ],
            ),
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                      "asset/CRI_logo-removebg.png",
                      width: 120,
                      height: 120,
                    ),
                  ),
                  const SizedBox(
                    width: 400,
                  ),
                  Row(
                    children: [

                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //   PageTransition(
                      //     child: const HomePage(),
                      //     type: PageTransitionType.fade,
                      //     duration: Duration(milliseconds: 400),
                      //   ),
                      // );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF9957),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Home",
                        style: GoogleFonts.amiri(
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageTransition(
                          child: const AboutPage(),
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: Text(
                      "About Us",
                      style: GoogleFonts.amiri(
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageTransition(
                          child: const BlogPage(),
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 400),
                        ),
                      );
                    },
                    child: Text(
                      "Blog",
                      style: GoogleFonts.amiri(
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                      ),
                    ),
                  ),
                    ],
                  ),
                  const SizedBox(
                    width: 225,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      children: [
                        InkWell(
                          child: appleImage,
                          onTap: () => _launchURL(
                              'https://apps.apple.com/us/app/safekid-gh/id6450156876'),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        InkWell(
                          child: googleImage,
                          onTap: () => _launchURL(
                              'https://play.google.com/store/apps/details?id=com.cri.safekidGh.safekid_gh'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          content: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                matchTextDirection: true,
                                alignment: Alignment(-0.5, 0.1),
                                image: AssetImage("asset/orange_strokes.png"),
                                fit: BoxFit.fitHeight),
                          ),
                          child: SizedBox(
                            width: 850,
                            child: Text(
                              "An Adult is a Child Who has Survived.",
                              style: GoogleFonts.amiri(
                                  fontSize: 80,
                                  fontStyle: FontStyle.italic,
                                  height: 1,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                              // maxLines: 3,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 800,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment.bottomRight,
                                image: AssetImage("asset/blue_strokes.png"),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                  style: GoogleFonts.amiri(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w100),
                                  textAlign: TextAlign.center,
                                  "Child Rights International(CRI) is dedicated in protecting the inherent dignity of every Child in Ghana by ensuring a safe and nurturing environment for every Child. Through our tireless efforts, we strive to safeguard the rights of children, empowering them to live a life free from exploitation, abuse, and neglect. \n\n"
                                  "Our dedicated team works tirelessly to advocate for the well-being, education, and protection of children, addressing issues such as child labor, child trafficking, and child marriage. Together with our committed partners, we provide support, raise awareness, and promote legislative changes to create a world where every child can thrive, grow, and achieve their full potential."),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          "asset/Map X Children.png",
                          width: 900,
                          height: 700,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              BottomAppBar(
                color: Color(0xFFff9957),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Contact: 0302 503 744",
                            style: GoogleFonts.amiri(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              color: Colors.black,
                              height: 1,
                              width: 200,
                            ),
                          ),
                          Text(
                            "Email: info@crighana.org",
                            style: GoogleFonts.amiri(),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "HSE No. 16",
                                style: GoogleFonts.amiri(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  color: Colors.black,
                                  height: 1,
                                  width: 100,
                                ),
                              ),
                              Text(
                                "Adumua Street, Dzorwulu – Accra",
                                style: GoogleFonts.amiri(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(children: [
                        Text(
                          "Child Rights International © 2023",
                          style: GoogleFonts.amiri(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            color: Colors.black,
                            alignment: Alignment.center,
                            height: 1,
                            width: 200,
                          ),
                        ),
                        Text(
                          "All Rights Reserved.",
                          style: GoogleFonts.amiri(),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
