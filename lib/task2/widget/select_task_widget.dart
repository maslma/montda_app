import 'package:flutter/material.dart';
import 'package:montada_app/task2/data/task_model.dart';

class SelectTaskWidget extends StatelessWidget {
  final List<TaskModel> taskModel;
  final Color boxColor;
  final String titleTask;
 


  const SelectTaskWidget(
      {Key? key, 
        required this.taskModel,
        required this.boxColor,
      required this.titleTask,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(46),
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  titleTask,
                  style: TextStyle(
                    color: titleTask == "After work" ? Colors.black :  Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "10 may 2019",
                style: TextStyle(
                  color: titleTask == "After work" ? Colors.grey : Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Column(
            children: taskModel
                .map((element) => Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration:titleTask == "After work"  ?BoxDecoration(
                    color: element.isCompleted ? Colors.orange : boxColor,
                    border: Border.all(color:titleTask == "After work" ? Colors.grey: Colors.white),
                    shape: BoxShape.circle,
                  ):BoxDecoration(
                    color: element.isCompleted ? Colors.white : boxColor,
                    border: Border.all(color:titleTask == "After work" ? Colors.grey: Colors.white),
                    shape: BoxShape.circle,
                  ),
                  width: 20,
                  height: 20,
                  child: Icon(
                    Icons.done,
                    color: titleTask == "After work"
                        ? element.borderColor
                        : boxColor,
                    size: 14,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  element.title,
                  style: TextStyle(
                    color: element.isCompleted
                        ? element.textColorDone
                        : element.textColorEnd,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    decoration:
                    element.isCompleted ? TextDecoration.lineThrough : null,
                  ),
                ),
              ],
            ))
                .toList(),
          ),
          boxColor ==Colors.white?Icon(Icons.more_vert,color: Colors.grey,) :Icon(Icons.more_vert,color: Colors.white,)
        ],
      ),
    );
  }
}
