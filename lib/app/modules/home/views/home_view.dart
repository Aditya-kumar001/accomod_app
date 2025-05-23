

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controllers/home_controller.dart';
import 'components/guest_picker.dart';
import 'components/image_carousel.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find room')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImageCarousel(context),
            const SizedBox(height: 16),
            Obx(() => controller.showPreference.value
                ? Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 212, 228),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildLocationField(),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: buildDateField(
                              'Check-in Date & Time', true),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: buildDateField(
                              'Checkout Date & Time', false),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: buildGuestPicker(controller),
                        ),
                        buildAirConditionedSwitch(),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () => controller.showPreferenceValue(),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 48),
                              elevation: 8,
                              shadowColor:
                                  const Color.fromARGB(255, 255, 213, 253)),
                          child: Text(
                            'Search',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                      ],
                    ),
                  )
                : SizedBox.shrink()
              ),
            
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best Place",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  _buildPlaceImage(
                    imageUrls: [
                      // Replace these with your own image URLs or asset paths
                      'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1465101178521-c1a9136a3b99?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?auto=format&fit=crop&w=800&q=80',
                    ],
                    placeNames: [
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                    ]
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Best hotel",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  _buildPlaceImage(
                    imageUrls: [
                      // Replace these with your own image URLs or asset paths
                      'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1465101178521-c1a9136a3b99?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?auto=format&fit=crop&w=800&q=80',
                    ],
                    placeNames: [
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                    ]
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sightseeing",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  _buildPlaceImage(
                    imageUrls: [
                      // Replace these with your own image URLs or asset paths
                      'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1465101178521-c1a9136a3b99?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?auto=format&fit=crop&w=800&q=80',
                    ],
                    placeNames: [
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                    ]
                  ),
                ],
              ),
            ),
            buildImageCarousel(context),
            
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Advantures",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(fontSize: 12, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  _buildPlaceImage(
                    imageUrls: [
                      // Replace these with your own image URLs or asset paths
                      'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1465101178521-c1a9136a3b99?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?auto=format&fit=crop&w=800&q=80',
                      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?auto=format&fit=crop&w=800&q=80',
                    ],
                    placeNames: [
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                      "sdfjg",
                      "siufdhg"
                    ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Obx(() => !controller.showPreference.value
          ? FloatingActionButton.extended(
              icon: Icon(Icons.tune),
              label: Text('Set Preference'),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              onPressed: () => controller.showPreferenceValue(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            )
          : SizedBox.shrink()),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.bed), label: 'Rooms'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.directions_car), label: 'Car booking'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.local_car_wash), label: 'Car washing'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person), label: 'My profile'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.settings), label: 'Settings'),
      //   ],
      // ),
    );
  }
  
    
  Widget _buildPlaceImage({
    required List<String> imageUrls,
    required List<String> placeNames,
  }) {
    // Ensure both lists are of the same length
    final int itemCount = imageUrls.length < placeNames.length ? imageUrls.length : placeNames.length;

    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrls[index],
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  placeNames[index],
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }



  // --- IMAGE CAROUSEL WIDGET ---
  Widget buildImageCarousel(BuildContext context) {
    return ImageCarousel(
      imageUrls: [
        // Replace these with your own image URLs or asset paths
        'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
        'https://images.unsplash.com/photo-1465101046530-73398c7f28ca?auto=format&fit=crop&w=800&q=80',
        'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?auto=format&fit=crop&w=800&q=80',
        'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&w=800&q=80',
        'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?auto=format&fit=crop&w=800&q=80',
        'https://images.unsplash.com/photo-1465101178521-c1a9136a3b99?auto=format&fit=crop&w=800&q=80',
        'https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?auto=format&fit=crop&w=800&q=80',
        'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?auto=format&fit=crop&w=800&q=80',
      ],
      height: MediaQuery.of(context).size.height * 0.3,
      borderRadius: 18,
      autoPlayInterval: const Duration(milliseconds: 1500),
    );
  }

  // --- REMAINDER OF YOUR CODE UNCHANGED ---

  Widget buildLocationField() {
    return Obx(() => TextFormField(
      decoration: InputDecoration(
        labelText: 'Where do you want',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onChanged: controller.updateLocation,
      initialValue: controller.location.value,
    ));
  }

  Widget buildDateField(String label, bool isCheckIn) {
    return Obx(() {
      var date = isCheckIn ? controller.checkInDate.value : controller.checkOutDate.value;
      return ListTile(
        leading: Icon(Icons.calendar_today),
        title: Text(label),
        subtitle: Text(date != null ? DateFormat('dd MMM yyyy, hh:mm a').format(date) : 'Select date & time'),
        onTap: () async {
          DateTime? picked = await showDatePicker(
            context: Get.context!,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime(2030),
          );
          if (picked != null) {
            TimeOfDay? time = await showTimePicker(context: Get.context!, initialTime: TimeOfDay.now());
            if (time != null) {
              controller.updateDate(
                  isCheckIn,
                  DateTime(picked.year, picked.month, picked.day, time.hour, time.minute));
            }
          }
        },
      );
    });
  }

  

  Widget buildAirConditionedSwitch() {
    return Obx(() => SwitchListTile(
      title: Text('Air conditioned'),
      value: controller.isAirConditioned.value,
      onChanged: controller.isAirConditioned,
    ));
  }
}
