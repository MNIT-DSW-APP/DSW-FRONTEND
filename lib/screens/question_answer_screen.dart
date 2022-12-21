import 'package:flutter/material.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/navigation_drawer.dart';
import 'package:dswapp/models/question_answer.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);
  static const routeName = '/question_answer';

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  get _questionInputTextController => TextEditingController();

  final questionKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppBar(),
        endDrawer: NavigationDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Questions? Look Here ",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Have any question? We're here to help. ",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ExpansionPanelList.radio(
                children: qnaList
                    .map(
                      (item) => ExpansionPanelRadio(
                        headerBuilder: (context, isExpanded) => ListTile(
                          title: Text(
                            item.question,
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        body: ListTile(
                          title: Text(
                            item.answer,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w200),
                          ),
                        ),
                        value: item.question,
                      ),
                    )
                    .toList(),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                height: 250,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/faqs.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: Text(
                          "Still have questions?",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
                        child: Text(
                          "Can't find the answer you're looking for? \n \t \t \t \t \t \t Please ask your question.",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w200),
                        ),
                      ),
                      Form(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        key: questionKey,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                          child: TextFormField(
                            controller: _questionInputTextController,
                            keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration(
                                hintText: "Ask something...",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                )),
                            validator: (questionFromInput) {
                              if (questionFromInput!.isEmpty) {
                                return "Can't be Empty.";
                              } else {
                                return null;
                              }
                            },
                            maxLines: 10,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.yellow),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                          onPressed: () {
                            final isValidForm =
                                questionKey.currentState!.validate();
                            if (isValidForm) {
                              return;
                            }
                          },
                          child: const Text("Send"),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
