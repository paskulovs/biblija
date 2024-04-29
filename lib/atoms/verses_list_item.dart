import 'package:flutter/material.dart';

class VersesListItem extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool selected;

  const VersesListItem({
    super.key,
    required this.text,
    this.textStyle,
    this.onTap,
    this.onLongPress,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      titleTextStyle: textStyle,
      dense: true,
      onTap: onTap,
      onLongPress: onLongPress,
      selected: selected,
      selectedTileColor: Theme.of(context).primaryColor.withOpacity(0.2),
    );
  }
}
