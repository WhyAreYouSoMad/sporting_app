
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

final companyStadiumDetailPageProvider = StateNotifierProvider<CompanyStadiumDetailPageViewModel, CompanyStadiumDetailPageModel?>((ref) {
  return CompanyStadiumDetailPageViewModel(null);
});


class CompanyStadiumDetailPageModel {
  Stadium stadium;

  CompanyStadiumDetailPageModel({
    required this.stadium
  });
}

class CompanyStadiumDetailPageViewModel extends StateNotifier<CompanyStadiumDetailPageModel?> {
  CompanyStadiumDetailPageViewModel(super.state);

  void notifyInit(Stadium stadium) async {
    state = CompanyStadiumDetailPageModel(stadium: stadium);
  }
}