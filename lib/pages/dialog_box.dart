import 'dart:ui';
import 'package:flutter/material.dart';

class TaskDialogBoxDesign extends StatelessWidget {
  const TaskDialogBoxDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: SizedBox(
          height: 400,
          width: 400,
          child: Card(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "College",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ubuntu',
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit_note,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1, color: Colors.white),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 285,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Text(
                        "Complete assignment No. 1",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Ubuntu',
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
