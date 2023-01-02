import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/screens/admin_screen.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);
  static const routeName = "/log_in";

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

Widget buildEmail() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 25,
      vertical: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Email:",
          style: TextStyle(color: GlobalVariables.customGrey, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(49, 56, 66, 0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter email id';
              }
              return null;
            },
            style: const TextStyle(
              color: Colors.black87,
            ),
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(top: 14),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        ),
      ],
    ),
  );
}

Widget buildPassword() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 25,
      // vertical: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Password:",
          style: TextStyle(color: GlobalVariables.customGrey, fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(49, 56, 66, 0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 60,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter password';
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 14),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.password_outlined),
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.black38,
                )),
          ),
        ),
      ],
    ),
  );
}

class _LogInScreenState extends State<LogInScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: NavigationDrawer(),
      body: Container(
        height: sz.height,
        width: sz.width,
        margin: const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 3.0,
              color: Color.fromARGB(172, 158, 158, 158),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 40,
                  ),
                  child: Text(
                    "Welcome!",
                    style: TextStyle(
                        color: GlobalVariables.customGrey,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                buildEmail(),
                const SizedBox(
                  height: 30,
                ),
                buildPassword(),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Forgot / Reset Password?",
                    style: TextStyle(
                        color: GlobalVariables.customGrey, fontSize: 15),
                  ),
                ),
                const Divider(),
                ElevatedButton(
                  onPressed: (() {
                    if (_loginFormKey.currentState!.validate()) {
                      Navigator.of(context).pushNamed(AdminScreen.routeName);
                    }
                  }),
                  style: ElevatedButton.styleFrom(
                      primary: GlobalVariables.customYellow,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 75,
                        vertical: 10,
                      )),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
