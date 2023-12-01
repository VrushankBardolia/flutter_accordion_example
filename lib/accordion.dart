import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final Text title;
  final List<Widget> subTitle;
  double? borderRadius;
  Color? borderColor;
  Color? backgroundColor;

  Accordion({
    super.key,
    required this.title,
    required this.subTitle,
    this.borderRadius,
    this.borderColor,
    this.backgroundColor,
  });

  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   onTap:(){
    //     setState(()=> isExpended = !isExpended);
    //   },
    //   child: Container(
    //     padding: const EdgeInsets.all(14),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
    //       border: Border.all(color: widget.borderColor ?? Colors.black)
    //     ),
    //     child: Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text(widget.title,style: widget.headerTextStyle ?? Theme.of(context).textTheme.titleLarge),
    //             Icon(
    //                 isExpended
    //                     ? CupertinoIcons.chevron_up
    //                     :  CupertinoIcons.chevron_down
    //             ),
    //           ],
    //         ),
    //         if(isExpended){
    //           Text('subTitle')
    //         }
    //         // isExpended
    //         //     ? Text('subTitle')
    //         //     : null
    //       ],
    //     ),
    //   ),
    // );
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        border: Border.all(color: widget.borderColor ?? Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius ?? 12))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              setState(()=> isExpanded = !isExpanded );
            },
            child: Padding(
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
            Padding(
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
