import 'package:flutter/material.dart';

class AccountsTab extends StatelessWidget {
  const AccountsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'Past ratings',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),
      Theme(
        data: theme,
        child: const ExpansionTile(
          tilePadding: EdgeInsets.symmetric(
            horizontal: 0,
          ),
          leading: Icon(
            Icons.star_outlined,
            color: Color(0xffFECC2A),
          ),
          title: Text(
            'Ratings left',
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
        'Preferences',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      //----------------Preferences tab ----------------
      Column(
        children: [
          Theme(
            data: theme,
            child: ExpansionTile(
              textColor: Colors.black,
              iconColor: Colors.grey,
              tilePadding: const EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: const Icon(
                Icons.notifications_outlined,
              ),
              title: const Text(
                'Notification & Communication',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff757575).withOpacity(0.05),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Notification & Communication ')),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff757575).withOpacity(0.05),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Email')),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff757575).withOpacity(0.05),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('SMS')),
                      ),
                    ),
                  ),
                )
              ],
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
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.vpn_key_outlined,
              ),
              title: Text(
                'Change password',
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
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.contact_mail_outlined,
              ),
              title: Text(
                'Postal Address',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              children: [Text('data')],
            ),
          ),
        ],
      ),
      Container(
        height: 1,
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
      ),
      const SizedBox(
        height: 24.15,
      ),
      const Text(
        'Money',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      //----------------Money tab----------------
      Column(
        children: [
          Theme(
            data: theme,
            child: const ExpansionTile(
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.account_balance_wallet_outlined,
              ),
              title: Text(
                'e-Wallet',
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
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.credit_card_outlined,
              ),
              title: Text(
                'Expected payments',
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
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.credit_card_outlined,
              ),
              title: Text(
                'Cards',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              children: [Text('data')],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xffB4B4B4)),
          )
        ],
      ),
      const SizedBox(
        height: 24.15,
      ),
      const Text(
        'About',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      //----------------About tab----------------
      Column(
        children: [
          Theme(
            data: theme,
            child: const ExpansionTile(
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.headset_mic_outlined,
              ),
              title: Text(
                'Help',
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
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.article_outlined,
              ),
              title: Text(
                'Term & Conditions',
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
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.lock_outlined,
              ),
              title: Text(
                'Privacy Policy',
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
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.article_outlined,
              ),
              title: Text(
                'Licenses',
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
              tilePadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              leading: Icon(
                Icons.logout_outlined,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              children: [Text('data')],
            ),
          ),
        ],
      ),
    ]));
  }
}
