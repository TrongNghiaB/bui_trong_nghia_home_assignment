import 'package:flutter/material.dart';

class NextDayTemperatureField extends StatelessWidget {
  const NextDayTemperatureField({
    super.key,
    required this.day,
    required this.temperature,
  });

  final String day;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.w400);
    return Container(
      height: 80,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Colors.grey.withOpacity(0.3)),
      )),
      child: Row(
        children: [
          Expanded(
            child: Text(day, style: textStyle),
          ),
          Text('$temperature C', style: textStyle),
        ],
      ),
    );
  }
}
