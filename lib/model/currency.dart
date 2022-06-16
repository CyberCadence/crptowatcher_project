import 'package:equatable/equatable.dart';

class CryptoCurrency extends Equatable {
  final String name;
  final String fullname;
  final double price;

  CryptoCurrency(
      {required this.name, required this.fullname, required this.price});

  @override
  List<Object> get props => [name, fullname, price];

  factory CryptoCurrency.fromMap(Map<String, dynamic> map) {
    return CryptoCurrency(
        name: map['CoinInfo']?['Name'] ?? '',
        fullname: map['CoinInfo']?['FullName'] ?? '',
        price: (map['RAW']?['USD']?['PRICE'] ?? 0).toDouble());
  }
}

class DataError extends Equatable {
  final String message;

  const DataError({this.message = ''});

  List<Object?> get props => [message];
}
