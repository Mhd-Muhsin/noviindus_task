import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Text('Enter Your \nMobile Number', style: TextStyle(color: Colors.white,fontSize: 23),),
                    SizedBox(height: 11,),
                    Text('Lorem ipsum dolor sit amet consectetur. Porta at id hac vitae. Et tortor at vehicula euismod mi viverra.', style: TextStyle(color: Colors.white,fontSize: 12),),
                    SizedBox(height: 36,),
                    Row(
                      children: [
                        CountryCodePicker(
                          // textStyle: TextStyle(color: Colors.white),
                          showDropDownButton: true,
                          // onChanged: onCountryCodeChanged,
                          // onInit: onInitCountryCode,
                          searchDecoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder()
                          ),
                          favorite: [],
                          showFlagDialog: true,
                          showFlagMain: false,
                          initialSelection:"IN",
                          // comparator: (a, b) => b.name.compareTo(a.name),
                        ),
                        Expanded(
                          child: TextField(style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xFF171717),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x40D9D9D9),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x40D9D9D9),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x40D9D9D9),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Enter Mobile Number',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0x40D9D9D9)),
                      borderRadius: BorderRadius.all(Radius.circular(28.0))
                  ),
                  height: 50,
                  width: 127,
                  // color: Colors.yellow,
                  child: Row(
                    children: [
                      SizedBox(width: 8,),
                      Text('Continue',style: TextStyle(color: Colors.white,fontSize: 14)),
                      SizedBox(width: 10,),
                      CircleAvatar(backgroundColor: Color(0xFFC70000),child: Icon(Icons.arrow_forward_ios, color: Colors.white,size: 12,),),
                      SizedBox(width: 8,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 120,)
            ],
          ),
        ),
      ),
    );
  }
}
