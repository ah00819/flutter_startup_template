
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/app_config.dart';
import '../viewmodels/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppConfig>();

    return ChangeNotifierProvider<HomeViewModel>(
      create: (_) => HomeViewModel(app),
      child: Consumer<HomeViewModel>(
        builder: (context, vm, _) => Scaffold(
          body: Center() // TODO replace with home view
        ),
      ),
    );
  }
}
