// ignore_for_file: file_names

import 'package:news/utils/api.dart';
import 'package:news/utils/strings.dart';

class SurveyQuestionRemoteDataSource {
  Future<dynamic> getSurveyQuestions({required String langId}) async {
    try {
      final body = {LANGUAGE_ID: langId};
      final result = await Api.sendApiRequest(body: body, url: Api.getQueApi, isGet: true);

      return result;
    } catch (e) {
      throw ApiMessageAndCodeException(errorMessage: e.toString());
    }
  }
}
