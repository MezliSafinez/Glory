import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _selectedPage = "Home";
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF2C6F9C)),
          ),
          labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFEFF2F9),
        appBar: AppBar(
          backgroundColor: Color(0xFFEFF2F9),
          elevation: 0,
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    'Glory.',
                    style: GoogleFonts.abhayaLibre(
                      fontSize: screenWidth * 0.015,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedPage = "Home";
                      });
                      _pageController.animateToPage(
                        0,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        color: _selectedPage == "Home"
                            ? Color(0xFF2C6F9C)
                            : Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedPage = "Collection";
                      });
                      _pageController.animateToPage(
                        1,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      'Collection',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        color: _selectedPage == "Collection"
                            ? Color(0xFF2C6F9C)
                            : Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedPage = "About";
                      });
                      _pageController.animateToPage(
                        2,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        color: _selectedPage == "About"
                            ? Color(0xFF2C6F9C)
                            : Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _selectedPage = "Contact";
                      });
                      _pageController.animateToPage(
                        3,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                        color: _selectedPage == "Contact"
                            ? Color(0xFF2C6F9C)
                            : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, size: 18),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_rounded, size: 18),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart, size: 18),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                ],
              ),
            ],
          ),
        ),
        body: PageView(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          onPageChanged: (index) {
            setState(() {
              switch (index) {
                case 0:
                  _selectedPage = "Home";
                  break;
                case 1:
                  _selectedPage = "Collection";
                  break;
                case 2:
                  _selectedPage = "About";
                  break;
                case 3:
                  _selectedPage = "Contact";
                  break;
              }
            });
          },
          children: [
            // Home Page
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.1),
                  Center(
                    child: Text(
                      'Furniture That Fits Your',
                      style: TextStyle(fontSize: screenWidth * 0.04),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Life Beautifully',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: const Color(0xFF2C6F9C),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.1),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: screenWidth * 0.04),
                      Expanded(
                        child: Text(
                          'Timeless silhouettes\nreimagined in bold, modern\ntones — furniture that speaks\nyour vibe.',
                          style: TextStyle(fontSize: screenWidth * 0.015),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.45,
                        height: screenHeight * 0.27,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(110),
                          child: Image.asset(
                            'assets/images/Accueil.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '2000+',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.025,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Pieces',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.011,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: screenWidth * 0.02),
                                Column(
                                  children: [
                                    Text(
                                      '11K',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.025,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Customer',
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.011,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.03),
                            Row(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: AssetImage(
                                        'assets/images/profile1.jpeg',
                                      ),
                                    ),
                                    Positioned(
                                      left: 25,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage(
                                          'assets/images/profile2.jpeg',
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 50,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage(
                                          'assets/images/profile3.jpeg',
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 100,
                                      top: screenWidth * 0.01,
                                      child: Text(
                                        'view comments',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.1),
                ],
              ),
            ),
            // Collection Page
            SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.05),
                    Row(
                      children: [
                        SizedBox(width: screenWidth * 0.022),
                        Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: screenWidth * 0.28,
                                  height: screenHeight * 0.22,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE6F0F8),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/Sofa set.png',
                                        width: screenWidth * 0.15,
                                        fit: BoxFit.cover,
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Sofa set',
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.011,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '200 products',
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.011,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.03),
                                Container(
                                  width: screenWidth * 0.28,
                                  height: screenHeight * 0.22,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE6F0F8),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Accessories',
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.011,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '200 products',
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.011,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Image.asset(
                                        'assets/images/Accessories.png',
                                        width: screenWidth * 0.1,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.022),
                        Column(
                          children: [
                            Container(
                              width: screenWidth * 0.25,
                              height: screenHeight * 0.47,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFC8DFEF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Armchair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '200 products',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Spacer(),
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Armchair.png',
                                      width: screenWidth * 0.16,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.022),
                        Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: screenWidth * 0.17,
                                  height: screenHeight * 0.22,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE6F0F8),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'bedroom',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '200 products',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Spacer(),
                                      Center(
                                        child: Image.asset(
                                          'assets/images/bedroom.png',
                                          width: screenWidth * 0.14,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.03),
                                Container(
                                  width: screenWidth * 0.17,
                                  height: screenHeight * 0.22,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE6F0F8),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Sideboard',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '159 products',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Spacer(),
                                      Center(
                                        child: Image.asset(
                                          'assets/images/Sideboard.png',
                                          width: screenWidth * 0.1,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.022),
                        Column(
                          children: [
                            Container(
                              width: screenWidth * 0.18,
                              height: screenHeight * 0.47,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFE6F0F8),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Lightnings.png',
                                      width: screenWidth * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Lightnings',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '456 products',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.18),
                    Row(
                      children: [
                        SizedBox(width: screenWidth * 0.04),
                        Transform.rotate(
                          angle: -3.14159 / 2,
                          child: Text(
                            'Featured',
                            style: TextStyle(
                              fontSize: screenWidth * 0.016,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.18,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Windsor chair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '145.67\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -screenHeight * 0.12,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/Windsor Chair.png',
                                  width: screenWidth * 0.14,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.18,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Bentwood chair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '295.70\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -screenHeight * 0.12,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/Bentwood.png',
                                  width: screenWidth * 0.15,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: screenWidth * 0.04),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.18,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Papasan Chair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '172.67\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -screenHeight * 0.14,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Image.asset(
                                  'assets/images/Papasan Chair.png',
                                  width: screenWidth * 0.15,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(width: screenWidth * 0.04),
                        SizedBox(
                          width: screenWidth * 0.04,
                          height: screenWidth * 0.04,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(0),
                              backgroundColor: Colors.black,
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.08),
                    Text(
                      '         Latest products',
                      style: TextStyle(
                        fontSize: screenWidth * 0.016,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Row(
                      children: [
                        SizedBox(width: screenWidth * 0.04),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.18,
                              height: screenHeight * 0.4,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Armchair.png',
                                      width: screenWidth * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Text(
                                    'Armchair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '145.70\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Add to Card',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.shopping_cart_outlined),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: -18,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2C6F9C),

                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  iconSize: 24,
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.06),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.18,
                              height: screenHeight * 0.4,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Armchair.png',
                                      width: screenWidth * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Text(
                                    'Armchair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '145.70\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Add to Card',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.shopping_cart_outlined),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: -18,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2C6F9C),

                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  iconSize: 24,
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.06),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.18,
                              height: screenHeight * 0.4,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Armchair.png',
                                      width: screenWidth * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Text(
                                    'Armchair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '145.70\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Add to Card',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.shopping_cart_outlined),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: -18,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2C6F9C),

                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  iconSize: 24,
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.06),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.18,
                              height: screenHeight * 0.4,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Armchair.png',
                                      width: screenWidth * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Text(
                                    'Armchair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '145.70\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Add to Card',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.shopping_cart_outlined),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: -18,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2C6F9C),

                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  iconSize: 24,
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.04),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Row(
                      children: [
                        SizedBox(width: screenWidth * 0.04),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.18,
                              height: screenHeight * 0.4,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Armchair.png',
                                      width: screenWidth * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Text(
                                    'Armchair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '145.70\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Add to Card',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.shopping_cart_outlined),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: -18,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2C6F9C),

                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  iconSize: 24,
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.06),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.18,
                              height: screenHeight * 0.4,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Armchair.png',
                                      width: screenWidth * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Text(
                                    'Armchair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '145.70\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Add to Card',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.shopping_cart_outlined),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: -18,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2C6F9C),

                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  iconSize: 24,
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.06),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.18,
                              height: screenHeight * 0.4,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Armchair.png',
                                      width: screenWidth * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Text(
                                    'Armchair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '145.70\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Add to Card',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.shopping_cart_outlined),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: -18,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2C6F9C),

                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  iconSize: 24,
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.06),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: screenWidth * 0.18,
                              height: screenHeight * 0.4,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/Armchair.png',
                                      width: screenWidth * 0.12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Text(
                                    'Armchair',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    '145.70\$',
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.011,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Add to Card',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.011,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(Icons.shopping_cart_outlined),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: -18,
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF2C6F9C),

                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  iconSize: 24,
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: screenWidth * 0.04),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                  ],
                ),
              ),
            ),
            // About Page
            SingleChildScrollView(
              child: Row(
                children: [
                  SizedBox(width: screenWidth * 0.04),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.05),
                      Text(
                        'About',
                        style: TextStyle(
                          fontSize: screenWidth * 0.1,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text('Us', style: TextStyle(fontSize: screenWidth * 0.1)),
                      SizedBox(height: screenHeight * 0.05),
                      Text(
                        'At Glory, we believe that furniture is more\nthan just function — it’s an expression of\nyour identity, a reflection of your lifestyle,\nand the soul of your space. ',
                        style: TextStyle(
                          fontSize: screenWidth * 0.015,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.04),
                    ],
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.1),
                      Row(
                        children: [
                          SizedBox(width: screenWidth * 0.02),
                          Text(
                            'Our mission is to craft timeless pieces that blend\nbeauty, comfort, and practicality, bringing warmth\nand personality to every corner of your Home.',
                            style: TextStyle(
                              fontSize: screenWidth * 0.015,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      SizedBox(
                        width: screenWidth * 0.45,
                        height: screenHeight * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            'assets/images/About.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      Row(
                        children: [
                          SizedBox(width: screenWidth * 0.02),
                          Column(
                            children: [
                              Text(
                                '2000+',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.025,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Handcrafted pieces\ndelivered with care',
                                style: TextStyle(fontSize: screenWidth * 0.013),
                              ),
                            ],
                          ),
                          SizedBox(width: screenWidth * 0.05),
                          Column(
                            children: [
                              Text(
                                '11K',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.025,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Satisfied clients\nacross the region',
                                style: TextStyle(fontSize: screenWidth * 0.013),
                              ),
                            ],
                          ),
                          SizedBox(width: screenWidth * 0.05),
                          Column(
                            children: [
                              Text(
                                '98%',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.025,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Satisfaction\nrate',
                                style: TextStyle(fontSize: screenWidth * 0.013),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Contact Page
            SingleChildScrollView(
              child: Row(
                children: [
                  SizedBox(width: screenWidth * 0.04),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.05),
                      Text(
                        'Contact',
                        style: TextStyle(
                          fontSize: screenWidth * 0.1,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        'Us',
                        style: TextStyle(
                          fontSize: screenWidth * 0.1,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      Text(
                        'Feel free to drop us an email anytime,\nwe’d love to hear your thoughts.',
                        style: TextStyle(
                          fontSize: screenWidth * 0.015,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.04),
                    ],
                  ),
                  SizedBox(width: screenWidth * 0.08),
                  Expanded(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight * 0.25),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Full name',
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Email',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.04),
                        TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Message subject',
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.04),
                        TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Message',
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.06),
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                Color(0xFF2C6F9C),
                              ),
                            ),
                            child: Text(
                              'Send',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.05),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
