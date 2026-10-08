import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});
  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}
class _Tab1ScreenState extends State<Tab1Screen> {
  int _idx = 0;
  final _cards = [
    {'w': 'Ephemeral', 'ph': '/ɪˈfem.ər.əl/', 'def': 'Lasting for a very short time; fleeting.', 'ex': 'Fame in the digital era is often ephemeral.'},
    {'w': 'Ubiquitous', 'ph': '/juːˈbɪk.wə.təs/', 'def': 'Present, appearing, or found everywhere.', 'ex': 'Smartphones have become ubiquitous.'},
    {'w': 'Resilience', 'ph': '/rɪˈzɪl.jəns/', 'def': 'The capacity to recover quickly from difficulties.', 'ex': 'Courage and resilience define greatness.'},
  ];
  @override
  Widget build(BuildContext context) {
    final c = _cards[_idx % _cards.length];
    return Scaffold(
      appBar: AppBar(title: const Text('QuickWord • Flashcards'), actions: [IconButton(icon: const Icon(Icons.star, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [AppTheme.card, AppTheme.surface]), borderRadius: BorderRadius.circular(28), border: Border.all(color: AppTheme.primary.withValues(alpha: 0.3))),
            child: Column(children: [
              Text(c['w']!, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppTheme.primary)),
              const SizedBox(height: 4),
              Text(c['ph']!, style: const TextStyle(color: AppTheme.textSecondary, fontStyle: FontStyle.italic)),
              const SizedBox(height: 16),
              Text(c['def']!, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, height: 1.4)),
              const SizedBox(height: 14),
              Text('"${c['ex']!}"', textAlign: TextAlign.center, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 13, fontStyle: FontStyle.italic)),
            ]),
          ),
          const Spacer(),
          Row(children: [
            Expanded(child: OutlinedButton(onPressed: () => setState(() => _idx++), child: const Text('Review Again'))),
            const SizedBox(width: 12),
            Expanded(child: ElevatedButton(onPressed: () => setState(() => _idx++), style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary, foregroundColor: Colors.black), child: const Text('I Know This'))),
          ]),
        ]),
      ),
    );
  }
}
