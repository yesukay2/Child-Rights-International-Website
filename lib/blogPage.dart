import 'package:criweb/homePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sizer/sizer.dart';
import 'aboutPage.dart';
import 'blogWidget.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  late final url;
  bool mobile = false;

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
    mobile = MediaQuery.of(context).size.width > 768 ? false : true;

    var appleAssetsImg =
        new AssetImage('asset/Apple_Download-removebg-preview.png');
    var appleImage = Image(
      image: appleAssetsImg,
      fit: BoxFit.cover,
      width: 10.w,
    );
    var googleAssetsImg =
        new AssetImage('asset/Google__Download-removebg-preview.png');
    var googleImage = Image(
      image: googleAssetsImg,
      fit: BoxFit.cover,
      width: 10.w,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: StickyHeader(
          header: Expanded(
            child: Container(
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
                        width: 12.w,
                        height: 12.w,
                      ),
                    ),
                     Expanded(
                      child: SizedBox(
                        width: 40.w,
                      ),
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
                              fontSize: 6.sp,
                            ),
                          ),
                        ),
                         SizedBox(
                          width: 4.w,
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
                              fontSize: 6.sp,
                            ),
                          ),
                        ),
                         SizedBox(
                          width: 4.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(
                            //   PageTransition(
                            //     child: const BlogPage(),
                            //     type: PageTransitionType.fade,
                            //     duration: Duration(milliseconds: 400),
                            //   ),
                            // );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 6.w,
                            height: 3.w,
                            decoration: BoxDecoration(
                                color: Color(0xFFFF9957),
                                borderRadius: BorderRadius.circular(2.sp)),
                            child: Text(
                              "Blog",
                              style: GoogleFonts.amiri(
                                fontWeight: FontWeight.w500,
                                fontSize: 6.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        width: 20.w,
                      ),
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
                           SizedBox(
                            width: 4.w,
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
          ),
          content: LayoutBuilder(builder: (context, constraints) {
            return Column(
              children: [
                const Divider(
                  height: 2,
                ),
                blogWidget(
                  carouselImg1: "asset/tricycle.png",
                  carouselImg2: "asset/tricycle.png",
                  carouselImg3: "asset/tricycle.png",
                  carouselImg4: "asset/tricycle.png",
                  carouselImg5: "asset/tricycle.png",
                  previewText:
                      "Child Rights International, Ghana (CRI) will on Thursday, 23rd March, 2023 "
                      "launch its latest project known as the “Mobility Project for School Children” "
                      "in Nwamase, a cocoa growing community in the West Akim Municipality.The Mobility "
                      "Project is aimed at providing tricycles to school going children in cocoa growing "
                      "communities without schools as a means of transportation to and from school to "
                      "access education.When fully implemented, the project will provide a means of "
                      "transportation to thousands of children thereby increasing access to education "
                      "and school retention rates.",
                  fullText:
                      "Child Rights International, Ghana (CRI) will on Thursday, 23rd March, "
                      "2023 launch its latest project known as the “Mobility Project for School "
                      "Children” in Nwamase, a cocoa growing community in the West Akim Municipality. "
                      "The Mobility Project is aimed at providing tricycles to school going children in "
                      "cocoa growing communities without schools as a means of transportation to and from "
                      "school to access education. When fully implemented, the project will provide a means "
                      "of transportation to thousands of children thereby increasing access to education and "
                      "school retention rates.The project is expected to help improve punctuality, "
                      "increase contact hours in school, and help stimulate excitement for students to"
                      " enroll or re-enroll in schools.The tricycles will also enable nursing mothers and "
                      "pregnant women access healthcare facilities in a timely manner thus reducing infant-maternal "
                      "mortality rates. While achieving all these objectives, the project will provide a means of "
                      "livelihood to operators and caretakers.To ensure that the project is sustainable, "
                      "a set of guidelines and protocols have been developed to guide Mobility Management "
                      "Committees established in the beneficiary communities to implement the project effectively "
                      "and efficiently.The ‘Mobility Project for School Children’ will be piloted in six cocoa "
                      "growing communities across three regions of the country namely New Apaso and Tetekaaso in the "
                      "Sekyere East District of the Ashanti Region; Kofi Whettey and Mensahkwaa in the Awutu Senya "
                      "District of the Central Region; and Nwamase and Bonkuku in the West Akim Municipality in the "
                      "Eastern Region.The ‘Mobility Project for School Children’ is a collaboration between Child "
                      "Rights International and Mondelēz World Travel Retail, Cocoa life program. "
                      "It is expected to scale up to other needy communities to enhance mobility for school "
                      "going children most especially and the community at large.",
                  date: "12/08/2023",
                  article:
                      "asset/pdf/ALIGNING-ANY-COST-OF-FREE-SHS-WILL-MAKE-IT-A-FAILED-POLICY_CRI.pdf",
                ),
                blogWidget(
                  carouselImg1: "asset/tricycle.png",
                  carouselImg2: "asset/tricycle.png",
                  carouselImg3: "asset/tricycle.png",
                  carouselImg4: "asset/tricycle.png",
                  carouselImg5: "asset/tricycle.png",
                  previewText:
                      "Child Rights International, Ghana (CRI) will on Thursday, 23rd March, 2023 "
                      "launch its latest project known as the “Mobility Project for School Children” "
                      "in Nwamase, a cocoa growing community in the West Akim Municipality.The Mobility "
                      "Project is aimed at providing tricycles to school going children in cocoa growing "
                      "communities without schools as a means of transportation to and from school to "
                      "access education.When fully implemented, the project will provide a means of "
                      "transportation to thousands of children thereby increasing access to education "
                      "and school retention rates.",
                  fullText:
                      "Child Rights International, Ghana (CRI) will on Thursday, 23rd March, "
                      "2023 launch its latest project known as the “Mobility Project for School "
                      "Children” in Nwamase, a cocoa growing community in the West Akim Municipality."
                      "The Mobility Project is aimed at providing tricycles to school going children in "
                      "cocoa growing communities without schools as a means of transportation to and from "
                      "school to access education.When fully implemented, the project will provide a means "
                      "of transportation to thousands of children thereby increasing access to education and "
                      "school retention rates.The project is expected to help improve punctuality, "
                      "increase contact hours in school, and help stimulate excitement for students to"
                      " enroll or re-enroll in schools.The tricycles will also enable nursing mothers and "
                      "pregnant women access healthcare facilities in a timely manner thus reducing infant-maternal "
                      "mortality rates. While achieving all these objectives, the project will provide a means of "
                      "livelihood to operators and caretakers.To ensure that the project is sustainable, "
                      "a set of guidelines and protocols have been developed to guide Mobility Management "
                      "Committees established in the beneficiary communities to implement the project effectively "
                      "and efficiently.The ‘Mobility Project for School Children’ will be piloted in six cocoa "
                      "growing communities across three regions of the country namely New Apaso and Tetekaaso in the "
                      "Sekyere East District of the Ashanti Region; Kofi Whettey and Mensahkwaa in the Awutu Senya "
                      "District of the Central Region; and Nwamase and Bonkuku in the West Akim Municipality in the "
                      "Eastern Region.The ‘Mobility Project for School Children’ is a collaboration between Child "
                      "Rights International and Mondelēz World Travel Retail, Cocoa life program. "
                      "It is expected to scale up to other needy communities to enhance mobility for school "
                      "going children most especially and the community at large.",
                  date: "13/08/2023",
                  article:
                      "asset/pdf/ALIGNING-ANY-COST-OF-FREE-SHS-WILL-MAKE-IT-A-FAILED-POLICY_CRI.pdf",
                ),
                blogWidget(
                  carouselImg1: "asset/tricycle.png",
                  carouselImg2: "asset/tricycle.png",
                  carouselImg3: "asset/tricycle.png",
                  carouselImg4: "asset/tricycle.png",
                  carouselImg5: "asset/tricycle.png",
                  previewText:
                      "Child Rights International, Ghana(CRI) will on Thursday, 23rd March, 2023 "
                      "launch its latest project known as the “Mobility Project for School Children” "
                      "in Nwamase, a cocoa growing community in the West Akim Municipality.The Mobility "
                      "Project is aimed at providing tricycles to school going children in cocoa growing "
                      "communities without schools as a means of transportation to and from school to "
                      "access education.When fully implemented, the project will provide a means of "
                      "transportation to thousands of children thereby increasing access to education "
                      "and school retention rates.",
                  fullText:
                      "Child Rights International, Ghana (CRI) will on Thursday, 23rd March, "
                      "2023 launch its latest project known as the “Mobility Project for School "
                      "Children” in Nwamase, a cocoa growing community in the West Akim Municipality."
                      "The Mobility Project is aimed at providing tricycles to school going children in "
                      "cocoa growing communities without schools as a means of transportation to and from "
                      "school to access education.When fully implemented, the project will provide a means "
                      "of transportation to thousands of children thereby increasing access to education and "
                      "school retention rates.The project is expected to help improve punctuality, "
                      "increase contact hours in school, and help stimulate excitement for students to"
                      " enroll or re-enroll in schools.The tricycles will also enable nursing mothers and "
                      "pregnant women access healthcare facilities in a timely manner thus reducing infant-maternal "
                      "mortality rates. While achieving all these objectives, the project will provide a means of "
                      "livelihood to operators and caretakers.To ensure that the project is sustainable, "
                      "a set of guidelines and protocols have been developed to guide Mobility Management "
                      "Committees established in the beneficiary communities to implement the project effectively "
                      "and efficiently.The ‘Mobility Project for School Children’ will be piloted in six cocoa "
                      "growing communities across three regions of the country namely New Apaso and Tetekaaso in the "
                      "Sekyere East District of the Ashanti Region; Kofi Whettey and Mensahkwaa in the Awutu Senya "
                      "District of the Central Region; and Nwamase and Bonkuku in the West Akim Municipality in the "
                      "Eastern Region.The ‘Mobility Project for School Children’ is a collaboration between Child "
                      "Rights International and Mondelēz World Travel Retail, Cocoa life program. "
                      "It is expected to scale up to other needy communities to enhance mobility for school "
                      "going children most especially and the community at large.",
                  date: "13/08/2023",
                  article:
                      "asset/pdf/ALIGNING-ANY-COST-OF-FREE-SHS-WILL-MAKE-IT-A-FAILED-POLICY_CRI.pdf",
                ),
                BottomAppBar(
                  height: 95,
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
                              style: GoogleFonts.amiri(fontSize: mobile?2.w:15),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                color: Colors.black,
                                height: 0.07.h,
                                width: 20.w,
                              ),
                            ),
                            Text(
                              "Email: info@crighana.org",
                              style: GoogleFonts.amiri(fontSize: mobile?2.w:15),
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
                                      style: GoogleFonts.amiri(fontSize: mobile?2.w:15),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "House No. 16",
                                      style: GoogleFonts.amiri(fontSize: mobile?2.w:15),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    color: Colors.black,
                                    height: 0.07.h,
                                    width: 20.w,
                                  ),
                                ),
                                Text(
                                  "Adumua Street, Dzorwulu – Accra",
                                  style: GoogleFonts.amiri(fontSize: mobile?2.w:15),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(children: [
                          Text(
                            "Child Rights International © 2023",
                            style: GoogleFonts.amiri(fontSize: mobile?2.w:15),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              color: Colors.black,
                              alignment: Alignment.center,
                              height: 0.07.h,
                              width: 20.w,
                            ),
                          ),
                          Text(
                            "All Rights Reserved.",
                            style: GoogleFonts.amiri(fontSize: mobile?2.w:15),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
