import 'package:ecommerce/UI/home_screen.dart';
import 'package:ecommerce/UI/product_screen.dart';
import 'package:ecommerce/home_bloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomeCubit()),
      ],
      child: MaterialApp(
        routes: {
      '/home': (_) => HomeScreen(),
          "/product_screen":(_)=>ProductScreen(),
      },
        initialRoute: '/home',
      ),
    );
  }
}