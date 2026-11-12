import 'package:flutter/material.dart';
import '../utils/colors.dart';

class LayananScreen extends StatelessWidget {
  const LayananScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Layanan Kami"),
          backgroundColor: AppColors.primaryGradientStart,
          foregroundColor: Colors.white,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [Tab(text: "SOSMED"), Tab(text: "NOKOS")],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Daftar Harga Sosmed tampil di sini")),
            Center(child: Text("Daftar Harga Nokos tampil di sini")),
          ],
        ),
      ),
    );
  }
}
