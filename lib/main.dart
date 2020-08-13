import 'package:flutter/material.dart';
import 'package:novastore/app/app.dart';
import 'package:novastore/providers/app_state_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(
    ChangeNotifierProvider<AppStateModel>(
        create: (_) => AppStateModel()..loadProducts(),
        child: NovaApp()
    ));



