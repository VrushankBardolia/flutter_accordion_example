// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final Text title;
  final List<Widget> subTitle;
  double? borderRadius;
  Color? borderColor;
  Color? titleBackgroundColor;
  Color? subtitleBackgroundColor;

  Accordion({
    super.key,
    required this.title,
    required this.subTitle,
    this.borderRadius,
    this.borderColor,
    this.titleBackgroundColor,
    this.subtitleBackgroundColor
  });

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: widget.borderColor ?? Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius ?? 12))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              setState(()=> isExpanded = !isExpanded );
            },
            child: Container(
              decoration: BoxDecoration(
                color: widget.titleBackgroundColor ?? Colors.grey.shade100,
                borderRadius: isExpanded ? BorderRadius.only(
                  topLeft: Radius.circular(widget.borderRadius ?? 12),
                  topRight: Radius.circular(widget.borderRadius ?? 12))
                    : BorderRadius.all(Radius.circular(widget.borderRadius ?? 12))
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.title,
                  Icon(isExpanded
                    ? Icons.keyboard_arrow_up_sharp
                    : Icons.keyboard_arrow_down_sharp
                  ),
                ],
              ),
            ),
          ),
          if(isExpanded)
            Container(
              decoration: BoxDecoration(
                color: widget.subtitleBackgroundColor ?? Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(widget.borderRadius ?? 12),
                  bottomLeft: Radius.circular(widget.borderRadius ?? 12))
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.subTitle
              )
            )
        ],
      ),
    );
  }
}
