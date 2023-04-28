
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/my_stadiums/my_stadiums.dart';

final companyStadiumListPageProvider = StateNotifierProvider<CompanyStadiumListPageViewModel, CompanyStadiumListPageModel?>((ref) {
  return CompanyStadiumListPageViewModel(null);
});


class CompanyStadiumListPageModel {
  List<MyStadiums> myStadiums;

  CompanyStadiumListPageModel({
    required this.myStadiums
});
}

class CompanyStadiumListPageViewModel extends StateNotifier<CompanyStadiumListPageModel?> {
  CompanyStadiumListPageViewModel(super.state);

  void notifyInit(List<MyStadiums> myStadiumsList) async {
    state = CompanyStadiumListPageModel(myStadiums: myStadiumsList);
 }
}