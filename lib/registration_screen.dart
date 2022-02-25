import 'package:care_spot_pro/form_field.dart';
import 'package:care_spot_pro/service_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //Form Key
  final _formKey = GlobalKey<FormState>();

  //First Name
  final firstNameEditingController = new TextEditingController();
  final lastNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();
  final DatePickerDialogEditinController = new TextEditingController();

  late String birthDateInString;
  late DateTime birthDate;
  bool isDateSelected = false;

  @override
  Widget build(BuildContext context) {
    //signUp Page
    final signUpButton = Material(
      color: Colors.transparent,
      child: SizedBox(
        height: 50,
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color:  Color.fromARGB(255, 0, 145, 5),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => 
            const ServiceScreen()));
          },
          child: const Text(
            'Sign Up',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black
          ),
          elevation: 0.0,
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          children: [
            const Text('Register',textAlign: TextAlign.center,style: TextStyle(fontSize: 28,color: Color.fromARGB(255, 0, 145, 5)),),
            const SizedBox(height: 40,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: UserFormField(
                    controller: firstNameEditingController,
                    validtor: () {
                      // if (val != null) {
                      //   return "First name is required";
                      // }
                    },
                    hintText: 'FirstName',
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: UserFormField(
                    controller: lastNameEditingController,
                    validtor: () {},
                    hintText: 'LastName',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            // SizedBox(
            //   height: 8,
            // ),
            Container(
                width: 250,
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: GestureDetector(
                          child: new Icon(Icons.calendar_today),
                          onTap: () async {
                            final datePick = await showDatePicker(
                                fieldHintText: 'DD/MM/YYYY',
                                fieldLabelText: "dd/mm/yyy",
                                context: context,
                                initialDate: new DateTime.now(),
                                firstDate: new DateTime(1900),
                                lastDate: new DateTime(2100));
                            if (datePick != null && datePick != birthDate) {
                              setState(() {
                                birthDate = datePick;
                                isDateSelected = true;

                                // put it here
                                birthDateInString =
                                    "${birthDate.month}/${birthDate.day}/${birthDate.year}"; // 08/14/2019
                              });
                            }
                          }),
                    ),
                  ],
                )),
            const SizedBox(
              height: 35,
            ),
            UserFormField(
              controller: lastNameEditingController,
              validtor: () {},
              hintText: 'Gender',
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 5,
            ),
            UserFormField(
              controller: emailEditingController,
              validtor: () {},
              hintText: 'Email',
            ),
            const SizedBox(
              height: 35,
            ),
            UserFormField(
              controller: passwordEditingController,
              validtor: () {},
              hintText: 'Password',
            ),
            const SizedBox(
              height: 35,
            ),
            UserFormField(
              controller: confirmPasswordEditingController,
              validtor: () {
                // if (val != null) {
                //   return "First name is required";
                // }
              },
              hintText: 'Confirm Password',
            ),
            const SizedBox(
              height: 45,
            ),
            signUpButton,
            const SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}
