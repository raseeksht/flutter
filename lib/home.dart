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
  void initState(){
    getApiData();
    super.initState();


  }

  void getApiData()async {
    final sampleRepo = SampleRepository();
    final superHeroslist = await sampleRepo.sampleApiCall();
    setState(() {
      superheros = superHeroslist;
    });

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: superheros!=null? superheros!.length:0,
        itemBuilder: (context,index){

      return ListTile(
        title: Text(superheros!=null ? superheros![index].name! : "Name") ,
        subtitle: Text(superheros!=null ? superheros![index].power! : "Power") ,

      );
    });
  }
}
