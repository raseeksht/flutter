import 'package:flutter/material.dart';
import 'package:untitled/common/View_utils/common_card.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              FractionallySizedBox(
                  widthFactor: 0.25,
                  child: CommonCard(
                    paddingValue: 10,
                    elevation: 8,
                    cardChild: ListTile(
                      leading: Icon(Icons.verified_user, color: Colors.blueAccent),
                      title: Text("Total Products"),
                      subtitle: Text("10"),
                    )
                  )),
              FractionallySizedBox(
                  widthFactor: 0.25,
                  child: CommonCard(
                    paddingValue: 10,
                    elevation: 8,
                    cardChild: Text("hello 2"),
                  )),
              FractionallySizedBox(
                  widthFactor: 0.25,
                  child: CommonCard(
                    paddingValue: 10,
                    elevation: 8,
                    cardChild: Text("hello 3"),
                  )),
              FractionallySizedBox(
                  widthFactor: 0.25,
                  child: CommonCard(
                    paddingValue: 10,
                    elevation: 8,
                    cardChild: Text("hello 4"),
                  )),
              FractionallySizedBox(
                  widthFactor: 0.25,
                  child: CommonCard(
                    paddingValue: 10,
                    elevation: 8,
                    cardChild: Text("hello 5"),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Data Summary",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(label: Text("SN")),
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Course")),
                DataColumn(label: Text("Semester")),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Raseek")),
                  DataCell(Text("Bsc. CSIT")),
                  DataCell(Text("5th"))
                ]),
                DataRow(cells: [
                  DataCell(Text("2")),
                  DataCell(Text("Shirish")),
                  DataCell(Text("Bsc. CSIT")),
                  DataCell(Text("5th"))
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
