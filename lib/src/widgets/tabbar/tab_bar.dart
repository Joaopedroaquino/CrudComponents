import 'package:crud_components/src/widgets/filter/custom_filter.dart';
import 'package:crud_components/src/widgets/form/custom_form.dart';
import 'package:crud_components/src/widgets/listview/list_view.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TabBarWidgetData();
  }
}

class TabBarWidgetData extends State<TabBarWidget>
    with TickerProviderStateMixin {
  late TabController _tabControllerList;

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabControllerList = TabController(length: 2, vsync: this, initialIndex: 0);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _tabControllerList.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white30,
            child: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              labelStyle: const TextStyle(),
              controller: _tabControllerList,
              tabs: [
                ///TAB DE LISTAGEM
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.people_alt_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Listagem"),
                    ],
                  ),
                ),

                ///TAB DE DETALHE
                Tab(
                  child: Row(
                    children: const [
                      Icon(Icons.info),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Detalhe"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabControllerList,
              children: const [
                Card(
                  child: HeaderListagem(),
                ),
                Center(
                  child: Card(
                    child: CustomFormWidget(),
                  ),
                )
              ],
            ),
          ),

          //LISTVIEW DA PRIMEIRA TAB
          Expanded(
            child: TabBarView(
              controller: _tabControllerList,
              children: const [ListViewWidget(), Center()],
            ),
          ),
        ],
      ),
    );
  }
}
