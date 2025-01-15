import 'package:elrawee/Core/utils/app_assets.dart';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:elrawee/Core/utils/text_them.dart';
import 'package:flutter/material.dart';

class CustomCatogryItem extends StatelessWidget {
  const CustomCatogryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.22,
      height: MediaQuery.of(context).size.width * 0.24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.18,
            height: MediaQuery.of(context).size.width * 0.18,
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10000),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    Assets.assetsImagesSplachLogo,
                  ),
                )),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Text(
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              "Egyption Storys",
              style: AppTextTheme.textStyleWhite14
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
