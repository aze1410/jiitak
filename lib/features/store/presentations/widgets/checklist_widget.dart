import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChecklistCol extends StatefulWidget {
  final String heading;
  final List<String> options;

  ChecklistCol({required this.heading, required this.options});

  @override
  _ChecklistColState createState() => _ChecklistColState();
}

class _ChecklistColState extends State<ChecklistCol> {
  late List<bool> optionSelections;

  @override
  void initState() {
    super.initState();
    optionSelections =
        List<bool>.generate(widget.options.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.heading,
                style: TextStyle(
                  fontSize: 14.0,
                ),
                textScaleFactor: 1,
              ),
              Text(
                "*",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.pink.shade400,
                ),
                textScaleFactor: 1,
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: (widget.options.length / 4).ceil(),
            itemBuilder: (context, rowIndex) {
              return Row(
                children: List.generate(4, (colIndex) {
                  final index = rowIndex * 4 + colIndex;
                  if (index < widget.options.length) {
                    return Row(
                      children: [
                        Checkbox(
                          side: BorderSide(
                              color: Colors.grey.shade400,
                              width: 1.5 // Border color when unselected
                              ),
                          value: optionSelections[index],
                          activeColor: Colors.orange.shade800,
                          hoverColor: Colors.grey, // Color when selected
                          checkColor: Colors
                              .white, // Color of the checkmark when selected
                          onChanged: (bool? value) {
                            setState(() {
                              optionSelections[index] = value ?? false;
                            });
                          },
                        ),
                        Text(
                          widget.options[index],
                          style: TextStyle(fontSize: 14.0),
                          textScaleFactor: 1,
                        )
                      ],
                    );
                  } else {
                    return SizedBox();
                  }
                }),
              );
            },
          )
        ],
      ),
    );
  }
}
