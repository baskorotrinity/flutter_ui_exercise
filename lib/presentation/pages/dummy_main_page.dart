import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/grid_item.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/list_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class DummyMainPage extends StatefulWidget {
  const DummyMainPage({Key? key}) : super(key: key);

  @override
  State<DummyMainPage> createState() => _DummyMainPageState();
}

class _DummyMainPageState extends State<DummyMainPage> {
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var headerTitle = Container(
      child: InkWell(
        onTap: () {
          context.router.push(const DummyRoute());
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Next",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            Text("Listview, Gridview, Tab bar")
          ],
        ),
      ),
    );

    var submitButton = Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        width: double.infinity,
        child: ElevatedButton(onPressed: () {}, child: Text("Submit")));

    var textInput = TextField(
      controller: textFieldController,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          labelText: 'Enter your email',
          hintText: 'Email'),
      onChanged: (text) {},
    );

    var sizedBoxItem = Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 1),
        ],
      ),
      margin: const EdgeInsets.all(5),
      child: Column(children: [
        SizedBox(
          child: Image.network(
            'https://fastly.picsum.photos/id/811/200/300.jpg?hmac=h_NbFElSb3w71ZJbJxKMQg8QNgch87Gbus_L_rsfi6g',
            width: UIHelper.setSp(150),
            height: UIHelper.setSp(60),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'Container',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ]),
    );

    var expandedItem = Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: 1),
          ],
        ),
        margin: const EdgeInsets.all(5),
        child: Column(children: [
          Image.network(
            'https://fastly.picsum.photos/id/811/200/300.jpg?hmac=h_NbFElSb3w71ZJbJxKMQg8QNgch87Gbus_L_rsfi6g',
            width: double.infinity,
            height: UIHelper.setSp(60),
            fit: BoxFit.cover,
          ),
          Text(
            'Container',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ]),
      ),
    );

    renderSectionTitle(title) {
      return Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.greenAccent[700]),
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerTitle,
                renderSectionTitle("Container and Text"),
                ListItem(itemIndex: 0),
                renderSectionTitle("Column"),
                Column(
                  children: [ListItem(itemIndex: 1), ListItem(itemIndex: 2)],
                ),
                renderSectionTitle("Row"),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GridItem(itemIndex: 0),
                      GridItem(itemIndex: 1),
                      GridItem(itemIndex: 2)
                    ]),
                renderSectionTitle("Button"),
                submitButton,
                renderSectionTitle("Input"),
                textInput,
                renderSectionTitle("Image assets, Sized box, Expanded"),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      sizedBoxItem,
                      expandedItem,
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
