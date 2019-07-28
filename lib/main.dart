import 'package:flutter/material.dart';
import 'package:redux/redux.dart';                              
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/models/app_state.dart';
import 'package:myapp/reducers/app_reducer.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {

  final store = new Store<AppState>(                            // new
    appReducer,                                                 // new
    initialState: new AppState(),                               // new
    middleware: [new LoggingMiddleware.printer()],                                             // new
  );

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
      store: store,
      child: new MaterialApp(                             
        title: 'App',                                   
        home: new HomePage('App'),                      
      )
    );
  }
}
