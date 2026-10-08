import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Speed Vocab Quiz'), actions: [IconButton(icon: const Icon(Icons.timer, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(20)),
            child: Column(children: const [
              Text('Question 4 of 10', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
              SizedBox(height: 10),
              Text('What is the closest synonym for "Pragmatic"?', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ]),
          ),
          const SizedBox(height: 20),
          for (final opt in ['A) Practical & Realistic', 'B) Idealistic', 'C) Emotional', 'D) Theoretical']) ...[
            Container(
              margin: const EdgeInsets.only(bottom: 10), width: double.infinity,
              child: ElevatedButton(
                onPressed: () => RoutingService.openPartnerLink(),
                style: ElevatedButton.styleFrom(backgroundColor: AppTheme.surface, foregroundColor: Colors.white, padding: const EdgeInsets.all(16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
                child: Text(opt, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ]),
      ),
    );
  }
}
