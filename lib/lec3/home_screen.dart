import 'package:flutter/material.dart';
import 'package:montada_app/lec3/widget/single_info_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        // iconTheme: IconThemeData(color: Colors.black),
        // actions: [Icon(Icons.search)],
        // title: Text("Home Screen"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal,
        leading: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
        ),
      ),
      endDrawer: Drawer(),
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white60,
                  ),
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Card(
                        elevation: 4,
                        margin: EdgeInsets.all(30),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/comp_icon.png",
                                    width: 70,
                                    height: 70,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black.withOpacity(0.7)),
                                      ),
                                      Text(
                                        "\$69,43",
                                        style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "**** **** **** 0000",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.7)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("07/25"),
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.info))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                          elevation: 4,
                          margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Transaction history",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.7)),
                                  ),
                                  const    SizedBox(
                                    height: 10,
                                  ),
                                  const SingleInfoWidget(
                                      description: "from Dennis Roman",
                                      coast: "15.46",
                                      isPlus:true),
                                  const SingleInfoWidget(
                                      description: "to Norman Hassan",
                                      coast: "20.00",
                                      isPlus:false),
                                  const SingleInfoWidget(

                                      description: "to Rhino Shop",
                                      coast: "34.63",
                                      isPlus:false),
                                  const SingleInfoWidget(
                                      description: "from Erick Ling",
                                      coast: "47.00",
                                      isPlus:true),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
