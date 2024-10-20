import 'package:flutter/material.dart';
import 'package:my_melos_widgets/widgets.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn(
      {super.key,
      required this.callback,
      required this.title,
      this.isSmall = false});
  final String title;
  final VoidCallback callback;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isSmall ? 100 : 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [context.primary, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: isSmall ? context.bodyMedium : context.titleSmall,
            padding: EdgeInsets.all(isSmall ? 4 : 16),
            backgroundColor: context.primary.withOpacity(0.4),
            shadowColor: Colors.transparent),
        onPressed: callback,
        child: Text(title),
      ),
    );
  }
}