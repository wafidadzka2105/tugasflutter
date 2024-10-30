import 'package:flutter/material.dart';
import 'detail_penjualan.dart'; // Pastikan Anda membuat dan mengimpor halaman detail ini

class DashboardPage extends StatelessWidget {
  final List<Map<String, String>> salesData = [
    {
      'no_faktur': '001',
      'tanggal': '2024-11-01',
      'nama_customer': 'Surya',
      'jumlah_barang': '10',
      'total_penjualan': 'Rp 1,000,000',
    },
    {
      'no_faktur': '002',
      'tanggal': '2024-10-05',
      'nama_customer': 'Caca',
      'jumlah_barang': '5',
      'total_penjualan': 'Rp 900,000',
    },
    {
      'no_faktur': '003',
      'tanggal': '2024-09-10',
      'nama_customer': 'Agung',
      'jumlah_barang': '7',
      'total_penjualan': 'Rp 800,000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to Dashboard'),
            const SizedBox(height: 20),
            Expanded(
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('No Faktur')),
                  DataColumn(label: Text('Tanggal')),
                  DataColumn(label: Text('Nama Customer')),
                  DataColumn(label: Text('Jumlah Barang')),
                  DataColumn(label: Text('Total Penjualan')),
                ],
                rows: salesData
                    .map(
                      (sale) => DataRow(
                        cells: [
                          DataCell(Text(sale['no_faktur']!), onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPenjualanPage(
                                  noFaktur: sale['no_faktur']!,
                                  tanggal: sale['tanggal']!,
                                  namaCustomer: sale['nama_customer']!,
                                  jumlahBarang: sale['jumlah_barang']!,
                                  totalPenjualan: sale['total_penjualan']!,
                                ),
                              ),
                            );
                          }),
                          DataCell(Text(sale['tanggal']!)),
                          DataCell(Text(sale['nama_customer']!)),
                          DataCell(Text(sale['jumlah_barang']!)),
                          DataCell(Text(sale['total_penjualan']!)),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
