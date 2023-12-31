import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tch_indonesia/src/app/model/doctor_list.dart';
import 'package:tch_indonesia/src/app/resource/base_api.dart';

class DoctorListRepository extends Repository {
  DoctorListRepository({required super.dio});

  static final pathProduct = '${Api.urlApi}/api/restaurants';

  static DoctorListRepository instance = DoctorListRepository(dio: Api.dio);

  Future<List<DoctorList>> doctorListFetch({
    required String accessToken,
  }) async {
    try {
      final dummyClinic = <dynamic, dynamic>{
        'data': [
          {
            "id_doctor": "KMD-MRCCC33",
            "name": "Dr. Daniel Gunawan, SpPD",
            "description": "INTERNAL MEDICINE",
            "schedule_in": "2023-06-15T09:42:23.355Z",
            "schedule_out": "2023-06-15T09:42:23.355Z",
            "pricing": 500000,
            "photo":
                "https://images-tm.tempo.co/all/2020/11/14/756960/756960_1200.jpg",
            "rating": 3.7,
            "patient": 200,
            "flight_hours": 1000,
            "schedule_ready": {
              "schedule_one": "2023-06-15T09:42:23.355Z",
              "schedule_two": "2023-06-15T09:42:23.355Z",
              "schedule_three": "2023-06-15T09:42:23.355Z",
              "schedule_for": "2023-06-15T09:42:23.355Z",
              "schedule_five": "2023-06-15T09:42:23.355Z"
            },
            "clinic": {
              "id": 6,
              "attributes": {
                "name": "Clinic Medical Center",
                "description": "Specialist Kanker Dan Penyakit Dalam",
                "latitude": "-6.89382",
                "longitude": "110.985203",
                "address":
                    "Jl. Abdul Muis No.2-4Kel. Petojo SelatanKec. GambirJakarta Pusat",
                "createdAt": "2023-06-15T09:42:23.355Z",
                "updatedAt": "2023-08-02T11:19:07.756Z",
                "publishedAt": "2023-06-15T08:35:25.622Z",
                "photo":
                    "https://thumbs.dreamstime.com/b/asian-male-doctor-writing-clipboard-portrait-wearing-white-coat-stethoscope-looking-camera-smiling-against-165290492.jpg",
                "userId": "27",
                "rating": 3
              }
            }
          },
          {
            "id_doctor": "MRCCC123",
            "name": "Dr. Henry Riyanto, SpN, SubspNN(K), F.N.Onk",
            "description": "NEUROLOGY",
            "schedule_in": "2023-06-15T09:42:23.355Z",
            "schedule_out": "2023-06-15T09:42:23.355Z",
            "pricing": 700000,
            "photo":
                "https://jambiekspres.disway.id/upload/large/ecdf2f73370048e648581ff22c2945e7.png",
            "rating": 3.7,
            "patient": 200,
            "flight_hours": 1000,
            "schedule_ready": {
              "schedule_one": "2023-06-15T09:42:23.355Z",
              "schedule_two": "2023-06-15T09:42:23.355Z",
              "schedule_three": "2023-06-15T09:42:23.355Z",
              "schedule_for": "2023-06-15T09:42:23.355Z",
              "schedule_five": "2023-06-15T09:42:23.355Z"
            },
            "clinic": {
              "id": 6,
              "attributes": {
                "name": "Clinic Medical Center",
                "description": "Specialist Kanker Dan Penyakit Dalam",
                "latitude": "-6.89382",
                "longitude": "110.985203",
                "address":
                    "Jl. Abdul Muis No.2-4Kel. Petojo SelatanKec. GambirJakarta Pusat",
                "createdAt": "2023-06-15T09:42:23.355Z",
                "updatedAt": "2023-08-02T11:19:07.756Z",
                "publishedAt": "2023-06-15T08:35:25.622Z",
                "photo":
                    "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZG9jdG9yfGVufDB8fDB8fHww&w=1000&q=80",
                "userId": "27",
                "rating": 3
              }
            }
          },
          {
            "id_doctor": "MRCCC123",
            "name": "Dr. Masagus Mohammad Edsel Qasswara",
            "description": "GENERAL PRACTITIONER",
            "schedule_in": "2023-06-15T09:42:23.355Z",
            "schedule_out": "2023-06-15T09:42:23.355Z",
            "pricing": 500000,
            "photo":
                "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZG9jdG9yfGVufDB8fDB8fHww&w=1000&q=80",
            "rating": 3.7,
            "patient": 200,
            "flight_hours": 1000,
            "schedule_ready": {
              "schedule_one": "2023-06-15T09:42:23.355Z",
              "schedule_two": "2023-06-15T09:42:23.355Z",
              "schedule_three": "2023-06-15T09:42:23.355Z",
              "schedule_for": "2023-06-15T09:42:23.355Z",
              "schedule_five": "2023-06-15T09:42:23.355Z"
            },
            "clinic": {
              "id": 6,
              "attributes": {
                "name": "Clinic Medical Center",
                "description": "Specialist Kanker Dan Penyakit Dalam",
                "latitude": "-6.89382",
                "longitude": "110.985203",
                "address":
                    "Jl. Abdul Muis No.2-4Kel. Petojo SelatanKec. GambirJakarta Pusat",
                "createdAt": "2023-06-15T09:42:23.355Z",
                "updatedAt": "2023-08-02T11:19:07.756Z",
                "publishedAt": "2023-06-15T08:35:25.622Z",
                "photo":
                    "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZG9jdG9yfGVufDB8fDB8fHww&w=1000&q=80",
                "userId": "27",
                "rating": 3
              }
            }
          },
          {
            "id_doctor": "MRCCC123",
            "name": "ANDRIAN HOK HALIM, SPPD DR.",
            "description": "PENYAKIT DALAM",
            "schedule_in": "2023-06-15T09:42:23.355Z",
            "schedule_out": "2023-06-15T09:42:23.355Z",
            "pricing": 500000,
            "photo":
                "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZG9jdG9yfGVufDB8fDB8fHww&w=1000&q=80",
            "rating": 3.7,
            "patient": 200,
            "flight_hours": 1000,
            "schedule_ready": {
              "schedule_one": "2023-06-15T09:42:23.355Z",
              "schedule_two": "2023-06-15T09:42:23.355Z",
              "schedule_three": "2023-06-15T09:42:23.355Z",
              "schedule_for": "2023-06-15T09:42:23.355Z",
              "schedule_five": "2023-06-15T09:42:23.355Z"
            },
            "clinic": {
              "id": 6,
              "attributes": {
                "name": "Clinic Medical Center",
                "description": "Specialist Kanker Dan Penyakit Dalam",
                "latitude": "-6.89382",
                "longitude": "110.985203",
                "address":
                    "Jl. Abdul Muis No.2-4Kel. Petojo SelatanKec. GambirJakarta Pusat",
                "createdAt": "2023-06-15T09:42:23.355Z",
                "updatedAt": "2023-08-02T11:19:07.756Z",
                "publishedAt": "2023-06-15T08:35:25.622Z",
                "photo":
                    "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8ZG9jdG9yfGVufDB8fDB8fHww&w=1000&q=80",
                "userId": "27",
                "rating": 3
              }
            }
          }
        ]
      };

      // final response = await dio.get<Map<String, dynamic>>(
      //   pathProduct,
      //   options: Options(
      //     headers: {
      //       RequestHeader.authorization: 'Bearer $accessToken',
      //     },
      //   ),
      // );

      final product = <DoctorList>[];
      // final data = response.data!['data'] as List;
      final data = dummyClinic['data'] as List;

      for (final data in data) {
        product.add(DoctorList.fromJson(data as Map<String, dynamic>));
      }

      return product;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }

  Future<String> doctorListCreate({
    required String accessToken,
    required String id,
    required String no,
    required String name,
    required String type,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        pathProduct,
        options: Options(
          headers: {RequestHeader.authorization: 'Bearer $accessToken'},
        ),
        data: jsonEncode({
          'id': id,
          'name': name,
          'product_no': no,
          'type': type,
        }),
      );

      return result.data!['message'] as String;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }

  Future<String> doctorListUpdate({
    required String accessToken,
    required String idProduct,
    required String no,
    required String name,
    required String type,
  }) async {
    try {
      final result = await dio.put<Map<String, dynamic>>(
        '$pathProduct/$idProduct',
        options: Options(
          headers: {RequestHeader.authorization: 'Bearer $accessToken'},
        ),
        data: jsonEncode({
          'name': name,
          'product_no': no,
          'type': type,
        }),
      );
      return result.data!['message'] as String;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }

  Future<String> doctorListDelete({
    required String accessToken,
    required String id,
  }) async {
    try {
      final result = await dio.delete<Map<String, dynamic>>(
        '$pathProduct/$id',
        options: Options(
          headers: {RequestHeader.authorization: 'Bearer $accessToken'},
        ),
      );
      return result.data!['message'] as String;
    } catch (error) {
      throw checkErrorApi(error);
    }
  }
}
