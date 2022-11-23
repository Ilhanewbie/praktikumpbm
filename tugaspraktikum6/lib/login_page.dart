import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tugaspraktikum6/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _booleanvalue = false;

  void _isBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _booleanvalue = !_booleanvalue;
      if(_booleanvalue == true){
        Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
      }
    });
    prefs.setBool('booleanvalue', _booleanvalue);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _booleanvalue = prefs.getBool('booleanvalue') ?? _booleanvalue;
      if(_booleanvalue == true){
        Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
      }
    });
  }

  void initState(){
    super.initState();
    _getBool();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("LOGIN PAGE",style: GoogleFonts.poppins(fontSize: 42),),
              SizedBox(
                height: 10
              ),
              Container(
                width: 200,
                child: ElevatedButton(onPressed: _isBool, child: Text("SIGN IN")),
              ),
            ],
          )
          ),
        );
  }
}
