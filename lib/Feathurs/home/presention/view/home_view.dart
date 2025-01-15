import 'package:elrawee/Core/utils/app_strings.dart';
import 'package:elrawee/Core/widgets/CustomUsableListView/custem_header_title_text.dart';
import 'package:elrawee/Core/widgets/CustomUsableListView/custom_animated_listview.dart';
import 'package:elrawee/Core/widgets/custemListView/custem_listview.dart';
import 'package:elrawee/Feathurs/home/presention/widget/auto_scroll_carousel.dart';
import 'package:elrawee/Feathurs/home/presention/widget/custom_catogery.dart';
import 'package:elrawee/Feathurs/home/presention/widget/home_app_bar.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(child: HomeAppBar()),
            SliverToBoxAdapter(child: AutoScrollHomeSection()),
            SliverToBoxAdapter(child: HistoricalPeriodsSeaction()),
            SliverToBoxAdapter(child: HistoricalSouvenirsHomeSeaction()),
            SliverToBoxAdapter(child: HistoricalCharactersHomeSection()),
          ],
        ),
      ),
    );
  }
}

class AutoScrollHomeSection extends StatelessWidget {
  const AutoScrollHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustemHeaderTitleText(
          text: AppStrings.besetPalases,
        ),
        AutoScrollCarousel(),
      ],
    );
  }
}

class HistoricalPeriodsSeaction extends StatelessWidget {
  const HistoricalPeriodsSeaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustemHeaderTitleText(
          text: AppStrings.historicalPeriods,
        ),
        CustomCatogery(),
      ],
    );
  }
}

class HistoricalSouvenirsHomeSeaction extends StatelessWidget {
  const HistoricalSouvenirsHomeSeaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustemHeaderTitleText(
          text: AppStrings.historicalSouvenirs,
        ),
        CustomAnimatedListView(),
      ],
    );
  }
}

class HistoricalCharactersHomeSection extends StatelessWidget {
  const HistoricalCharactersHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustemHeaderTitleText(
          text: AppStrings.historicalCharacters,
        ),
        CustomListView(),
        SizedBox(height: 6),
      ],
    );
  }
}
