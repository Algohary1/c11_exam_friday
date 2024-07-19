import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/Homepage.png'),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, top: 40, bottom: 16),
                    child: Text('Categories',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, right: 20, bottom: 16),
                    child: Text(
                      'See more',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF4838D1),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: ChoiceChip(
                        label: Text(
                          'Art',
                          style: GoogleFonts.poppins(fontSize: 13),
                        ),
                        selected: false),
                  ),
                  ChoiceChip(
                      label: Text(
                        'Business',
                        style: GoogleFonts.poppins(fontSize: 13),
                      ),
                      selected: false),
                  ChoiceChip(
                      label: Text(
                        'Comedy',
                        style: GoogleFonts.poppins(fontSize: 13),
                      ),
                      selected: false),
                  ChoiceChip(
                      label: Text(
                        'Drama',
                        style: GoogleFonts.poppins(fontSize: 13),
                      ),
                      selected: false),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Recommended for you',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Text(
                        'See more',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF4838D1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CarouselSlider(
                items: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset('assets/images/bg1.png'),
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Best Seller',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    'See more',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF4838D1)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Image.asset('assets/images/bg3.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text(
                          'Light Mage',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text('Laurie Forest'),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_add),
          label: 'Library',
        )
      ]),
    );
  }
}
