import 'package:flutter/material.dart';
import 'package:montada_app/task2/data/task_list.dart';
import 'package:montada_app/task2/widget/select_task_widget.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Card(
              elevation: 0.3,
              margin: const EdgeInsets.all(10),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text(
                      "18",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Friday",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "July 2019",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996&t=st=1684744160~exp=1684744760~hmac=a4948dcf344c7216b8076891a7e1da225f9072affe0dd25012732bb06bc32481"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SelectTaskWidget(
              taskModel: TaskList.morning,
                boxColor:  Colors.teal.withOpacity(0.8),
                titleTask: "In the morning",

            ),
            const SizedBox(
              height: 15,
            ),
            SelectTaskWidget(
                taskModel: TaskList.afterWork,
                titleTask: "After work",
                boxColor: Colors.white,

            ),
            const SizedBox(
              height: 15,
            ),
            SelectTaskWidget(
                taskModel: TaskList.goingToBed,
                titleTask: "Going the bed",
                boxColor: Colors.blue,

            ),
          ],
        ),
      ),
    );
  }
}
