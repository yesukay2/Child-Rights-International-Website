import 'package:carousel_slider/carousel_slider.dart';
import 'package:criweb/pdfWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class blogWidget extends StatefulWidget {
  final previewText;
  final fullText;
  final date;
  final article;
  final carouselImg1;
  final carouselImg2;
  final carouselImg3;
  final carouselImg4;
  final carouselImg5;

  blogWidget({
    super.key,
    required this.previewText,
    required this.fullText,
    required this.date,
    required this.article,
    required this.carouselImg1,
    required this.carouselImg2,
    required this.carouselImg3,
    required this.carouselImg4,
    required this.carouselImg5,
  });

  @override
  State<blogWidget> createState() => _blogWidgetState();
}

class _blogWidgetState extends State<blogWidget> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Page
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    CarouselSlider(
                      items: [
                        Image.asset(
                          widget.carouselImg1,
                          width: 800,
                          height: 400,
                        ),
                        Image.asset(
                          widget.carouselImg2,
                          width: 800,
                          height: 400,
                        ),
                        Image.asset(
                          widget.carouselImg3,
                          width: 800,
                          height: 400,
                        ),
                        Image.asset(
                          widget.carouselImg4,
                          width: 800,
                          height: 400,
                        ),
                        Image.asset(
                          widget.carouselImg5,
                          width: 800,
                          height: 400,
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        padEnds: true,
                        enableInfiniteScroll: true,
                        enlargeFactor: 0.5,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration: const Duration(seconds: 1),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            widget.date,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.amiri(
                                fontSize: 18,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      //preview text
                      child: !_isExpanded
                          ? SizedBox(
                              height: 340,
                              //preview article
                              child: Text(
                                widget.previewText,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  fontSize: 22,
                                ),
                              ),
                            )
                          : SizedBox(
                              height: 340,
                              child: SingleChildScrollView(
                                //full article
                                child: Column(
                                  children: [
                                    Text(
                                      widget.fullText,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.amiri(
                                        fontSize: 22,
                                      ),
                                    ),
                                    GestureDetector(
                                        child: const Text("Press Release"),
                                        onTap: () => Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) => pdfWidget(
                                                    pdfLink: widget.article,
                                                    context: context),
                                              ),
                                            )),
                                    // GestureDetector(
                                    //     child: const Text("Click here for Original Press Release"),
                                    //     onTap: () {
                                    //       Navigator.of(context).push(
                                    //         MaterialPageRoute(
                                    //           builder: (context) =>
                                    //         ),
                                    //       );
                                    //     }),

                                    // const PdfPage(pdfLink: 'asset/pdf/ALIGNING-ANY-COST-OF-FREE-SHS-WILL-MAKE-IT-A-FAILED-POLICY_CRI.pdf',),
                                  ],
                                ),
                              ),
                            ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0, top: 20),
                          child: ElevatedButton(
                            onPressed: _toggleExpand,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.deepOrange,
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            child: Text(
                              _isExpanded ? "Preview" : "Read More",
                              style: GoogleFonts.amiri(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Divider(
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
