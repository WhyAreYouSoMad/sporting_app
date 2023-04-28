
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

final companyStadiumListPageProvider = StateNotifierProvider<CompanyStadiumListPageViewModel, CompanyStadiumListPageModel?>((ref) {
  return CompanyStadiumListPageViewModel(null);
});


class CompanyStadiumListPageModel {
  List<Stadium> stadiums;

  CompanyStadiumListPageModel({
    required this.stadiums
});
}

class CompanyStadiumListPageViewModel extends StateNotifier<CompanyStadiumListPageModel?> {
  CompanyStadiumListPageViewModel(super.state);

  void notifyInit(List<Stadium> stadiums) async {
    state = CompanyStadiumListPageModel(stadiums: stadiums);
 }
}