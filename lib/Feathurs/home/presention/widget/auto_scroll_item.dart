import 'package:elrawee/Core/utils/app_assets.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/utils/text_them.dart';
import 'package:flutter/material.dart';

class AutoScrollItem extends StatelessWidget {
  AutoScrollItem({super.key, required this.index});
  final List<String> items = [
    "Item 1 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 2 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 3 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 4 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,g.fh.kghlglkh;fgkhjghjfk,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 5 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 6 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 7 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 8 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 1 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 1 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 1 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
    "Item 2 mlvdfkbnlbngfbjmgflbjgfjbngfbngfilbfxjbx.gbvfj.fgjbf,xbggjlfbgjlfxkjbjfbjfk.gjl.jl.gjfjxfjbvdhbfvdjbvfjfv",
  ];
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: MediaQuery.of(context).size.width * 0.65,
      margin: EdgeInsets.symmetric(horizontal: 10),
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
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        Assets.assetsImagesSplachLogo,
                      ),
                    ))),
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(
                items[index],
                style: AppTextTheme.textStyleblack14,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
