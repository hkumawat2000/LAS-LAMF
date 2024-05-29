import 'dart:io';

import 'package:lms/network/requestbean/LoanStatementRequestBean.dart';
import 'package:lms/network/responsebean/CommonResponse.dart';
import 'package:lms/network/responsebean/LoanStatementResponseBean.dart';
import 'package:lms/network/responsebean/RecentTransactionResponseBean.dart';
import 'package:lms/util/base_dio.dart';
import 'package:lms/util/constants.dart';
import 'package:lms/util/strings.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class LoanStatementDao with BaseDio {

  Future<LoanStatementResponseBean> getLoanStatements(
      LoanStatementRequestBean loanStatementRequestBean) async {
    Dio dio = await getBaseDio();
    LoanStatementResponseBean wrapper = LoanStatementResponseBean();
    LoanStatementRequestBean statementRequestBean = LoanStatementRequestBean(
        loanName: loanStatementRequestBean.loanName,
        type: loanStatementRequestBean.type,
        duration: null,
        fileFormat: "",
        fromDate: null,
        toDate: null,
        isEmail: 0,
        isDownload: 0);
    try {
      Response response = await dio.get("api/method/lms.loan.loan_statement",
          queryParameters: statementRequestBean.toJson()
          );
      if (response.statusCode == 200) {
        wrapper = LoanStatementResponseBean.fromJson(response.data);
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
        if (e.response!.data != null) {
          wrapper.errorMessage = e.response!.data["message"];
        } else {
          wrapper.errorMessage = e.response!.statusMessage;
        }
      }
    }
    return wrapper;
  }

  Future<LoanStatementResponseBean> submitLoanStatements(
      LoanStatementRequestBean loanStatementRequestBean) async {
    Dio dio = await getBaseDio();
    LoanStatementResponseBean wrapper = LoanStatementResponseBean();
    try {
      Response response = await dio.get("api/method/lms.loan.loan_statement",
          queryParameters: loanStatementRequestBean.toJson()
      );
      if (response.statusCode == 200) {
        wrapper = LoanStatementResponseBean.fromJson(response.data);
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
        if (e.response!.data != null) {
          wrapper.errorMessage = e.response!.data["message"];
        } else {
          wrapper.errorMessage = e.response!.statusMessage;
        }
      }
    }
    return wrapper;
  }

  Future<RecentTransactionResponseBean> getRecentTransactions(LoanStatementRequestBean loanStatementRequestBean) async {
    Dio dio = await getBaseDio();
    RecentTransactionResponseBean wrapper = RecentTransactionResponseBean();
    LoanStatementRequestBean statementRequestBean = LoanStatementRequestBean(
        loanName: loanStatementRequestBean.loanName,
        type: loanStatementRequestBean.type,
        duration: null,
        fileFormat: "",
        fromDate: null,
        toDate: null,
        isEmail: 0,
        isDownload: 0);
    try {
      Response response = await dio.get("api/method/lms.loan.loan_statement",
          queryParameters: statementRequestBean.toJson()
      );
      if (response.statusCode == 200) {
        wrapper = RecentTransactionResponseBean.fromJson(response.data);
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
        if (e.response!.data != null) {
          wrapper.errorMessage = e.response!.data["message"];
        } else {
          wrapper.errorMessage = e.response!.statusMessage;
        }
      }
    }
    return wrapper;
  }
}
