import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ubiqmart_new/values/constant.dart';
import 'package:ubiqmart_new/view/main_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final otpKeY = GlobalKey<FormState>();

  final pin1Controller = TextEditingController();
  final pin2Controller = TextEditingController();
  final pin3Controller = TextEditingController();
  final pin4Controller = TextEditingController();

  var countryCode = "91";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding:  EdgeInsets.only(left: 18.sp,right: 18.sp),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 SizedBox(height: 70.h),
                 Text("UbiqMart",
                style: TextStyle(
                  fontSize: 24.sp,
                   color: Colors.green,
                )),

                 SizedBox(height: 35.h),

                Container(
                height: 120.h,
                width: 100.w,
                color: Colors.blue,
                margin: const EdgeInsets.only(
                  left: 5,
                ),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(AppConstants.brand),
                )),

                 SizedBox(height: 25.h),
                 Text("Welcome You",
                  style:  TextStyle(
                    fontSize: 22.sp,
                    color: Colors.green,
                  ),
                ),
                 SizedBox(height: 60.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        showCountryPicker(
                          context: context,
                          showPhoneCode: true, // optional. Shows phone code before the country name.
                          onSelect: (Country country) {
                            setState((){
                              countryCode = country.phoneCode;
                            });
                            print('Select country: ${country.phoneCode}');
                          },
                        );
                      },
                      child: Container(
                        height: 46.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 1.12
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(5))

                          ),
                          child:   Center(
                            child: Text("+${countryCode}",
                              style:  TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black,
                              ),
                            ),
                          )
                      ),
                    ),
                    SizedBox(width: 12.w),
                     Container(
                      height: 46.h,
                      width: 265.w,
                      child: TextFormField(
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          controller: TextEditingController(),
                          onChanged: (val) {},
                          cursorWidth: 2,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.12.w)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1.12.w)),
                            // disabledBorder: UnderlineInputBorder(
                            //     borderSide: BorderSide(color:HexColor('#0B0B0B'))
                            //   ),
                          ),
                          // validator: (value) => phoneValidator(
                          //     countryCode + " " + value!)
                      ),

                    ),
                  ],
                ),
                 SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 42.h,
                      width: 38.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                            color: Colors.black, width: 1.12),
                      ),
                      child: TextFormField(
                        controller: pin1Controller,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          } else {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                     SizedBox(width: 10.w),
                    Container(
                      height: 42.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                            color: Colors.black, width: 1.12),
                      ),
                      child: TextFormField(
                        controller: pin2Controller,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          } else {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                     SizedBox(width: 10.w),
                    Container(
                      height: 42.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                            color: Colors.black, width: 1.12),
                      ),
                      child: TextFormField(
                        controller: pin3Controller,
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          } else {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                     SizedBox(width: 10.w),
                    Container(
                      height: 42.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                            color: Colors.black, width: 1.12),
                      ),
                      child: TextFormField(
                        controller: pin4Controller,
                        onChanged: (value) {
                          if (value.length == 1) {
                            // FocusScope.of(context).nextFocus();
                            FocusManager.instance.primaryFocus?.unfocus();
                          } else {
                            FocusScope.of(context).previousFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),

                 Text("Resend OTP",
                   style:  TextStyle(
                     fontSize: 16.sp,
                     color: Colors.green,
                   ),
                ),

                SizedBox(height: 60.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle:  TextStyle(
                      fontSize: 16.sp
                    ),
                    fixedSize:  Size(120.w, 42.h),
                  ),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));

                    },
                    child: const Text("Login")
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
