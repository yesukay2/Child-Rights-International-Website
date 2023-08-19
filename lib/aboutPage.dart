import 'package:criweb/blogPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:url_launcher/url_launcher.dart';

import 'homePage.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key, this.url});


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
                    offset: const Offset(0, 3),
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
                          Navigator.of(context).push(
                            PageTransition(
                              child: const HomePage(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 400),
                            ),
                          );
                        },
                        child: Text(
                          "Home",
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
                              child: const AboutPage(),
                              type: PageTransitionType.fade,
                              duration: Duration(milliseconds: 400),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFFFF9957),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "About Us",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, bottom: 15.0, top: 20),
                        child: Image.asset(
                          "asset/Bright-Appiah 1.png",
                          height: 450,
                          width: 450,
                        ),
                      ),
                      Text(
                        "Bright Kweku Appiah",
                        style: GoogleFonts.amiri(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "Executive Director",
                        style: GoogleFonts.amiri(
                            fontSize: 20, fontStyle: FontStyle.italic),
                      ),
                      // const SizedBox(height: 200,),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0, top: 130),
                        child: SizedBox(
                          width: 300,
                          child: Text(
                            'The Greatest Gift to Every Child is a Gift of “Myself”',
                            softWrap: true,
                            style: GoogleFonts.amiri(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Text(
                          "~Bright K. Appiah",
                          style: GoogleFonts.amiri(),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 25.0, left: 40),
                              child: Text(
                                "Our Mission",
                                style: GoogleFonts.amiri(
                                  decoration: TextDecoration.underline,
                                  fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 100.0),
                              child: SizedBox(
                                width: 600,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          alignment: Alignment(2, 0),
                                          image: AssetImage(
                                              "asset/orange_strokes.png"),
                                          opacity: 0.6)),
                                  child: Text(
                                    "To protect and uphold the rights of every child, ensuring their safety, well-being, "
                                    "and opportunity for a promising future. Through our relentless advocacy, support, "
                                    "and collaboration with stakeholders, we strive to eradicate child exploitation, abuse, and neglect. "
                                    "We are dedicated to creating an inclusive and nurturing environment where children can grow, learn, "
                                    "and thrive, irrespective of their background or circumstances. "
                                    "By championing their rights and providing holistic interventions, we aim to empower children "
                                    "to become active contributors to society, shaping a world that values and protects their inherent dignity.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.amiri(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 22),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 35.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 70.0, bottom: 25),
                                    child: Text(
                                      "Our Vision",
                                      style: GoogleFonts.amiri(
                                          decoration: TextDecoration.underline,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 25),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 650,
                                    child: Container(
                                      height: 350,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "asset/blue_strokes_rotated.png"),
                                            alignment: Alignment(-1.5, 0.5)),
                                      ),
                                      child: Text(
                                        "Our vision is a world where the rights of every child are respected, protected, and fulfilled. "
                                        "We envision a society that prioritises the well-being and development of children, "
                                        "ensuring their safety, education, and access to essential services. "
                                        "We aspire to be a catalyst for positive change, driving systemic transformation "
                                        "and creating lasting impact in the lives of children. Through collaboration, "
                                        "awareness-raising, and advocacy, we aim to build a global movement that champions "
                                        "children's rights and holds accountable those responsible for their welfare. "
                                        "Together, we can create a future where every child can live in a nurturing and "
                                        "supportive environment, enabling them to reach their full potential and shape a better tomorrow.",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.amiri(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 22),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 150.0, bottom: 25, top: 0),
                    child: Text(
                      "Partners",
                      style: GoogleFonts.amiri(
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, bottom: 100),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 600,
                          child: Text(
                            "Our network of dedicated partners, including organizations, "
                            "government agencies, educational institutions, and community-based groups, "
                            "collaborate with us to protect and empower children. Together, "
                            "we advocate for policy changes, implement impactful programs, and create lasting change. "
                            "Our partners play a vital role in amplifying our impact, "
                            "ensuring the well-being and empowerment of every child. "
                            "Their unwavering dedication and collaboration are key to building a brighter "
                            "and more equitable future for generations to come.",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            maxLines: 10,
                            style: GoogleFonts.amiri(
                              fontStyle: FontStyle.italic,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 100.0, left: 100, right: 10, bottom: 70),
                          child: Image.asset("asset/Ghana-new-regions 1.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            "Connect With Us On Social Media:",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.amiri(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: Image.asset(
                                "asset/pngwing.com.png",
                                width: 65,
                              ),
                              onTap: () => _launchURL(
                                  'https://www.facebook.com/childrightsinternational'),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              child: Image.asset(
                                "asset/instagram.png",
                                width: 70,
                              ),
                              onTap: () => _launchURL(
                                  'https://www.instagram.com/crighana/?hl=en'),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              child: Image.asset(
                                "asset/New-Twitter-Logo.png",
                                width: 70,
                              ),
                              onTap: () =>
                                  _launchURL('https://twitter.com/crighana'),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            InkWell(
                              child: Image.asset(
                                "asset/tik tok.png",
                                width: 65,
                              ),
                              onTap: () => _launchURL(
                                  'https://www.tiktok.com/@crighana'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  width: 200,
                                  child: Image.asset(
                                      "asset/cocoa_mondelez_logo.png")),
                              SizedBox(
                                  width: 250,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 35.0),
                                    child: Image.asset("asset/BB_Logo.png"),
                                  )),
                              SizedBox(
                                width: 200,
                                child: Image.asset(
                                  "asset/sucden_logo.png",
                                  width: 200,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  // width: 200,
                                  child: Padding(
                                padding: const EdgeInsets.only(
                                  right: 35.0,
                                ),
                                child: Image.asset("asset/touton_logo.png"),
                              )),
                              SizedBox(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Image.asset(
                                  "asset/yes-ghana.png",
                                  width: 200,
                                ),
                              )),
                              SizedBox(
                                  // width: 180,
                                  // height: 150,
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: Image.asset(
                                  "asset/care-international 1.png",
                                  width: 100,
                                ),
                              )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "asset/blue_strokes.png",
                                      ),
                                      alignment: Alignment(1, 3))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 70.0, bottom: 25),
                                    child: Text(
                                      "Our Reach",
                                      style: GoogleFonts.amiri(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 25,
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 600,
                                    child: Text(
                                      "We have a broad reach that extends to every community in every region of Ghana. "
                                      "From urban centers to remote villages, we are committed to serving and protecting children "
                                      "in all areas. By collaborating with local stakeholders and grassroots organizations, "
                                      "we address the unique needs of each community. Our comprehensive approach ensures that "
                                      "every child has access to the support, resources, and opportunities they need to thrive. "
                                      "We believe that every child, regardless of their location, deserves a bright future.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.amiri(
                                          fontSize: 22,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Opacity(
                                opacity: 0.7,
                                child: Image.asset(
                                  "asset/CRI_logo-removebg.png",
                                  width: 365,
                                  height: 300,
                                ),
                              ),
                              Text(
                                "An Adult is a Child who has Survived.",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 20,
                                  color: Color(0xFF363376),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0, top: 50),
                          child: Text(
                            "Download our Safekid Gh App:",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.amiri(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: appleImage,
                              onTap: () => _launchURL(
                                  'https://apps.apple.com/us/app/safekid-gh/id6450156876'),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              child: googleImage,
                              onTap: () => _launchURL(
                                  'https://play.google.com/store/apps/details?id=com.cri.safekidGh.safekid_gh'),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
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
                          // TextButton.icon(onPressed: (){}, icon: Icon(Icons.location_on_outlined), label: Text(""),style: ButtonStyle(iconSize: MaterialStateProperty.all(25),foregroundColor:MaterialStateProperty.all(Colors.black)),),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Address:",
                                    style: GoogleFonts.amiri(),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "House No. 16",
                                    style: GoogleFonts.amiri(),
                                  ),
                                ],
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
