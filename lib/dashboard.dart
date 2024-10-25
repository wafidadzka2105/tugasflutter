import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final List<Map<String, String>> salesData = [
    {
      'no_faktur': '001',
      'tanggal': '2024-11-01',
      'nama_customer': 'Customer Agus',
      'jumlah_barang': '10',
      'total_penjualan': 'Rp 1,000,000',
    },
    {
      'no_faktur': '002',
      'tanggal': '2024-10-05',
      'nama_customer': 'Customer Budi',
      'jumlah_barang': '5',
      'total_penjualan': 'Rp 900,000',
    },
    {
      'no_faktur': '003',
      'tanggal': '2024-09-10',
      'nama_customer': 'Customer Caca',
      'jumlah_barang': '7',
      'total_penjualan': 'Rp 800,000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Dashboard'),
            SizedBox(height: 20),
            Expanded(
              child: DataTable(
                columns: [
                  DataColumn(label: Text('No Faktur')),
                  DataColumn(label: Text('Tanggal')),
                  DataColumn(label: Text('Nama Customer')),
                  DataColumn(label: Text('Jumlah Barang')),
                  DataColumn(label: Text('Total Penjualan')),
                ],
                rows: salesData
                    .map(
                      (sale) => DataRow(cells: [
                        DataCell(Text(sale['no_faktur']!)),
                        DataCell(Text(sale['tanggal']!)),
                        DataCell(Text(sale['nama_customer']!)),
                        DataCell(Text(sale['jumlah_barang']!)),
                        DataCell(Text(sale['total_penjualan']!)),
                      ]),
                    )
                    .toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
