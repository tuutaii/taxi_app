import 'package:flutter/material.dart';

class DetailsTab extends StatefulWidget {
  const DetailsTab({Key? key}) : super(key: key);

  @override
  State<DetailsTab> createState() => _DetailsTabState();
}

class _DetailsTabState extends State<DetailsTab> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About you',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Theme(
          data: theme,
          child: const ExpansionTile(
            tilePadding: EdgeInsets.symmetric(
              horizontal: 0,
            ),
            title: Text(
              'Write mini bio',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            children: [Text('data')],
          ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
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
            Theme(
              data: theme,
              child: const ExpansionTile(
                tilePadding: EdgeInsets.only(
                  left: 13,
                ),
                leading: Icon(
                  Icons.verified_outlined,
                ),
                title: Text(
                  'Verify my ID',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                children: [Text('data')],
              ),
            ),
            Container(
              height: 1,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
            ),
            Theme(
              data: theme,
              child: const ExpansionTile(
                tilePadding: EdgeInsets.only(
                  left: 13,
                ),
                leading: Icon(
                  Icons.phone_iphone_outlined,
                ),
                title: Text(
                  'Add my phone',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                children: [Text('data')],
              ),
            ),
            Container(
              height: 1,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
            ),
            Theme(
              data: theme,
              child: const ExpansionTile(
                tilePadding: EdgeInsets.only(
                  left: 13,
                ),
                leading: Icon(
                  Icons.alternate_email_outlined,
                ),
                title: Text(
                  'Add my e-mail',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                children: [Text('data')],
              ),
            ),
            Container(
              height: 1,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
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
        // const Expanded(
        //   child: Padding(
        //     padding: EdgeInsets.only(bottom: 27.53),
        //     child: Text(
        //       'See my public Profile',
        //       style: TextStyle(
        //           color: Color(0xffFED428), fontWeight: FontWeight.bold),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
