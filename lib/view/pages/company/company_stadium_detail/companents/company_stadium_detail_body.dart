import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/model/stadium/stadium.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/components/my_stadium_item.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/companents/company_stadium_detail_court_detail.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/companents/company_stadium_detail_form.dart';
import 'package:sporting_app/view/pages/company/company_stadium_detail/company_stadium_detail_page_view_model.dart';

class CompanyStadiumDetailBody extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _courtTitle = TextEditingController();
  final _courtContent = TextEditingController();
  final _courtPrice = TextEditingController();

  CompanyStadiumDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    CompanyStadiumDetailPageModel? model =
        ref.watch(companyStadiumDetailPageProvider);
    Stadium stadium = model!.stadium;
    if (stadium.courts!.isNotEmpty) {
      _courtTitle.text = stadium.courts!.first.title;
      _courtContent.text = stadium.courts!.first.content;
      _courtPrice.text = stadium.courts!.first.price.toString();
    }
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                MyStadiumItem(
                  location: stadium.address!,
                  stadiumPic: stadium.sourceFile.fileUrl,
                  stadiumName: stadium.name!,
                  hasRating: false,
                  hasUnderBlock: false,
                  stadiumNameTextSize: 25,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CompanyStadiumDetailForm(
                    address: stadium.address!,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Divider(thickness: 11),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: stadium.courts!.isNotEmpty
                      ? CompanyStadiumDetailCourtDetail(
                          court: stadium.courts!.first,
                          courtContentCon: _courtContent,
                          courtPriceCon: _courtPrice,
                          courtTitleCon: _courtTitle)
                      : SizedBox(),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: MyButton(
                  funButton: () {},
                  text: '코트 추가',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: MyButton(
                  funButton: () {},
                  text: '수정 하기',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
