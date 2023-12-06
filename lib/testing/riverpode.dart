import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';

class Riverpode extends ConsumerWidget {
  const Riverpode({Key? key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    // final getProvider = ref.watch(counterProvider);
    final streamData = ref.watch(streamProvider);
    return Scaffold(
      // floatingActionButton:
      // FloatingActionButton(onPressed: (){
      //   ref.read(counterProvider.notifier).state++;
      // }),
      body: streamData.when(data: ((data)=>Center(child: Text(data.toString()))), error: ((error, stackTrace) =>Text(error.toString()) ), loading:()=>Center(child: CircularProgressIndicator()))
    );
  }
}
