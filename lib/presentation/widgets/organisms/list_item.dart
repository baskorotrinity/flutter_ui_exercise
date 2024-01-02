import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.itemIndex});

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    var leadingItem = SizedBox(
      child: Image.network(
        'https://fastly.picsum.photos/id/811/200/300.jpg?hmac=h_NbFElSb3w71ZJbJxKMQg8QNgch87Gbus_L_rsfi6g',
        width: UIHelper.setSp(70),
        height: UIHelper.setSp(70),
        fit: BoxFit.cover,
      ),
    );

    var rightItem = const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "How can I be flutter developer",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text("Baskoro - 23 March 2022",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
      ],
    );

    return Container(
        child: ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: leadingItem,
      title: rightItem,
      onTap: () {},
    ));
  }
}
