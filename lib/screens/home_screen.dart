import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5EFE6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome, Shirly Z.",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "How are you feeling today?",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                  )
                ],
              ),

              const SizedBox(height: 24),

              /// STATS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  StatItem(value: "7h 12m", title: "Sleep"),
                  StatItem(value: "74 b/m", title: "Heart rate"),
                  StatItem(value: "20 mins", title: "Awareness"),
                ],
              ),

              const SizedBox(height: 28),

              /// SPECIALISTS HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Our specialists",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),

              const SizedBox(height: 14),

              /// SPECIALIST CARDS
              Row(
                children: const [
                  Expanded(
                    child: SpecialistCard(
                      color: Color(0xFFAED9D3),
                      title: "Mental coaches",
                      count: "9 specialists",
                    ),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: SpecialistCard(
                      color: Color(0xFFE7B7A4),
                      title: "Psychologists",
                      count: "6 specialists",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              /// SCHEDULE HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Your schedule",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),

              const SizedBox(height: 14),

              /// SCHEDULE CARDS
              const ScheduleCard(
                color: Color(0xFFC8B7E6),
                title: "Psychotherapy",
                name: "Miriam Slater",
                role: "Doctor",
              ),

              const SizedBox(height: 14),

              const ScheduleCard(
                color: Color(0xFFAED9D3),
                title: "Yoga Practice",
                name: "Aron Levine",
                role: "Instructor",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////
/// STAT ITEM
class StatItem extends StatelessWidget {
  final String value;
  final String title;

  const StatItem({
    super.key,
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////////////////
/// SPECIALIST CARD
class SpecialistCard extends StatelessWidget {
  final Color color;
  final String title;
  final String count;

  const SpecialistCard({
    super.key,
    required this.color,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            count,
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
          const Spacer(),

          /// circles
          Row(
            children: List.generate(
              3,
                  (index) => Container(
                margin: const EdgeInsets.only(right: 6),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////
/// SCHEDULE CARD
class ScheduleCard extends StatelessWidget {
  final Color color;
  final String title;
  final String name;
  final String role;

  const ScheduleCard({
    super.key,
    required this.color,
    required this.title,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white70,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 13),
              ),
              Text(
                role,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}