import 'package:lms/network/responsebean/CreateContactResponse.dart';
import 'package:lms/network/responsebean/ForceUpdateResponse.dart';
import 'package:lms/network/responsebean/LoanSummaryResponseBean.dart';
import 'package:lms/network/responsebean/NewDashboardResponse.dart';
import 'package:lms/network/responsebean/WeeklyPledgedSecurityResponse.dart';
import 'package:lms/util/base_dio.dart';
import 'package:lms/util/constants.dart';
import 'package:lms/util/strings.dart';
import 'package:dio/dio.dart';

class NewDashboardDao extends BaseDio{

  Future<NewDashboardResponse> getDashboardData() async {
    Dio dio = await getBaseDio();
    NewDashboardResponse wrapper = NewDashboardResponse();
    try {
      Response response = await dio.get(Constants.dashboard);
      if (response.statusCode == 200) {
        wrapper = NewDashboardResponse.fromJson(response.data);
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


  Future<WeeklyPledgedSecurityResponse> getWeeklyPledgedData() async {
    Dio dio = await getBaseDio();
    WeeklyPledgedSecurityResponse wrapper = WeeklyPledgedSecurityResponse();
    try {
      Response response = await dio.get(Constants.weeklyPledgeSecurity);
      if (response.statusCode == 200) {
        wrapper = WeeklyPledgedSecurityResponse.fromJson(response.data);
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
        wrapper.errorMessage = e.response!.statusMessage;
      }
    }
    return wrapper;
  }


  Future<LoanSummaryResponseBean> getLoanSummaryData() async {
    Dio dio = await getBaseDio();
    LoanSummaryResponseBean wrapper = LoanSummaryResponseBean();
    try {
      Response response = await dio.get(Constants.loanSummary);
      if (response.statusCode == 200) {
        wrapper = LoanSummaryResponseBean.fromJson(response.data);
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
        wrapper.errorMessage = e.response!.statusMessage;
      }
    }
    return wrapper;
  }

  Future<ForceUpdateResponse> forceUpdate() async {
    Dio dio = await getBaseDio();
    ForceUpdateResponse wrapper = ForceUpdateResponse();
    try {
      Response response = await dio.get(Constants.forceUpdate);
      if (response.statusCode == 200) {
        wrapper = ForceUpdateResponse.fromJson(response.data);
        wrapper.isSuccessFull = true;
      } else {
        wrapper.isSuccessFull = false;
      }
    } on DioError catch (e) {
      if (e.response == null) {
        wrapper.isSuccessFull = false;
        wrapper.errorMessage = Strings.server_error;
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