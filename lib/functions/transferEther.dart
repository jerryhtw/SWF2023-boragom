import 'dart:math';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

transferEther(int _value) async {
  await dotenv.load(fileName: ".env");
  final String rpcUrl =
      dotenv.env['RPC_URL']!; // Replace with your Ethereum node RPC URL
  final String privateKey =
      dotenv.env['PRIVATE_KEY']!; // Replace with your private key
  final String contractAddress = dotenv.env['TARGET']!;
  var client = Web3Client(rpcUrl, Client());
  var amount = sqrt(_value).floor() * 10 ^ 15;

  var credentials = EthPrivateKey.fromHex(privateKey);
  final address = credentials.address;

  print(address.hexEip55);
  print(await client.getBalance(address));
  print(amount);

  await client.sendTransaction(
      credentials,
      Transaction(
          to: EthereumAddress.fromHex(contractAddress),
          gasPrice: EtherAmount.inWei(BigInt.from(100)),
          maxGas: 200000,
          maxFeePerGas: EtherAmount.inWei(BigInt.from(18366182884270)),
          value: EtherAmount.inWei(BigInt.from(amount)),
          maxPriorityFeePerGas: EtherAmount.inWei(BigInt.from(100))),
      chainId: 338);

  await client.dispose();
}
