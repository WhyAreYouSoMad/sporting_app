import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:sporting_app/dto/response_dto.dart';
import 'package:sporting_app/model/stadium/stadium.dart';
import 'package:sporting_app/model/stadium/stadium_repository.dart';

final stadiumListPageProvider = StateNotifierProvider<StadiumListPageViewModel, StadiumListPageModel?>((ref) {
  Logger().d("stadiumListPageProvider");
  return StadiumListPageViewModel(null);
});

// 창고 데이터
class StadiumListPageModel{
  List<Stadium> stadiums;
  StadiumListPageModel({required this.stadiums});
}

class StadiumListPageViewModel extends StateNotifier<StadiumListPageModel?>{
  StadiumListPageViewModel(super.state);

  void notifyInit(List<Stadium> stadiumList) async{
    Logger().d("notifyInit");
    state = StadiumListPageModel(stadiums: stadiumList);
  }

}