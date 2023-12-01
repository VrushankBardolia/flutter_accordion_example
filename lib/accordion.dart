import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  TextStyle? headerTextStyle;
  double? borderRadius;
  Color? borderColor;

  Accordion({
    super.key,
    required this.title,
    this.headerTextStyle,
    this.borderRadius,
    this.borderColor
  });

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool isExpended = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        setState(()=> isExpended = !isExpended);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
          border: Border.all(color: widget.borderColor ?? Colors.black)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title,style: widget.headerTextStyle ?? Theme.of(context).textTheme.titleLarge),
              Icon(
                  isExpended
                      ? CupertinoIcons.chevron_up
                      :  CupertinoIcons.chevron_down
              ),
            ],
          ),
        ),
      ),
    );
  }
}
