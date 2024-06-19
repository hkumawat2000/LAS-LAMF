class Constants {
  static final int noInternet = 999;
  static final int customError = 888;
  static final int connectionTimeOut = 900000;
  static final String baseUrlProd = "https://spark.loans/";
  static final String baseUrlDev = "https://dev.sparklms.atritechnocrat.in/";
  static final String newUrlDev = "https://dev.spark.atriina.com/";
  static final String baseUrlUat = "https://uat.sparklms.atritechnocrat.in/";
  static final String newUrlUat = "https://uat.spark.loans/";
  static final String oldUrlUat = "https://uat-spark.atriina.com/";
  static final String newWwwUat = "https://www.uat-spark.atriina.com/";
  static final String userKyc = "api/method/lms.user.kyc";
  static final String myLoan = "api/method/lms.loan.my_loans";
  static final String securitiesList = "api/method/lms.user.securities";
  static final String approvedSecuritiesList = "api/method/lms.user.approved_securities";
  static final String cartUpsert = "api/method/lms.cart.upsert";
  static final String getTds = 'api/resource/TDS';
  static final String uploadTds = "api/method/lms.user.tds";
  static final String contactUsSendMessage = "api/method/frappe.www.contact.send_message";
  static final String contactUs = "/api/method/lms.user.contact_us";
  static final String contactUsOld = "/api/method/lms.user.contact_us_old";
  static final String logIn = "api/method/lms.auth.login";
  static final String getProfileSetAlert = "/api/method/lms.user.get_profile_set_alerts";
  static final String otpVerify = "api/method/lms.auth.verify_otp";
  static final String registration = "api/method/lms.auth.register";
  static final String setPin = "api/method/lms.user.set_pin";
  static final String payment = "https://api.razorpay.com/v1/orders";
  static final String eSign = "api/method/lms.loan.esign";
  static final String eSignSuccess = "api/method/lms.loan.esign_done";
  static final String withdrawDetails = "api/method/lms.loan.loan_withdraw_details";
  static final String withdrawOtp = "api/method/lms.loan.request_loan_withdraw_otp";
  static final String withdrawRequest = "api/method/lms.loan.loan_withdraw_request";
  static final String paymentRequest = "api/method/lms.loan.loan_payment";
  static final String loanDetails = "api/method/lms.loan.loan_details";
  static final String termsOfUse = "api/method/lms.auth.terms_of_use";
  static final String dashboard = "api/method/lms.user.dashboard";
  static final String loanSummary = "api/method/lms.user.loan_summary_dashboard";
  static final String weeklyPledgeSecurity = "/api/method/lms.user.weekly_pledged_security_dashboard";
  static final String topUp = "api/method/lms.loan.create_topup";
  static final String sellCollateralOtp = "/api/method/lms.loan.request_sell_collateral_otp";
  static final String sellCollateral = "/api/method/lms.loan.sell_collateral_request";
  static final String lenders = "/api/method/lms.user.all_lenders_list";
  static final String checkEligibility = "/api/method/lms.user.check_eligible_limit";
  static final String unpledgeDetails = "api/method/lms.loan.loan_unpledge_details";
  static final String forceUpdate = "/api/method/lms.user.get_app_version_details";
  static final String allLoanName = "api/method/lms.user.all_loans_list";
  static final String unpledgeOtp = "api/method/lms.loan.request_unpledge_otp";
  static final String unpledgeRequest = "api/method/lms.loan.loan_unpledge_request";
  static final String myPledgeSecurities = "api/method/lms.user.my_pledge_securities";
  static final String auPennyDrop = "/api/method/lms.user.au_penny_drop";
  static final String feedback = "/api/method/lms.user.feedback";
  static final String forgotPinOtp = "/api/method/lms.auth.request_forgot_pin_otp";
  static final String forgotPinVerify = "/api/method/lms.auth.verify_forgot_pin_otp";
  static final String getChoiceKyc = "/api/method/lms.user.get_choice_kyc";
  static final String kycSearch = "/api/method/lms.user.ckyc_search";
  static final String kycDownload = "/api/method/lms.user.ckyc_download";
  static final String kycDetails = "/api/method/lms.user.ckyc_consent_details";
  static final String atrinaBank = "/api/method/lms.user.get_bank_details";
  static final String updateProfileAndPin = "/api/method/lms.user.update_profile_pic_and_pin";
  static final String notificationList = "/api/method/lms.user.push_notification_list";
  static final String notificationReadOrClear = "/api/method/lms.user.read_or_clear_notifications";
  static final String bankMaster = "/api/method/lms.user.get_bank_ifsc_details";
  static final String dematDetails = "/api/method/lms.user.spark_demat_account";
  static final String dematAcDetails = "/api/method/lms.user.get_demat_details";
  static final String camsDetails = "/api/method/lms.user.update_mycams_email";
  static final String jiffyPlayStore = "https://play.google.com/store/apps/details?id=com.choiceequitybroking.jiffy";
  static final String jiffyAppStore = "https://apps.apple.com/us/app/jiffy-mobile-trading-app/id1327801261?ls=1";
  static final String getScheme = "/api/method/lms.user.schemes";
  static final String getSecurities = "api/method/lms.user.securities";
  static final String getSharesSecurities = "api/method/lms.user.shares_eligibility";
  static final String cartProcess = "api/method/lms.cart.process";
  static final String isinDetails = "/api/method/lms.user.isin_details";
  static final String consentText = "/api/method/lms.user.consent_details";
  static final String getPinCode = "/api/method/lms.user.pincode";
  static final String consentDetails = "/api/method/lms.user.ckyc_consent_details";
  static final String termsConditions = "api/method/lms.cart.get_tnc";
  static final String loanRenewalRequestOtp = "/api/method/lms.loan.request_loan_renewal_otp";
  static final String verifyOtpLoanRenewal = "/api/method/lms.loan.verify_loan_renewal_otp";
  static final String onBoarding = "/api/method/lms.auth.onboarding_screen";
}

class RegexValidator {
  static final String emailRegex = r'^([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Z|a-z]{2,})';
  static final String nameRegex = r'^[a-z A-Z,.\-]+$';
}

class ParametersConstants {
  static final String mobile = "mobile";
  static final String firebaseToken = "firebase_token";
  static final String otp = "otp";
  static final String pin = "pin";
  static final String pan = "pan_no";
  static final String birthDate = "dob";
  static final String loanNo = "loan_application_name";
  static final String fileId = "file_id";
  static final String loanName = "loan_name";
  static final String amount = "amount";
  static final String bankAccountName = "bank_account_name";
  static final String transactionId = "transaction_id";
  static final String marginShortfallLoanName = "loan_margin_shortfall_name";
  static final String acceptTerms = "accept_terms";
  static final String ckycNo = "ckyc_no";
  static final String userKycName = "user_kyc_name";
  static final String addressDetails = "address_details";
  static final String topUpApplicationName = "topup_application_name";
  static final String loanRenewalApplicationName = "loan_renewal_application_name";
  static final String search = "search";
  static final String viewMore = "view_more";
  static final String isForAlert = "is_for_alerts";
  static final String percentage = "percentage";
  static final String isForInternet = "is_for_interest";
  static final String lender = "lender";
  static final String isForRead = "is_for_read";
  static final String isForClear = "is_for_clear";
  static final String notificationName = "notification_name";
  static final String ifsc = "ifsc";
  static final String favId = "fav_id";
  static final String personalizedCheque = "personalized_cheque";
  static final String depository = "depository";
  static final String dpId = "dpid";
  static final String clientId = "client_id";
  static final String emailId = "email";
  static final String isin = "isin";
  static final String consentName = "consent_name";
  static final String pinCode = "pincode";
  static final String appVersion = "app_version";
  static final String platform = "platform";
  static final String level = "level";
  static final String demat = "demat";
}

class MessageCode {
  static final String success = "Success";
  static final String accountBlockMessage = "Your account has been locked and will resume after 60 seconds";
}
