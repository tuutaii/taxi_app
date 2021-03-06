import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_app/view/log_in.dart';
import 'package:taxi_app/widgets/pass_field.dart';
import 'package:taxi_app/widgets/text_field.dart';

class SigUpPage extends StatefulWidget {
  const SigUpPage({Key? key}) : super(key: key);

  @override
  _SigUpPageState createState() => _SigUpPageState();
}

class _SigUpPageState extends State<SigUpPage> {
  dynamic isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(right: 33.57, left: 32.43),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 36.47,
              ),
              const Center(
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ),
              const Text(
                'Enter your creditional to continue!',
                style: TextStyle(
                    fontWeight: FontWeight.w400, color: Color(0xffB4B4B4)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: TextFieldWidget(
                  text: 'First name',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: TextFieldWidget(
                  text: 'Date of birth',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: TextFieldWidget(
                  text: 'Mobile number',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: TextFieldWidget(
                  text: 'Email',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: PasswordFieldWidget(
                  text: 'Password',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: PasswordFieldWidget(text: 'Confirm Password'),
              ),
              SizedBox(
                width: double.infinity,
                child: CheckboxListTile(
                  title: const Text(
                    'Textash istad chihe boshad',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: isChecked,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                  activeColor: Colors.orange,
                  checkColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 54.47,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: const Color(0xffFECC2A)),
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Color(0xff1B1C1C),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() => const LogInPage());
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color(0xffFECC2A),
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checkboxCallback(bool? checkboxState) {
    setState(() {
      isChecked = checkboxState ?? true;
    });
  }
}
