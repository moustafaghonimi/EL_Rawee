import 'package:elrawee/Core/widgets/CustomUsableListView/custom_usable_listview_scrollable_item.dart';
import 'package:flutter/material.dart';
import 'package:transformable_list_view/transformable_list_view.dart';

class CustomAnimatedListView extends StatelessWidget {
  const CustomAnimatedListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: TransformableListView.builder(
        itemExtent: MediaQuery.of(context).size.height * 0.15,
        physics: BouncingScrollPhysics(),
        addAutomaticKeepAlives: true,
        getTransformMatrix: getTransformMatrix,
        itemBuilder: (context, index) {
          return CustomUsableListViewScrollableItem(
            index: index,
          );
        },
        itemCount: 16,
      ),
    );
  }
}

Matrix4 getTransformMatrix(TransformableListItem item) {
  /// final scale of child when the animation is completed
  const endScaleBound = 0.3;

  /// 0 when animation completed and [scale] == [endScaleBound]
  /// 1 when animation starts and [scale] == 1
  final animationProgress = item.visibleExtent / item.size.height;

  /// result matrix
  final paintTransform = Matrix4.identity();

  /// animate only if item is on edge
  if (item.position != TransformableListItemPosition.middle) {
    final scale = endScaleBound + ((1 - endScaleBound) * animationProgress);

    paintTransform
      ..translate(item.size.width / 2)
      ..scale(scale)
      ..translate(-item.size.width / 2);
  }

  return paintTransform;
}
