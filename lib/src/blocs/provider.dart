import 'package:flutter/material.dart';
import 'bloc.dart';
export 'bloc.dart';

// InheritedWidget is the base class all widgets inherit from.
class Provider extends InheritedWidget {
  // Delcare the bloc property.
  final Bloc bloc;

  // Instantiate the bloc property. Calling super() is required to make this work. 
  Provider({Key key, Widget child})
    : bloc = Bloc(),
      super(key: key, child: child);

  // Dart expects this, but we're not using it. Put here to clear warnings. 
  bool updateShouldNotify(_) => true;

  // The "of" function allows widgets down the tree to reach up to the context this object lives on to grab the bloc.
  static Bloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}