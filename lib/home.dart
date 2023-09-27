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
    return ListView.builder(
        itemCount: superheros != null ? superheros!.length : 0,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  superheros != null ? superheros![index].name! : "Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  superheros != null ? superheros![index].power! : "Power",
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                leading: ClipOval(
                    child: Image.network(
                  superheros != null
                      ? superheros![index].url!
                      : "https://upload.wikimedia.org/wikipedia/en/2/23/Deadpool_%282016_poster%29.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                )),
              ),
              Divider(height: 20,color: Colors.black,thickness: 2,)
            ],
          );
        });
  }
}
