import 'package:elrawee/Core/utils/app_assets.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/utils/text_them.dart';
import 'package:flutter/material.dart';

class CustomUsableListViewScrollableItem extends StatelessWidget {
  CustomUsableListViewScrollableItem({super.key, required this.index});
  final List<String> items = [
    "Item 1 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 2 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 3 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 4 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,g.fh.kghlglkh;fgkhjghjfk,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 5 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 6 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 7 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 8 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 9 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 10 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 11 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 12 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 7 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 8 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 9 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 10 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 11 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 12 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
  ];
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.2,
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: AppColor.formColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.54,
                height: MediaQuery.of(context).size.height * 0.08,
                child: Text(
                  textAlign: TextAlign.center,
                  items[index],
                  style: AppTextTheme.textStyleblack14.copyWith(
                    fontSize: 12,
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height * 0.16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            Assets.assetsImagesSplachLogo,
                          ),
                        ))),
                Icon(Icons.favorite_outline_sharp, color: AppColor.appBarColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
