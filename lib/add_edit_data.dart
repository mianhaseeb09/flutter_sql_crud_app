import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddEditPage extends StatefulWidget {
  const AddEditPage({Key? key}) : super(key: key);

  @override
  _AddEditPageState createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController addressController=TextEditingController();

  addEditData() async {
    final response = await http.post(Uri.parse("http://192.168.100.11/flutter_php_crud/add_contact.php"), body: {
        'name' : nameController.text,
        'phone' : phoneController.text,
        'address' : addressController.text,
    });



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Add data To Sql'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Phone',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Address',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                addEditData();
                Navigator.pop(context);
              },
              child: Text('Save Data'),


            ),
          )
        ],
      ),
    );
  }
}
