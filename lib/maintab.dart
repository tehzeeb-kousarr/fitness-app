import 'package:fitness_app/home.dart';
import 'package:fitness_app/tabbutton.dart';
import 'package:flutter/material.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  // ignore: non_constant_identifier_names
  int SelectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget currentTab = const HomeTab();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: pageBucket, child: currentTab),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: InkWell(
            onTap: () {},
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(142, 164, 241, 1.0),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)]),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
            )
            ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, -2))]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Tabbutton(
                  icon: "asset/img/Home (1).png",
                  selectIcon: "asset/img/Home.png",
                  isActive: SelectTab == 0,
                  onTap: () {
                    SelectTab = 0;
                    currentTab = const HomeTab();
                    if (mounted) {
                      setState(() {});
                    }
                  }),
              Tabbutton(
                  icon: "asset/img/Activity.png",
                  selectIcon: "asset/img/Activity (1).png",
                  isActive: SelectTab == 1,
                  onTap: () {
                    SelectTab = 1;
                    if (mounted) {
                      setState(() {});
                    }
                  }),
                  SizedBox(width: 50,),
              Tabbutton(
                  icon: "asset/img/Camera.png",
                  selectIcon: "asset/img/Camera (1).png",
                  isActive: SelectTab == 2,
                  onTap: () {
                    SelectTab = 2;
                    if (mounted) {
                      setState(() {});
                    }
                  }),
              Tabbutton(
                  icon: "asset/img/Profile.png",
                  selectIcon: "asset/img/Profile (1).png",
                  isActive: SelectTab == 3,
                  onTap: () {
                    SelectTab = 3;
                    if (mounted) {
                      setState(() {});
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}