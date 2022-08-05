import 'package:flutter/material.dart';
import 'package:latihan_http_request/models/doa.dart';

class DoaCard extends StatelessWidget {
  final Doa dataDoa;

  const DoaCard({
    Key? key,
    required this.dataDoa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Colors.black.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dataDoa.doa,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              dataDoa.ayat,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            dataDoa.latin,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: 0.2,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Artinya : ${dataDoa.artinya}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: 0.2,
            ),
          ),
        ],
      ),
    );
  }
}
