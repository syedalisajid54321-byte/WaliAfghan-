import 'package:flutter/material.dart';

void main() {
  runApp(const WaliAfghanApp());
}

class WaliAfghanApp extends StatelessWidget {
  const WaliAfghanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wali Afghan',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wali Afghan Official', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF1E1E1E),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // د لوګو یا پروفایل ځای
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.amber.withOpacity(0.4), blurRadius: 20, spreadRadius: 5)
                  ],
                ),
                child: const Icon(Icons.person, size: 70, color: Colors.black),
              ),
              const SizedBox(height: 20),
              const Text(
                'ولي افغان پروژې ته ښه راغلاست',
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                'خپل ځانګړی اپلیکیشن په بریالیتوب سره جوړ شو.',
                style: TextStyle(color: Colors.grey, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // د بټونو برخې
              _buildMenuButton(Icons.dashboard, 'کاري ډشبورډ', Colors.amber),
              _buildMenuButton(Icons.info, 'زموږ په اړه', Colors.white70),
              _buildMenuButton(Icons.contact_phone, 'اړیکه', Colors.white70),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton(IconData icon, String title, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      width: double.infinity,
      height: 60,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1E1E1E),
          foregroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          side: BorderSide(color: color.withOpacity(0.5), width: 1),
        ),
        icon: Icon(icon, size: 24),
        label: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        onPressed: () {},
      ),
    );
  }
}
