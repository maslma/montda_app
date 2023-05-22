import 'package:flutter/material.dart';

class SingleInfoWidget extends StatelessWidget {
  const SingleInfoWidget(
      {Key? key,
        required this.description,
        required this.coast, required this.isPlus,
      })
      : super(key: key);
  final String description;
  final String coast;
  final bool isPlus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isPlus?"Received":"Send",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4,),
              Text(
                description,
                style:
                TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.7)),
              ),
            ],
          ),
          Text(
            isPlus?"+ \$$coast":"- \$$coast",
            style: TextStyle(color: isPlus?Colors.green:Colors.red),
          ),
        ],
      ),
    );
  }
}