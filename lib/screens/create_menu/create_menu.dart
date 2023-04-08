import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ping_project/screens/create_menu/models/grid_items_model.dart';

import '../../constants/constants.dart';
import '../../widgets/common_app_bar.dart';
import '../home/components/top_header_card.dart';
import 'components/grid_item_card.dart';

class CreateMenuScreen extends StatelessWidget {
  const CreateMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<GridItemsModel> gridItemList = [
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Create Post',
      ),
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Create Short',
      ),
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Upload Videos',
      ),
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Upload Videos',
      ),
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Add Stories',
      ),
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Camera',
      ),
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Create Meeting',
      ),
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Dating',
      ),
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Sell Something',
      ),
      GridItemsModel(
        image: 'assets/icons/chat.svg',
        title: 'Go Live',
      ),
    ];
    return Scaffold(
      appBar: CommonAppBar(
        showIcons: true,
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Constants.kPadding, vertical: 10),
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const TopHeaderCard();
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 45,
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15),
                  itemCount: gridItemList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GridItemCard(
                      image: gridItemList[index].image,
                      title: gridItemList[index].title,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
