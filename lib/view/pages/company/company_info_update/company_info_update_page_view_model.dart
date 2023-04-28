
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/model/user/user.dart';

final companyInfoUpdatePageProvider = StateNotifierProvider<CompanyInfoUpdatePageViewModel, CompanyInfoUpdatePageModel?>((ref) {
  Logger().d("companyInfoUpdatePageProvider");
  return CompanyInfoUpdatePageViewModel(null);
});

// 창고 데이터
class CompanyInfoUpdatePageModel{
  User user;
  CompanyInfoUpdatePageModel({required this.user});
}

class CompanyInfoUpdatePageViewModel extends StateNotifier<CompanyInfoUpdatePageModel?>{
  CompanyInfoUpdatePageViewModel(super.state);

  void notifyInit(User user) async{
    Logger().d("notifyInit");
    state = CompanyInfoUpdatePageModel(user: user);
  }

}