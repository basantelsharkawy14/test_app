import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/home.dart';


class Home extends ConsumerWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeController = ref.watch(homeFuture);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:  GestureDetector(
        onTap: (){
          homeController.generateColor();
        },
        child: Container(
          color: homeController.containerColor,
          child: Center(
            child: Text("Hello There")
          ),
        ),
      )
    );
  }
}
