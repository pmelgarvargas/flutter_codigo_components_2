import 'package:codigo2_components_2/widgets/item_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {


  List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "type": "Sent",
      "description": "Sending Payment to Clients",
    },
    {
      "id": 2,
      "type": "Receive",
      "description": "Receiving Salary from company",
    },
    {
      "id": 3,
      "type": "Loan",
      "description": "Loan for the Car",
    },
    {
      "id": 4,
      "type": "Receive",
      "description": "Receiving Salary from company 2",
    },
    {
      "id": 5,
      "type": "Sent",
      "description": "Sending Payment to Clients 2",
    },
    {
      "id": 6,
      "type": "Loan",
      "description": "Loan for the Car",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F8FE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(14.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff3D4584).withOpacity(0.14),
                        offset: const Offset(0, 7.0),
                        blurRadius: 16.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.search,
                            color: Color(0xff3D4584),
                            size: 18.0,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xff3D4584),
                            size: 18.0,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.black12,
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const Text(
                        "Hira Riaz",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20.0,
                            color: Color(0xff3D4584)),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      const Text(
                        "UX/UI Designer",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 11.0,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(
                        height: 36.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "\$8900",
                                style: TextStyle(
                                  color: Color(0xff3D4584),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Income",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black.withOpacity(0.70),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 34.0,
                            width: 34.0,
                            child: VerticalDivider(
                              color: Colors.black87.withOpacity(0.3),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "\$8900",
                                style: TextStyle(
                                  color: Color(0xff3D4584),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Income",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black.withOpacity(0.70),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 34.0,
                            width: 34.0,
                            child: VerticalDivider(
                              color: Colors.black87.withOpacity(0.3),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "\$8900",
                                style: TextStyle(
                                  color: Color(0xff3D4584),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                "Income",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.black.withOpacity(0.70),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 36.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Overview",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                            color: Color(0xff3D4584),
                          ),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Icon(
                          Icons.notification_add_outlined,
                          size: 20.0,
                          color: Color(0xff3D4584),
                        ),
                      ],
                    ),
                    const Text(
                      "Set 12, 2022",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0,
                        color: Color(0xff3D4584),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22.0,
                ),
                // ...data.map((e) => ItemListWidget()).toList(),
                //...List.generate(data.length, (index) => ItemListWidget()),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index){
                    return ItemListWidget(
                      item: data[index],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
