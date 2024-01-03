import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.itemIndex});

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: UIHelper.setSp(60),
            height: UIHelper.setSp(60),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'Container $itemIndex',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ]),
    );
  }
}
