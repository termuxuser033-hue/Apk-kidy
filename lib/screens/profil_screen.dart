import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../main.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil Akun"), backgroundColor: AppColors.primaryGradientStart, foregroundColor: Colors.white),
      body: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("User Testing"),
            accountEmail: Text("08123456789"),
            currentAccountPicture: CircleAvatar(child: Icon(Icons.person, size: 40)),
            decoration: BoxDecoration(color: AppColors.primaryGradientStart),
          ),
          ListTile(leading: const Icon(Icons.settings), title: const Text("Menu Natuna"), trailing: const Icon(Icons.chevron_right), onTap: (){}),
          ListTile(leading: const Icon(Icons.support_agent), title: const Text("Kirim Tiket / Bantuan"), trailing: const Icon(Icons.chevron_right), onTap: (){}),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red), 
            title: const Text("Keluar", style: TextStyle(color: Colors.red)), 
            onTap: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MainNavigation()), (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
