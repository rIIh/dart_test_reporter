import 'package:allure_server_cli/src/logger.dart';
import 'package:http_parser/http_parser.dart';
import 'package:dio/dio.dart';

class UploadResult {
  final String fileName;
  final String uuid;

  const UploadResult({required this.fileName, required this.uuid});
}

class UploadCommand {
  final String file;

  UploadCommand({required this.file});

  Future<UploadResult?> execute(Dio client) async {
    try {
      final json = await client
          .post(
            '/result',
            data: FormData.fromMap(
              {
                'allureResults': await MultipartFile.fromFile(file,
                    contentType: MediaType.parse('application/zip')),
              },
            ),
          )
          .then((value) => value.data as Map<String, dynamic>);

      l.d("Successful upload: ${json.toString()}");

      return UploadResult(fileName: json['fileName'], uuid: json['uuid']);
    } on DioException catch (e, s) {
      if (e.response case Response response) {
        l.e(
          'Failed to upload: ${e.requestOptions.uri.toString()}\n${response.data}',
          stackTrace: s,
        );
      } else {
        rethrow;
      }
    } catch (e, s) {
      l.e('Failed to upload', error: e, stackTrace: s);
    }

    return null;
  }
}
