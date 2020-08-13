import 'package:flutter/cupertino.dart';
import 'package:novastore/ui/product_list_tab.dart';
import 'package:novastore/ui/search_tab.dart';
import 'package:novastore/ui/shopping_cart_tab.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('Products'),),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), title: Text('Search'),),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), title: Text('Cart'),),
          ],
        ),
      tabBuilder: (ctx, index){
        CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(builder: (context) =>ProductListTab());
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context) =>SearchTab());
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context) =>ShoppingCartTab());
            break;
        }
        return returnValue;
      },
    );
  }
}
