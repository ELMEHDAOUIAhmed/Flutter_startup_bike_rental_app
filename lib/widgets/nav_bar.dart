import 'package:flutter/material.dart';
import '/helpers/globals.dart' as globals;

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  List<double> _iconScales = [1.5, 1.0, 1.0];

  void _onItemTapped(int index) {
    setState(() {
      //_selectedIndex = index;
      globals.globalIndex=index;
      _iconScales = [1.0, 1.0, 1.0];
      _iconScales[index] = 1.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: SizedBox(
        height: 160,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Transform.scale(
                  scale: _iconScales[0],
                  child: Image.asset(
                    globals.globalIndex == 0
                        ? 'assets/page-1/images/location_selected.png'
                        : 'assets/page-1/images/location_not_selected.png',
                    width: 38,
                    height: 38,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Transform.scale(
                  scale: _iconScales[1],
                  child: Image.asset(
                    globals.globalIndex == 1
                        ? 'assets/page-1/images/lock_selected.png'
                        : 'assets/page-1/images/unlock_not_selected.png',
                    width: 38,
                    height: 38,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Transform.scale(
                  scale: _iconScales[2],
                  child: Image.asset(
                    globals.globalIndex == 2
                        ? 'assets/page-1/images/toolkit_selected.png'
                        : 'assets/page-1/images/toolkit_not_slected.png',
                    width: 38,
                    height: 38,
                  ),
                ),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
