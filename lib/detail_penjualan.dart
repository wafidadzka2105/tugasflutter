import 'package:flutter/material.dart';

class DetailPenjualanPage extends StatelessWidget {
  final String noFaktur;
  final String tanggal;
  final String namaCustomer;
  final String jumlahBarang;
  final String totalPenjualan;

  const DetailPenjualanPage({
    super.key,
    required this.noFaktur,
    required this.tanggal,
    required this.namaCustomer,
    required this.jumlahBarang,
    required this.totalPenjualan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Penjualan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('No Faktur: $noFaktur', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Tanggal: $tanggal', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Nama Customer: $namaCustomer', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Jumlah Barang: $jumlahBarang', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Total Penjualan: $totalPenjualan', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
