import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    final bank = [
      {'w': 'Meticulous', 't': 'Showing great attention to detail', 'tag': 'C2 Academic'},
      {'w': 'Superfluous', 't': 'Unnecessary, especially through being more than enough', 'tag': 'C1 Advanced'},
      {'w': 'Eloquent', 't': 'Fluent or persuasive in speaking or writing', 'tag': 'B2 Upper'},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Mastered Word Bank'), actions: [IconButton(icon: const Icon(Icons.bookmark, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final b in bank) ...[
            Container(
              margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(b['w']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                subtitle: Text(b['t']!, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                trailing: Text(b['tag']!, style: const TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold, fontSize: 12)),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
