import 'dart:async';

import 'package:ecommerce/product_bloc/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductCubit(),
      child: Scaffold(
        body: Center(
          child: Container(
            child: Text("Product Screen"),
          ),
        ),
      ),
    );
  }
}
