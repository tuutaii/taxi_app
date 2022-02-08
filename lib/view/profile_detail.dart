import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Center(
              child: Text(
                'New User',
                style: TextStyle(color: Color(0xff757575)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.53, bottom: 35.47),
                child: FlutterToggleTab(
                  width: 80,
                  borderRadius: 16,
                  height: 46,
                  selectedBackgroundColors: const [Color(0xffFECC2A)],
                  selectedTextStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  unSelectedTextStyle: const TextStyle(
                    color: Color(0xff757575),
                  ),
                  labels: ['Details', 'Account'],
                  selectedLabelIndex: (index) {
                    print("Selected Index $index");
                  },
                  selectedIndex: 0,
                ),
              ),
            ),
            const Text(
              'About you',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Write mini bio'),
                      Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0xffB4B4B4),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 28.15,
            ),
            const Text(
              'Verification',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.29),
                        child: Image.asset('assets/images/id.png'),
                      ),
                      const Text('Verify my ID'),
                      const Spacer(),
                      const Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0xffB4B4B4),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.29),
                        child: Image.asset('assets/images/mobile.png'),
                      ),
                      const Text('Add my phone'),
                      const Spacer(),
                      const Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0xffB4B4B4),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.29),
                        child: Image.asset('assets/images/@.png'),
                      ),
                      const Text('Add my e-mail'),
                      const Spacer(),
                      const Icon(
                        Icons.chevron_right_outlined,
                        color: Color(0xffB4B4B4),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24.15,
            ),
            const Text(
              'Car',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(
                  iconSize: 32,
                  icon: const Icon(
                    Icons.add_circle,
                    color: Color(0xffFECC2A),
                  ),
                  onPressed: () {},
                ),
                const Text('Add car')
              ],
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 27.53),
                  child: Text(
                    'See my public Profile',
                    style: TextStyle(
                        color: Color(0xffFED428), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
