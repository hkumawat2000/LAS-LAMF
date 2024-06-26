import 'package:lms/network/requestbean/TopUpRequest.dart';
import 'package:lms/network/responsebean/TopUpResponse.dart';
import 'package:lms/util/base_dio.dart';
import 'package:lms/util/constants.dart';
import 'package:lms/util/strings.dart';
import 'package:dio/dio.dart';

class TopUpDao extends BaseDio {
  Future<TopUpResponse> submitTopUp(TopUpRequest topUpRequest) async {
    Dio dio = await getBaseDio();
    TopUpResponse wrapper = TopUpResponse();
    try {
      Response response = await dio.post(Constants.topUp, data: topUpRequest.toJson());
      if (response.statusCode == 200) {
        wrapper = TopUpResponse.fromJson(response.data);
        wrapper.isSuccessFull = true;
      } else {
        wrapper.isSuccessFull = false;
      }
    } on DioError catch (e) {
      if (e.response == null) {
        wrapper.isSuccessFull = false;
        wrapper.errorMessage = Strings.server_error_message;
        wrapper.errorCode = Constants.noInternet;
      } else {
        wrapper.isSuccessFull = false;
        wrapper.errorCode = e.response!.statusCode;
        wrapper.errorMessage = e.response!.data["message"];
      }
    }
    return wrapper;
  }
}
