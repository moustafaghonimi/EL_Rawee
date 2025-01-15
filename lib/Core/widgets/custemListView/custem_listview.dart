import 'package:elrawee/Core/widgets/custemListView/custem_listview_item.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 16,
        itemBuilder: (context, index) {
          return CustomListViewItem(
            index: index,
          );
        },
      ),
    );
  }
}
