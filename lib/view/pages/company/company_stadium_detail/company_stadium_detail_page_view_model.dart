
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/company/my_company_stadium_update/my_company_stadium_update.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

final companyStadiumDetailPageProvider = StateNotifierProvider<companyStadiumDetailPageViewModel, CompanyStadiumDetailPageModel?>((ref) {
  return companyStadiumDetailPageViewModel(null);
});


class CompanyStadiumDetailPageModel {
  MyCompanyStadiumUpdate myCompanyStadiumUpdate;

  CompanyStadiumDetailPageModel({
    required this.myCompanyStadiumUpdate
  });
}

class companyStadiumDetailPageViewModel extends StateNotifier<CompanyStadiumDetailPageModel?> {
  companyStadiumDetailPageViewModel(super.state);

  void notifyInit(MyCompanyStadiumUpdate myCompanyStadiumUpdate) async {
    state = CompanyStadiumDetailPageModel(myCompanyStadiumUpdate: myCompanyStadiumUpdate);
  }
}