import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:taxi_app/widgets/accounts.dart';
import 'package:taxi_app/widgets/details.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: const Color(0xffFECC2A),
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button location to left

      bottomNavigationBar: SizedBox(
        height: 71,
        child: BottomAppBar(
          elevation: 0,
          color: const Color(0xffF5F5F5),
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34.28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.local_taxi_outlined,
                        color: Color(0xff9EA1B0),
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Color(0xff9EA1B0),
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.sms_outlined,
                        color: Color(0xff9EA1B0),
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.person_outline,
                        color: Colors.grey,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 39.43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 57.47,
            ),
            Center(
              child: SizedBox(
                height: 73,
                width: 74,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/avt.png"),
                    ),
                    Positioned(
                        bottom: 35,
                        right: -20,
                        child: IconButton(
                          iconSize: 30,
                          icon: const Icon(
                            Icons.add_circle,
                            color: Color(0xffFECC2A),
                          ),
                          onPressed: () {},
                        )),
                  ],
                ),
              ),
            ),
            const Center(
              child: Text(
                'Patrick John',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            const Center(
              child: Text(
                'New User',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff757575)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.53, bottom: 35.47),
                child: FlutterToggleTab(
                  isShadowEnable: true,
                  selectedIndex: _selectedIndex,
                  width: 80,
                  borderRadius: 16,
                  height: 46,
                  selectedBackgroundColors: const [Color(0xffFECC2A)],
                  selectedTextStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  unSelectedTextStyle:
                      const TextStyle(color: Color(0xff757575)),
                  labels: const ['Details', 'Account'],
                  selectedLabelIndex: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    child: _selectedIndex == 0 ? DetailsTab() : AccountsTab()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
