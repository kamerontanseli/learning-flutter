import 'package:flutter/material.dart';
import 'package:myapp/containers/counter/counter.dart';
import 'package:myapp/containers/counter/increase_counters.dart';

class HomePage extends StatelessWidget {
    // We passed it a title from the app root, so we have to
    // set up the class to accept that arg.
  final String title;
  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    // Scaffold is almost always going to be your top-level widget
    // on each page.
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title)
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'You have pushed the button this many times: \n',
              ),
              new Counter()
            ],
          )
        )
      ),
      floatingActionButton: new IncreaseCountButton(),
    );
  }
}
