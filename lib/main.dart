import 'package:flutter/material.dart';

import 'item_model.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.dehaze)
         , leadingWidth: 100, // default is 56

          title:Container(width:300,child:Text('Cart')),
          backgroundColor: Colors.cyan
        , actions: [
          Container(
            width: 50,
          ),

          Icon(Icons.search),
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite_border),
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_box),
            icon: Icon(Icons.account_circle_sharp),
            label: 'Account',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Home Page'),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: _CartList(),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Favorites '),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Account'),
        ),
      ][currentPageIndex],
    );
  }
}

class _CartList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // This gets the current state of CartModel and also tells Flutter
    // to rebuild this widget when CartModel notifies listeners (in other words,
    // when it changes).

    return
      Scaffold(

        body: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image(
                        height: 80,
                        width: 80,
                        image: AssetImage(products[index].image.toString()),
                      ),
                      SizedBox(
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5.0,
                            ),
                            RichText(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              text: TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade800,
                                      fontSize: 16.0),
                                  children: [
                                    TextSpan(
                                        text:
                                        '${products[index].name.toString()}\n',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                            RichText(
                              maxLines: 1,
                              text: TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade800,
                                      fontSize: 16.0),
                                  children: [
                                    TextSpan(
                                        text:
                                        '${products[index].desc.toString()}\n',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                            RichText(
                              maxLines: 1,
                              text: TextSpan(
                                  text: ' ' r"$",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade800,
                                      fontSize: 16.0),
                                  children: [
                                    TextSpan(
                                        text:
                                        '${products[index].price.toString()}\n',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton.icon(onPressed: (){}, icon:Icon(Icons.favorite), label: Text("")),
                    ],
                  ),
                ),
              );
            }),

    );
  }
}
