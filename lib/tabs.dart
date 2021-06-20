import 'package:engelli_uygulama/config/color.dart';
import 'package:engelli_uygulama/config/tabs/bottom_navigation_bar_item.dart';
import 'package:engelli_uygulama/ui/home_page.dart';
import 'package:engelli_uygulama/ui/message_page.dart';
import 'package:engelli_uygulama/ui/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum TabItem { HomePage, MessagePage ,ProfilPage }

class Tabs extends StatefulWidget {
  final int currentTab1;

  Tabs({Key key, this.currentTab1}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  TabItem _currentTab = TabItem.HomePage;
  TabController _tabController;
  int currentIndex = 0;

  Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys = {
    TabItem.HomePage: GlobalKey<NavigatorState>(),
    TabItem.ProfilPage: GlobalKey<NavigatorState>(),
    TabItem.MessagePage: GlobalKey<NavigatorState>(),
  };

  Map<TabItem, Widget> tumSayfalar(context) {
    return {
    TabItem.HomePage: HomePage(),
    TabItem.ProfilPage: ProfilePage(),
    TabItem.MessagePage: MessagePage(),
    };
  }

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: tumSayfalar(context).length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
          !await navigatorKeys[_currentTab].currentState.maybePop(),
      child: CupertinoTabScaffold(
        resizeToAvoidBottomInset: true,
        tabBar: CupertinoTabBar(
          currentIndex: widget.currentTab1,
          items: [
            BottomNavigationBarItem(
              icon: FaIcon
                (FontAwesomeIcons.home,size: 20,color: currentIndex == 0 ? lacivert : Colors.grey,),
            ),
            BottomNavigationBarItem(
              icon: Icon
                (Icons.messenger,size: 20,color: currentIndex == 1 ? lacivert : Colors.grey,),
            ),
            BottomNavigationBarItem(
              icon: FaIcon
                (FontAwesomeIcons.solidUser,size: 20,color: currentIndex == 2 ? lacivert : Colors.grey,),

            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
              var newTabItem = TabItem.values[index];
              if (newTabItem == _currentTab) {
                navigatorKeys[newTabItem].currentState.popUntil(
                      (route) => route.isFirst,
                    );
              }
              _currentTab = newTabItem;
            });
          },
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            navigatorKey: navigatorKeys[TabItem.values[index]],
            builder: (context) {
              return tumSayfalar(context)[TabItem.values[index]];
            },
          );
        },
      ),
    );
  }
}
