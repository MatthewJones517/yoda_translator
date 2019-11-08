import 'api_provider.dart';
import '../models/translation_model.dart';

class Repository {
  Future<TranslationModel> callAPI(String text) async {
    APIProvider apiProvider = APIProvider();

    Map<String, dynamic> apiResponse = await apiProvider.callAPI(text);

    return TranslationModel.fromJSON(apiResponse);
  }
}
