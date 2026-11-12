import 'package:flutter/material.dart';
import '../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [AppColors.primaryGradientStart, AppColors.primaryGradientEnd]),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.arrow_back, color: Colors.white),
                      const Text("SOSMED", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                      Row(children: const [Icon(Icons.notifications, color: Colors.white), SizedBox(width: 15), Icon(Icons.shopping_cart, color: Colors.white)]),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Saldo Anda", style: TextStyle(color: AppColors.textLight)),
                            Text("Rp 150.000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: AppColors.accent), child: const Text("Top Up", style: TextStyle(color: Colors.white))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(alignment: Alignment.centerLeft, child: Text("Analitik Sosial Media", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            ),
            const SizedBox(height: 10),
            // Card TikTok (Simulasi UI)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(children: [Icon(Icons.music_note), SizedBox(width: 10), Text("TikTok", style: TextStyle(fontWeight: FontWeight.bold))]),
                      Divider(),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                        Column(children: [Text("Followers"), Text("127.5K", style: TextStyle(fontWeight: FontWeight.bold))]),
                        Column(children: [Text("Likes"), Text("890.3K", style: TextStyle(fontWeight: FontWeight.bold))]),
                        Column(children: [Text("Views"), Text("2.4M", style: TextStyle(fontWeight: FontWeight.bold))]),
                      ])
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(alignment: Alignment.centerLeft, child: Text("Paket Harga Layanan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            ),
            // Tambahkan list harga di sini nanti
          ],
        ),
      ),
    );
  }
}
