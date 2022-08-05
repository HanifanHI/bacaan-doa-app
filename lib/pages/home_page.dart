import 'package:flutter/material.dart';
import '../providers/doa_provider.dart';
import '../widgets/doa_card.dart';
import 'package:provider/provider.dart';

import '../models/doa.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var doa = Provider.of<DoaProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BACAAN DOA'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: doa.fetchDoa(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Doa> data = snapshot.data as List<Doa>;
            return SingleChildScrollView(
              child: Column(
                children: data.map((item) => DoaCard(dataDoa: item)).toList(),
              ),
            );
          }
          return const CircularProgressIndicator(
            color: Colors.amber,
          );
        },
      ),
    );
  }
}
