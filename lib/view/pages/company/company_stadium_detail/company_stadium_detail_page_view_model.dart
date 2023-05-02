
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

final companyStadiumDetailPageProvider = StateNotifierProvider<companyStadiumDetailPageViewModel, CompanyStadiumDetailPageModel?>((ref) {
  return companyStadiumDetailPageViewModel(null);
});


class CompanyStadiumDetailPageModel {
  Stadium stadium;

  CompanyStadiumDetailPageModel({
    required this.stadium
  });
}

class companyStadiumDetailPageViewModel extends StateNotifier<CompanyStadiumDetailPageModel?> {
  companyStadiumDetailPageViewModel(super.state);

  void notifyInit(Stadium stadium) async {
    state = CompanyStadiumDetailPageModel(stadium: stadium);
  }
}