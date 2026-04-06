

import 'package:bmi_calculator_ll/enum_active.dart';
import 'package:flutter/material.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({
    super.key,
    required this.age,
    required this.weight,
    required this.onAddAge,
    required this.onRemoveAge,
    required this.onAddWeight,
    required this.onRemoveWeight,
    required this.onTap,
    required this.activeCard,
  });
  final int age;
  final int weight;

  final VoidCallback onAddAge;
  final VoidCallback onRemoveAge;

  final VoidCallback onAddWeight;
  final VoidCallback onRemoveWeight;
  final ActiveCard activeCard;
  final Function(ActiveCard) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: WeightAgeCard(
            title: "WEIGHT",
            number: weight,
            isSelected: activeCard == ActiveCard.weight,
            onTap: () {
              onTap(ActiveCard.weight);
            },
            onAdd: () {
              onAddWeight();
              onTap(ActiveCard.weight);
            },
            onRemove: () {
              onRemoveWeight();
              onTap(ActiveCard.weight);
            },
          ),
        ),
        Expanded(
          
          child: WeightAgeCard(
            title: "AGE",
            number: age,
            isSelected: activeCard == ActiveCard.age,
            onTap: () {
              onTap(ActiveCard.age);
            },
            onAdd: () {
              onAddAge();
              onTap(ActiveCard.age);
            },
            onRemove: () {
              onRemoveAge();
              onTap(ActiveCard.age);
            },
          ),
        ),
      ],
    );
  }
}

class WeightAgeCard extends StatelessWidget {
  const WeightAgeCard({
    super.key,
    required this.title,
    required this.number,
    required this.onAdd,
    required this.onRemove,
    required this.isSelected,
    required this.onTap,
  });

  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final String title;
  final int number;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF17172F) : Color(0xFF090B24),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, color: Color(0xFF888797)),
            ),
            Text(
              number.toString(),
              style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFF4C4F5E),
                  radius: 30,
                  child: IconButton(
                    onPressed: onRemove,
                    icon: Icon(
                      Icons.remove,
                      size: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF4C4F5E),
                  child: IconButton(
                    onPressed: onAdd,
                    icon: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
