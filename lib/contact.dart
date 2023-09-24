import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:untitled/service/repo.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  var gender = 'Male';

  List<String> items = ['BScCSIT', 'BCA', 'BBS', 'BSW'];
  String? selectedItem = 'BScCSIT';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 40, right: 30),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                  hintText: 'Enter your first name',
                ),
                validator: (val) {
                  if (val != null) {
                    if (val.isEmpty) {
                      return 'First Name cannot be blank';
                    } else {
                      if (val.length < 3) {
                        return 'First Name should be greater than 2.';
                      }
                    }
                  } else {
                    return 'First Name cannot be null';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Middle Name',
                  hintText: 'Enter your middle name',
                ),
                validator: (val) {
                  if (val == null) {
                    return 'Middle Name cannot be null';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                  hintText: 'Enter your last name',
                ),
                validator: (val) {
                  if (val != null) {
                    if (val.isEmpty) {
                      return 'Last Name cannot be blank';
                    } else {
                      if (val.length < 3) {
                        return 'Last Name should be greater than 2.';
                      }
                    }
                  } else {
                    return 'Last Name cannot be null';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone no.',
                  hintText: 'Enter your phone number',
                ),
                validator: (val) {
                  if (val != null) {
                    if (val.isEmpty) {
                      return 'Phone no. cannot be blank';
                    } else {
                      if (val.length != 10) {
                        return 'Phone no. should be equal to 10.';
                      }
                    }
                  } else {
                    'Phone no. cannot be null';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.cyan,
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          gender = value.toString();
                        });
                      }
                    },
                  ),
                  const Text('Male'),
                  const SizedBox(
                    width: 20,
                  ),
                  Radio(
                    activeColor: Colors.cyan,
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          gender = value.toString();
                        });
                      }
                    },
                  ),
                  const Text('Female'),

                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('Faculty:'),
                  SizedBox(
                    width: 200,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(5),
                          borderSide:const BorderSide(color:Colors.green,width: 3) ,
                        ),
                      ),
                      value: selectedItem,
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                              fontSize: 15
                          ),
                        ),
                      ),
                      ).toList(),
                      onChanged: (item)=>setState(() {
                        selectedItem=item;
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  /*if (_formKey.currentState != null) {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  }*/
                  final sampleRepo=SampleRepository();
                  sampleRepo.sampleApiCall();
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
