import 'package:flutter/material.dart';


class StatItem extends StatelessWidget {
  final String title;
  final String value;

  const StatItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(title, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

///SPECIALIST CARD
class SpecialistCard extends StatelessWidget {
  final String title;
  final String count;
  final Color color;

  const SpecialistCard({
    super.key,
    required this.title,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(count),
          const SizedBox(height: 6),
          Text(title,
              style:
              const TextStyle(fontWeight: FontWeight.bold)),

          const Spacer(),

          Row(
            children: const [
              CircleAvatar(radius: 12),
              SizedBox(width: 4),
              CircleAvatar(radius: 12),
              SizedBox(width: 4),
              CircleAvatar(radius: 12),
            ],
          )
        ],
      ),
    );
  }
}

/// SCHEDULE CARD
class ScheduleCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String role;
  final Color color;

  const ScheduleCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.role,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          const CircleAvatar(radius: 24),
          const SizedBox(width: 12),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold)),
              Text(subtitle),
              Text(role,
                  style: const TextStyle(
                      color: Colors.black54, fontSize: 12)),
            ],
          )
        ],
      ),
    );
  }
}