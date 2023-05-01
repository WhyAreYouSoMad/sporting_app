import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/stadium/stadium.dart';

final stadiumDetailPageProvider = StateNotifierProvider<StadiumDetailPageViewModel, StadiumDetailPageModel?>((ref) {
  return StadiumDetailPageViewModel(null);
});


class StadiumDetailPageModel {
  Stadium stadium;

  StadiumDetailPageModel({
    required this.stadium
});

}

class StadiumDetailPageViewModel extends StateNotifier<StadiumDetailPageModel?> {
  StadiumDetailPageViewModel(super.state);

  void readInit(Stadium stadium) async {
    state = StadiumDetailPageModel(stadium: stadium);
  }
}