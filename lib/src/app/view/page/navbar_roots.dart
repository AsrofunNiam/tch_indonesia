import 'package:flutter/material.dart';
import 'package:tch_indonesia/src/app/view/page/home/home_page.dart';
import 'package:tch_indonesia/src/app/view/page/schedule/schedule_page.dart';
import 'package:tch_indonesia/src/app/view/page/setting/setting_page.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots._();

  static Route<bool?> prepare() {
    return MaterialPageRoute(builder: (context) {
      return NavBarRoots._();
      // return MultiBlocProvider(
      //   providers: const [
      //     // BlocProvider(
      //     //   create: (context) =>
      //     //       RestaurantsQueryBloc()..add(const RestaurantsQueryEvent.get()),
      //     // ),
      //     // BlocProvider(
      //     //   create: (context) => SaveTokenBloc(),
      //     // )
      //   ],
      //   child: NavBarRoots._(user: user),
      // );
    });
  }

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screens = [
      HomePage(),
      const SettingPage(),
      const SchedulePage(),
      const SettingPage(),
      // SettingPage(user: widget.user),
      // const SchedulePage(),
      // SettingPage(user: widget.user),
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(235, 85, 94, 218),
            unselectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            onTap: (value) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return screens[value];
              }));
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline), label: 'Message'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month), label: 'Schedule'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Setting'),
            ]),
      ),
    );
  }
}
