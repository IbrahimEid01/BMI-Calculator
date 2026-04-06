import 'package:bmi_calculator_ll/enum_active.dart';
import 'package:flutter/material.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({
    super.key,
    required this.selectedGender,
    required this.onSelect,
  });

  final Gender selectedGender;
  final Function(Gender) onSelect;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: CardGender(
            icon: Icons.male,
            label: "MALE",
            isSelected: selectedGender == Gender.male,
            onTap: () {
              onSelect(Gender.male);
            },
          ),
        ),
        Expanded(
          child: CardGender(
            icon: Icons.female,
            label: "FEMALE",
            isSelected: selectedGender == Gender.female,
            onTap: () {
              onSelect(Gender.female);
            },
          ),
        ),
      ],
    );
  }
}

class CardGender extends StatelessWidget {
  const CardGender({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF17172F) : Color(0xFF090B24),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 110, color: Colors.white),
              Text(
                label,
                style: TextStyle(color: Color(0xFF888797), fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}