import 'package:flutter/material.dart';
import 'package:untitled/model/sample_model.dart';
import 'package:untitled/repository/sample_repository.dart';

class Home extends StatefulWidget {
  Home({super.key});

  List<Superheros>? superheros;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Superheros>? superheros;

  @override
  void initState() {
    getApiData();
    super.initState();
  }

  void getApiData() async {
    final sampleRepo = SampleRepository();
    final superHeroslist = await sampleRepo.sampleApiCall();
    setState(() {
      superheros = superHeroslist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection:  ,
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Wrap(
            children: [
              FractionallySizedBox(
                widthFactor: 0.25,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child: Text("hello 1"),
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.25,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child: Text("hello 1"),
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.25,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child: Text("hello 1"),
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.25,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child: Text("hello 1"),
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.25,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child: Text("hello 1"),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );


  }
}
