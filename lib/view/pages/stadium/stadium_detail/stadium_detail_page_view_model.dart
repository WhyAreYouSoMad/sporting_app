import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/stadium_detail/stadium_detail.dart';

final stadiumDetailPageProvider = StateNotifierProvider<StadiumDetailPageViewModel, StadiumDetailPageModel?>((ref) {
  return StadiumDetailPageViewModel(null);
});


class StadiumDetailPageModel {
  StadiumDetail stadiumDetail;

  StadiumDetailPageModel({
    required this.stadiumDetail
});

}

class StadiumDetailPageViewModel extends StateNotifier<StadiumDetailPageModel?> {
  StadiumDetailPageViewModel(super.state);

  void readInit(StadiumDetail stadiumDetail) async {
    state = StadiumDetailPageModel(stadiumDetail: stadiumDetail);
  }
}