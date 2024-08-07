// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:lms/aa_getx/core/utils/type_def.dart';
import 'package:lms/aa_getx/core/utils/usecase.dart';
import 'package:lms/aa_getx/modules/kyc/domain/entities/kyc_download_response_entity.dart';
import 'package:lms/aa_getx/modules/kyc/domain/entities/request/download_kyc_request_entity.dart';
import 'package:lms/aa_getx/modules/kyc/domain/repositories/kyc_repository.dart';

/// use case is a class responsible for encapsulating a specific piece of business logic or 
/// a particular operation that your application needs to perform.
/// It acts as a bridge between the presentation
/// layer and the data layer.
class DownloadKycUsecase implements UsecaseWithParams<KycDownloadResponseEntity,KycDownloadParams>{
	  
   final KycRepository kycRepository;
   DownloadKycUsecase(this.kycRepository);

   @override
  ResultFuture<KycDownloadResponseEntity> call(params)async {
    return await kycRepository.kycDownload(params.downloadKycRequestEntity);
  }
}

class KycDownloadParams {
  final DownloadKycRequestEntity downloadKycRequestEntity;
  KycDownloadParams({
    required this.downloadKycRequestEntity,
  });
  
}