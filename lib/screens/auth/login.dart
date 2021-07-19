import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:richlineinterface/screens/auth/sign_up.dart';
import 'package:richlineinterface/utils/appBar.dart';
import 'package:richlineinterface/utils/button3d.dart';
import 'package:richlineinterface/utils/field_card.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                height: 60,
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
                          paddingbottom: 20,
                          paddingleft: 20,
                          paddingright: 20,
                          paddingtop: 20,
                          hintText: "Account Name",
                          iconData: Icons.account_box,
                        ),
                        FieldCard(
                          paddingbottom: 20,
                          paddingleft: 20,
                          paddingright: 20,
                          paddingtop: 20,
                          hintText: "Password",
                          iconData: Icons.security,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Button3D(
                            width: 270,
                            style: StyleOf3dButton(
                              borderRadius: BorderRadius.circular(20),
                              width: 200,
                              backColor: Colors.grey.shade900,
                              topColor: Colors.grey.shade900,
                              height: 100,
                            ),
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                "Login",
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "If You Do Not Have An Account ",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Register(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Register!",
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
