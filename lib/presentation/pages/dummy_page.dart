import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/grid_item.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/list_item.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class DummyPage extends StatefulWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    tabController = TabController(length: 2, vsync: this);

    var tabBarItem = SizedBox(
      height: 38,
      child: TabBar(
          tabs: const [
            Tab(
              child: Text(
                "List View",
                style: TextStyle(
                  color: Color(0xFF0F5CA2),
                  fontSize: 16,
                  fontFamily: 'Mundial',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
            Tab(
              child: Text(
                "GridView",
                style: TextStyle(
                  color: Color(0xFF0F5CA2),
                  fontSize: 16,
                  fontFamily: 'Mundial',
                  fontWeight: FontWeight.w600,
                  height: 0.09,
                ),
              ),
            ),
          ],
          controller: tabController,
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 3),
              borderRadius: BorderRadius.all(Radius.circular(2)),
              insets: EdgeInsets.symmetric(horizontal: 17.0))),
    );

    var listView = ListView.builder(
      padding: const EdgeInsets.only(top: 21),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListItem(itemIndex: index);
      },
    );

    var gridView = GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return GridItem(itemIndex: index);
        }));

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              tabBarItem,
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [listView, gridView],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
