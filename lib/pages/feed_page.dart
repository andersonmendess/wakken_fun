import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:wakkenfun/components/feed_item_component.dart';
import 'package:wakkenfun/components/stories_home_component.dart';
import 'package:wakkenfun/constants/assets_constant.dart';
import 'package:wakkenfun/controllers/feed_controller.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  _buildBottomTab() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 9.0,
      child: SizedBox(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(width: 0),
            InkWell(
              child: Image.asset(
                AssetsConstant.btnBadge,
                color: Colors.black54,
                scale: 1,
              ),
            ),
            InkWell(
              child: Image.asset(
                AssetsConstant.buttonAdd,
                scale: 1.5,
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              width: 68,
            ),
            InkWell(
              child: Image.asset(
                AssetsConstant.buttonUser,
                scale: 1.5,
                color: Colors.black54,
              ),
            ),
            InkWell(
              child: Image.asset(
                AssetsConstant.buttonNotifications,
                scale: 1.5,
                color: Colors.black54,
              ),
            ),
            const SizedBox(width: 0),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    context.read<FeedController>().loadPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final posts = context.watch<FeedController>().posts;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 1,
        onPressed: () {},
        child: Image.asset(AssetsConstant.buttonFunny),
      ),
      bottomNavigationBar: _buildBottomTab(),
      appBar: AppBar(
        leading: InkWell(
          child: Image.asset(
            AssetsConstant.menuHeaderIcon,
            scale: 1.4,
          ),
          onTap: () {
            debugPrint("Hey, you tapped menu icon");
          },
        ),
        title: Image.asset(
          AssetsConstant.wakkenfunLogo,
          height: 18,
        ),
        actions: [
          InkWell(
            child: Image.asset(
              AssetsConstant.searchHeaderIcon,
              scale: 1.4,
            ),
            onTap: () {
              debugPrint("Hey, you tapped search icon");
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsConstant.joystickIcon,
                    scale: 1.5,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Você foi desafiado, bora superar!",
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
            ),
            StoriesHomeComponent(
              data: List.generate(15, (index) {
                return index;
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(left: 16, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AssetsConstant.ballonChatIcon,
                    scale: 1.5,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Está acontecendo...",
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
            ),
            posts.isEmpty
                ? const SizedBox(
                    height: 300,
                    child: Center(child: CircularProgressIndicator()),
                  )
                : Container(),
            ...posts.map((e) => FeedItemComponent(post: e)).toList(),
          ],
        ),
      ),
    );
  }
}
