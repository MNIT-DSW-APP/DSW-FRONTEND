import 'package:dswapp/constants/global_variables.dart';
import 'package:dswapp/screens/user/user_profile.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/navigation_drawer.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);
  static const routeName = 'signup-page';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _idController = TextEditingController();
  final _dobController = TextEditingController();
  final _branchController = TextEditingController();
  final _contactnoController = TextEditingController();
  List<Step> stepList(Size sz) => [
        Step(
          title: const Text('Account'),
          content: accountContent(
              sz, _nameController, _passwordController, _emailController),
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
        ),
        Step(
          title: Text('Details'),
          content: DetailsContent(
            branchController: _branchController,
            contactnoController: _contactnoController,
            dobController: _dobController,
            idController: _idController,
          ),
          state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 1,
        ),
        Step(
            title: Text('Confirm'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Name : ${_nameController.text}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Password : ${_passwordController.text}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Student ID : ${_idController.text}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Email ID : ${_emailController.text}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Contact No.: ${_contactnoController.text}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Branch : ${_branchController.text}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            state:
                _activeStepIndex <= 2 ? StepState.editing : StepState.complete),
      ];

  Container accountContent(
      Size sz,
      TextEditingController namecontroller,
      TextEditingController passwordcontroller,
      TextEditingController emailcontroller) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        SizedBox(
          height: sz.height * 0.05,
        ),
        CircleAvatar(
          radius: 60,
          backgroundImage: const AssetImage('lib/assets/images/user.jpg'),
          backgroundColor: Colors.grey[500],
          child: const Text(
            'Add profile photo',
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: sz.height * 0.05,
        ),
        CustomTextField(
          txt: 'Full name',
          controller: namecontroller,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          txt: 'Create password',
          controller: passwordcontroller,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(txt: 'MNIT Email', controller: emailcontroller),
      ]),
    );
  }

  int _activeStepIndex = 0;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: NavigationDrawer(),
        body: SingleChildScrollView(
          child: Container(
            height: sz.height,
            width: sz.width,
            margin:
                const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
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
            child: Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                primary: GlobalVariables.customYellow,
              )),
              child: Stepper(
                currentStep: _activeStepIndex,
                type: StepperType.horizontal,
                steps: stepList(sz),
                onStepContinue: () {
                  if (_activeStepIndex < stepList(sz).length - 1) {
                    _activeStepIndex++;
                  }
                  setState(() {});
                },
                onStepCancel: () {
                  if (_activeStepIndex > 0) {
                    _activeStepIndex--;
                  }
                  setState(() {});
                },
                key: _formkey,
                controlsBuilder: (context, details) {
                  return Container(
                    margin: const EdgeInsets.all(20),
                    child: Row(children: [
                      if (_activeStepIndex != 0)
                        ElevatedButton(
                            onPressed: details.onStepCancel,
                            child: Text('Cancel')),
                      Spacer(),
                      ElevatedButton(
                        onPressed: details.onStepContinue,
                        child: _activeStepIndex < 2
                            ? Text('Next')
                            : GestureDetector(
                                child: Text('Confirm'),
                                onTap: () => Navigator.of(context)
                                    .pushNamed(UserProfileScreen.routeName),
                              ),
                      ),
                    ]),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailsContent extends StatelessWidget {
  const DetailsContent({
    Key? key,
    required this.idController,
    required this.branchController,
    required this.contactnoController,
    required this.dobController,
  }) : super(key: key);

  final TextEditingController idController;
  final TextEditingController branchController;
  final TextEditingController contactnoController;
  final TextEditingController dobController;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(children: [
        CustomTextField(txt: 'Student ID', controller: idController),
        SizedBox(
          height: 20,
        ),
        CustomTextField(txt: 'Contact Number', controller: contactnoController),
        SizedBox(
          height: 20,
        ),
        CustomTextField(txt: 'Branch', controller: branchController),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          txt: 'DOB',
          controller: dobController,
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.txt,
    required this.controller,
  }) : super(key: key);

  final String txt;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(1, 1),
            color: Colors.grey.withOpacity(0.2),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          // hintText: hinttext,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: GlobalVariables.customYellow),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          label: Text(txt),
        ),
      ),
    );
  }
}
