import 'package:flutter/material.dart';
import 'package:story_app_ui/config/custom_icons.dart';
import 'package:story_app_ui/config/data.dart';
import 'package:story_app_ui/widgets/card_scroll_widget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: images.length - 1,
    );
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });
    return Scaffold(
      backgroundColor: Color(0xFF2D3447),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: 8,
                top: 45,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      CustomIcons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 46,
                      fontFamily: "Calibre-Semibold",
                      letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      CustomIcons.option,
                      size: 12,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFF6E6E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 6,
                        ),
                        child: Text(
                          "Animated",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "25+ Stories",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                CardScrollWidget(currentPage),
                Positioned.fill(
                  child: PageView.builder(
                    itemCount: images.length,
                    controller: controller,
                    reverse: true,
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favourite",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 46,
                      fontFamily: "Calibre-Semibold",
                      letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      CustomIcons.option,
                      size: 12,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 22,
                          vertical: 6,
                        ),
                        child: Text(
                          "Latest",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "10+ Stories",
                    style: TextStyle(
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 18,
                    bottom: 20,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/image_02.jpg",
                      width: 296,
                      height: 222,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
