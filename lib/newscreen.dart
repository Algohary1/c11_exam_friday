import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Newscreen extends StatelessWidget {
   Newscreen({super.key});
static const String routeName='NewScreen';
final _controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.only(left: 32,top: 32,right: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Frame 5.png'),
            SizedBox(height: 20,),
            
            Row(
              children: [
                Text('Hello, ', style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 20
                ),),
                Text('Sara Rose', style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('How are you feeling today?',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/Frame 19.png'),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Feature", style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),),
                Text("See more >", style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  color: Color(0xFF027A48),
                ),)
              ],
            ),
            CarouselSlider(
              items: [
                PageView(
                  controller: _controller,
                  children: [
                    Image.asset('assets/images/Frame 24.png'),
                    Image.asset('assets/images/Frame 24.png'),
                    Image.asset('assets/images/Frame 24.png'),
                  ],
                )
              ],
              options: CarouselOptions(
                autoPlay: false,
              ),
            ),
            SmoothPageIndicator(controller: _controller, count: 3,
            effect: SwapEffect(
              activeDotColor: Colors.grey,
              dotColor: Colors.grey,
              dotHeight: 6,
              dotWidth: 6,
            ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Exercise',style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),),
                Text('See more >',style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  color: Color(0xFF027A48),
                ),),

              ],
            ),
            SizedBox(
              height: 16,
            ),
            Image.asset('assets/images/Frame 33.png'),
            SizedBox(
              height: 16,
            ),
            Image.asset('assets/images/Frame 34.png'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: ''),
      ],
        selectedItemColor: Color(0xFF027A48),
        unselectedItemColor: Color(0xFF667085),
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
