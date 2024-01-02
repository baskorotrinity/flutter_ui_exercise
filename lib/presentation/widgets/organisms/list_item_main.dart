import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

class ListItemMain extends StatelessWidget {
  const ListItemMain({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  final String title;
  final String subTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    var rightItem = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(subTitle,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal)),
      ],
    );

    return Container(
        child: ListTile(
      contentPadding: EdgeInsets.all(10),
      title: rightItem,
      onTap: () {
        this.onTap();
      },
    ));
  }
}
