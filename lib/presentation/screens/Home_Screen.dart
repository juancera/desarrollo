import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INFORMACION PERSONAL"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            ClipRRect(
              borderRadius: BorderRadius.circular(60), 
              child: Image.network(
                "https://images.unsplash.com/photo-1518770660439-4636190af475?auto=format&fit=crop&w=300&q=80", 
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 120,
                    height: 120,
                    color: Colors.grey[300],
                    child: const Icon(Icons.error, color: Colors.red),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),

            // Nombre y datos
            const Text(
              "Juan Pablo Cera Barreto",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text(
              "ingenieria de sistemas",
              style: TextStyle(fontSize: 16, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            const Text(
              "3016055283",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Línea decorativa
            Container(
              height: 10,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  "⚠️",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Botones sociales
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.code),
                  label: const Text("GITHUB"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.business),
                  label: const Text("LINKEDIN"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.chat),
                  label: const Text("TWITTER"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
