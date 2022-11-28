import 'package:dswapp/models/post_control.dart';
import 'package:dswapp/models/user.dart';
import 'package:dswapp/widgets/custom_appbar.dart';
import 'package:dswapp/widgets/custom_black_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdminScreen extends StatelessWidget {
  static const routeName = '/admin_panel';
  @override
  Widget build(BuildContext context) {
    final item = userList;
    Size sz = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 151,
                width: sz.width,
                padding: EdgeInsets.all(30),
                child: Stack(
                  children: [
                    Positioned(
                      top: 8,
                      child: CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage(item[0].imageUrl),
                      ),
                    ),
                    Positioned(
                        left: 112,
                        top: 12,
                        child: Text(
                          item[0].userName,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    Positioned(
                      left: 112,
                      top: 38,
                      child: Text(
                        item[0].userId,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 112,
                      top: 60,
                      child: Text(
                        "\u2022 ${item[0].post.toString().split('.').last}",
                        style: TextStyle(
                          color: Color.fromARGB(255, 20, 92, 150),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      top: 60,
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.grey,
                            size: 17,
                          ),
                          Text(
                            "Edit",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: AdminControl().adminControlList.length,
                  itemBuilder: ((context, index) {
                    return CustomBlackButton(
                      title: AdminControl()
                          .adminControlList[index]
                          .title
                          .toString()
                          .split('.')
                          .last,
                      icon: AdminControl().adminControlList[index].icon,
                      routename:
                          AdminControl().adminControlList[index].routeName,
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
