import 'package:lms/network/responsebean/IsinDetailResponseBean.dart';
import 'package:lms/pledge_eligibility/mutual_fund/IsinDetailRepository.dart';

class IsinDetailBloc{

  final isinDetailRepository = IsinDetailRepository();

  Future<IsinDetailResponseBean> isinDetails(isin) async{
    IsinDetailResponseBean wrapper = await isinDetailRepository.isinDetails(isin);
    return wrapper;
  }

}