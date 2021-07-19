import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:richlineinterface/utils/appBar.dart';
import 'package:richlineinterface/utils/button3d.dart';
import 'package:richlineinterface/utils/buttoncard.dart';
import 'package:richlineinterface/utils/field_card.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final Widget svg = SvgPicture.asset("assets/images/loginsvg.svg",
      width: 150, height: 150, semanticsLabel: 'Acme Logo');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              svg,
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 50,
                      right: 50,
                      bottom: 25,
                      top: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        FieldCard(
                          paddingtop: 20,
                          paddingleft: 20,
                          paddingright: 20,
                          paddingbottom: 10,
                          hintText: "Account Name",
                          iconData: Icons.account_box,
                        ),
                        FieldCard(
                          paddingtop: 10,
                          paddingleft: 20,
                          paddingright: 20,
                          paddingbottom: 10,
                          hintText: "Email",
                          iconData: Icons.email,
                        ),
                        FieldCard(
                          paddingtop: 10,
                          paddingleft: 20,
                          paddingright: 20,
                          paddingbottom: 10,
                          hintText: "Password",
                          iconData: Icons.security,
                        ),
                        Button(label: "Register"),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "If You Have An Account ",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Login!",
                                    style: GoogleFonts.openSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
