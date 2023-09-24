

import 'package:untitled/service/dio_service.dart';

class SampleRepository{
  void sampleApiCall() async {
    final response = await dioService.dio.get("https://reqres.in/api/users?page=1");
    print(response);
  }
}