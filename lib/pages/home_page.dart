import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:todoList/data/local/db_helper.dart';
import 'package:todoList/pages/task_page.dart';

class HomePageDesigning extends StatelessWidget {
  HomePageDesigning({super.key});
  DBHelper db = DBHelper.getInstance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white, size: 35),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "To Do List",
              style: TextStyle(
                fontFamily: 'MomoSignature',
                fontWeight: FontWeight.w600,
                fontSize: 25,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(iconSize: 35),
              icon: Icon(Icons.search),
              color: Colors.white,
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
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Column(
                children: [
                  const HeaderName(),
                  SizedBox(height: 10),
                  const SearchBox(),
                  SizedBox(height: 10),
                  Expanded(child: TaskCardDesign()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderName extends StatelessWidget {
  const HeaderName({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Task..",
            style: TextStyle(
              letterSpacing: 2,
              fontSize: 38,
              color: Colors.white,
              fontWeight: .bold,
              fontFamily: 'Ubuntu',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit_note, size: 35, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz, size: 35, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Colors.black12,
        filled: true,
        prefixIcon: Icon(Icons.add, size: 25, color: Colors.white),
        hintText: "Add a task..",
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

class TaskCardDesign extends StatelessWidget {
  const TaskCardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    var arrTask = [
      'Homework',
      'College',
      'Kitchen',
      'Groceries',
      'School',
      'Room',
      'Desk',
      'Kids Bedroom',
      'New Home',
      'Old House',
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
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, _, _) {
                          return const SubTaskPageDesigning();
                        },
                        transitionsBuilder: (_, animation, _, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                    FocusScope.of(context).unfocus();
                  },
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    arrTask[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Ubuntu',
                      fontSize: 25,
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
      itemCount: arrTask.length,
    );
  }
}
