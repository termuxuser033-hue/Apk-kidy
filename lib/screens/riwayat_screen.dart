import 'package:flutter/material.dart';
import '../utils/colors.dart';

class RiwayatScreen extends StatelessWidget {
  const RiwayatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Riwayat Transaksi"), backgroundColor: AppColors.primaryGradientStart, foregroundColor: Colors.white),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.check_circle, color: Colors.green),
              title: const Text("1.000 Followers TikTok"),
              subtitle: const Text("12 Nov 2026 - Sukses"),
              trailing: const Text("Rp 25.000", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.timer, color: Colors.orange),
              title: const Text("Nokos WhatsApp"),
              subtitle: const Text("12 Nov 2026 - Diproses"),
              trailing: const Text("Rp 5.000", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
