import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_room_list_controller.dart';

class SearchRoomListView extends GetView<SearchRoomListController> {
  const SearchRoomListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                filterSection(context, controller.sortList, "Sort", Icons.swap_calls_rounded),
                filterSection(context, controller.fliterList, "Filter", Icons.filter_alt_rounded),
                filterSection(context, controller.mapsList, "Maps", Icons.map_rounded)
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
             Expanded(
               child: ListView.builder(
                
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) =>  Container(
                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
                  height: MediaQuery.of(context).size.height * 0.225,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.35,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.59,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                    ],
                  )
                ),
                
              ),
             )
          ],
        ),
      ),
    );
  }

  GestureDetector filterSection(BuildContext context,function, title, IconData icon) {
    return GestureDetector(
      onTap: function,
      child: Container(
        padding: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height * 0.04,
        width: MediaQuery.of(context).size.width * 0.29,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black
          ),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon,size: 20),
            
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
