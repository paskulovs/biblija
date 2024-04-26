import 'package:flutter/material.dart';
import 'package:biblija/config/constants.dart';

class QuickNavigationHeader extends StatelessWidget {
  final String text;
  final VoidCallback onTapRight;
  final VoidCallback onTapLeft;

  const QuickNavigationHeader({
    super.key,
    required this.text,
    required this.onTapRight,
    required this.onTapLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.defaultHeaderSize.height,
      color: Theme.of(context).dividerColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTapLeft,
            child: const Icon(Icons.keyboard_double_arrow_left),
          ),
          Text(text),
          InkWell(
            onTap: onTapRight,
            child: const Icon(Icons.keyboard_double_arrow_right),
          ),
        ],
      ),
    );
  }
}
