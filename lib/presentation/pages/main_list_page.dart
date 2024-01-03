import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy_page.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/list_item.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/list_item_main.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class MainListPage extends StatefulWidget {
  const MainListPage({Key? key}) : super(key: key);

  @override
  State<MainListPage> createState() => _MainListPagePageState();
}

class _MainListPagePageState extends State<MainListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            InkWell(
                child: ListItemMain(
              title: "Dummy UI",
              subTitle: "Introducing Flutter UI",
              onTap: () {
                context.router.push(const DummyMainRoute());
              },
            )),
            ListItemMain(
              title: "Counter Example",
              subTitle: "Example of state management in Flutter",
              onTap: () {},
            ),
            ListItemMain(
              title: "Calculate example",
              subTitle: "Example of state management in Flutter",
              onTap: () {},
            ),
            ListItemMain(
              title: "News App",
              subTitle: "Api Calling using flutter",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
