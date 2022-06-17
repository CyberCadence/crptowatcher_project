import 'package:crptowatcher/bloc/crypto_bloc.dart';
import 'package:crptowatcher/pages/HomepAge.dart';
import 'package:crptowatcher/services/dataservicesrepo.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CryptoRepository(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blueGrey,
          colorScheme:
              const ColorScheme.dark().copyWith(secondary: Colors.white),
        ),
        home: BlocProvider(
          create: (context) => CryptoBloc(
            cryptoRepository: context.read<CryptoRepository>(),
          )..add(StartEvent()),
          child: HomePage(),
        ),
      ),
    );
  }
}
