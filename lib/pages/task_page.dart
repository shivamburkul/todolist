import 'package:flutter/material.dart';

import 'dialog_box.dart';

class SubTaskPageDesigning extends StatelessWidget {
  const SubTaskPageDesigning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "College",
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: .bold,
                fontFamily: 'Ubuntu',
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
                FocusScope.of(context).unfocus();
              },
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
      ),
      body: const BodyDesign(),
    );
  }
}

class BodyDesign extends StatelessWidget {
  const BodyDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          Image.asset(
            'assets/images/background.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
              child: Column(
                children: [
                  const TextBoxSubTask(),
                  SizedBox(height: 10),
                  Expanded(child: SubTaskCardDesign()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SubTaskCardDesign extends StatelessWidget {
  const SubTaskCardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    var arrSubTasks = [
      'Complete assignment No. 1',
      'Perform practical 5',
      'Check Assignment 1 to 3',
      'Cricket Match Registration',
      'NSS Work',
      'Take Medicines',
      'Complete Practical 4',
      'Talk To Mam',
      'Doubt Solution From Teacher',
      'Complete File',
    ];
    return ListView.builder(
      itemBuilder: (context, index) {
        return SizedBox(
          height: 70,
          width: double.infinity,
          child: Card(
            color: Colors.transparent,
            margin: EdgeInsets.only(bottom: 10),
            child: Center(
              child: ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                title: InkWell(
                  onTap: () {
                    {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return TaskDialogBoxDesign();
                        },
                      );
                    }
                  },
                  child: Text(
                    arrSubTasks[index],
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
                contentPadding: EdgeInsetsGeometry.fromLTRB(5, 0, 5, 0),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.white, size: 25),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: arrSubTasks.length,
    );
  }
}

class TextBoxSubTask extends StatelessWidget {
  const TextBoxSubTask({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Colors.black12,
        filled: true,
        prefixIcon: Icon(Icons.add, size: 25, color: Colors.white),
        hintText: "Add a sub task..",
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.check, color: Colors.white, size: 25),
        ),
      ),
    );
  }
}
