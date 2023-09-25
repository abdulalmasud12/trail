import 'package:flutter/material.dart';

class LocationAndCategory extends StatefulWidget {
  const LocationAndCategory({Key? key}) : super(key: key);

  @override
  State<LocationAndCategory> createState() => _LocationAndCategoryState();
}

class _LocationAndCategoryState extends State<LocationAndCategory> {
  String? division = "Division";
  String? district = "District";
  String? upazilla = "Upazilla";
  String? area = "Area";

  // Initialize the selected category with "Sublet"
  String? selectedCategory;

  List<String> _division = [
    "Division",
    "Dhaka",
    "Chittagong",
    "Sylhet",
    "Cox's Bazar",
    "Rangpur",
    "Khulna",
    "Barisal",
    "Mymensingh",
    "Rajshahi",
    "Jessore",
  ];
  List<String> _district = [
    "District",
    "Dhaka",
    "Chittagong",
    "Sylhet",
    "Cox's Bazar",
    "Rangpur",
    "Khulna",
    "Barisal",
    "Mymensingh",
    "Rajshahi",
    "Jessore",
  ];
  List<String> _upazilla = [
    "Upazilla",
    "Dhaka",
    "Chittagong",
    "Sylhet",
    "Cox's Bazar",
    "Rangpur",
    "Khulna",
    "Barisal",
    "Mymensingh",
    "Rajshahi",
    "Jessore",
  ];
  List<String> _area = [
    "Area",
    "Dhaka",
    "Chittagong",
    "Sylhet",
    "Cox's Bazar",
    "Rangpur",
    "Khulna",
    "Barisal",
    "Mymensingh",
    "Rajshahi",
    "Jessore",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location and Category'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Location Dropdowns
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: division,
                items: _division.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    division = newValue;
                  });
                },
              ),
              DropdownButton<String>(
                value: district,
                items: _district.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    district = newValue;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: upazilla,
                items: _upazilla.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    upazilla = newValue;
                  });
                },
              ),
              DropdownButton<String>(
                value: area,
                items: _area.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    area = newValue;
                  });
                },
              ),
            ],
          ),

          // Category Radio Buttons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Category:',
                  style: TextStyle(fontSize: 20),
                ),
                RadioListTile<String>(
                  title: Text('Sublet'),
                  value: 'Sublet',
                  groupValue: selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: Text('Family'),
                  value: 'Family',
                  groupValue: selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: Text('Bachelor'),
                  value: 'Bachelor',
                  groupValue: selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: Text('Flat'),
                  value: 'Flat',
                  groupValue: selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

