import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text("SOSMED", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: AppColors.primaryGradientStart)),
              const SizedBox(height: 10),
              Text(isLogin ? "Silakan Login" : "Buat Akun Baru", style: const TextStyle(color: AppColors.textLight)),
              const SizedBox(height: 30),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: "Nomor HP", border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
              ),
              const SizedBox(height: 15),
              if (!isLogin) ...[
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: "Nama Lengkap", border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                ),
                const SizedBox(height: 15),
              ],
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity, height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainNavigation()));
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryGradientStart),
                  child: Text(isLogin ? "MASUK" : "DAFTAR", style: const TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              TextButton(
                onPressed: () => setState(() => isLogin = !isLogin),
                child: Text(isLogin ? "Belum punya akun? Daftar" : "Sudah punya akun? Login", style: const TextStyle(color: AppColors.accent)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
