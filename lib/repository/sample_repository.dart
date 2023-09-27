

import 'package:untitled/model/sample_model.dart';
import 'package:untitled/service/dio_service.dart';

class SampleRepository{
  Future<List<Superheros>?> sampleApiCall() async {
    final response = await dioService.dio.get("https://protocoderspoint.com/jsondata/superheros.json");
    final sampleModel =  SampleModel.fromJson(response.data as Map<String,dynamic>);
    return sampleModel.superheros;

  }
}