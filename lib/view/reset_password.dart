import 'package:flutter/material.dart';
import 'package:taxi_app/widgets/text_field.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reset Password',
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 15,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.57),
        child: Column(
          children: [
            const SizedBox(
              height: 141.44,
            ),
            const Center(
              child: Text(
                'Reset Password',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                'Enter old password and type in new',
                style: TextStyle(fontSize: 14, color: Color(0xffB4B4B4)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            const TextFieldWidget(text: 'New Password'),
            const SizedBox(
              height: 22,
            ),
            const TextFieldWidget(text: 'Confirm Password'),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: SizedBox(
                    height: 54.47,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFECC2A)),
                        onPressed: () {},
                        child: const Text(
                          'Save',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
