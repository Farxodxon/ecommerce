import 'dart:async';

import 'package:ecommerce/home_bloc/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget implements StateStreamableSource<HomeState> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeScreen(),
      child: Scaffold(body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Center(
            child: Container(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  Text("HomeScreen"),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/product_screen');
                    },
                    child: Text('Product Screen'),
                  )
                ],
              ),
            ),
          );
        },
      )),
    );
  }

  @override
  FutureOr<void> close() {
    // TODO: implement close
    throw UnimplementedError();
  }

  @override
  // TODO: implement isClosed
  bool get isClosed => throw UnimplementedError();

  @override
  // TODO: implement state
  HomeState get state => throw UnimplementedError();

  @override
  // TODO: implement stream
  Stream<HomeState> get stream => throw UnimplementedError();
}
