import 'package:flutter/material.dart';
import '/tests/home_page_new.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  List<double> _iconScales = [1.5, 1.0, 1.0];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _iconScales = [1.0, 1.0, 1.0];
      _iconScales[index] = 1.5; // set the selected icon scale to 1.5
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414.0024414062;
    double fem = MediaQuery.of(context).size.width /
        baseWidth; // fetch phone screen size
    double ffem = fem * 0.97;
    return Container(
      // add shadow after
      height: 880, // or any specific height you want
      width: 880, // or any specific width you want
      child: Scaffold(
        //body: Home_page_new(),
        //Home_page(), // execute the page behind the nav bar which is maps
        extendBody: true,
        bottomNavigationBar: SizedBox(
          height: 160,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white, // nav bar color
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Transform.scale(
                    scale: _iconScales[
                        0], // set the scale value based on the selected state
                    child: Image.asset(
                      _selectedIndex == 0
                          ? 'assets/page-1/images/location_selected.png'
                          : 'assets/page-1/images/location_not_selected.png',
                      width: 38,
                      height: 38,
                    ),
                  ),
                  label: '', // remove the label
                ),
                BottomNavigationBarItem(
                  icon: Transform.scale(
                    scale: _iconScales[
                        1], // set the scale value based on the selected state
                    child: Image.asset(
                      _selectedIndex == 1
                          ? 'assets/page-1/images/lock_selected.png'
                          : 'assets/page-1/images/unlock_not_selected.png',
                      width: 38,
                      height: 38,
                    ),
                  ),
                  label: '', // remove the label
                ),
                BottomNavigationBarItem(
                  icon: Transform.scale(
                    scale: _iconScales[
                        2], // set the scale value based on the selected state
                    child: Image.asset(
                      _selectedIndex == 2
                          ? 'assets/page-1/images/toolkit_selected.png'
                          : 'assets/page-1/images/toolkit_not_slected.png',
                      width: 38,
                      height: 38,
                    ),
                  ),
                  label: '', // remove the label
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              // onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
