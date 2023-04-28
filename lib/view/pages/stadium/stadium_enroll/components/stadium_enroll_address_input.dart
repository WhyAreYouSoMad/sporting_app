import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remedi_kopo/remedi_kopo.dart';

class StadiumEnrollAddressInput extends StatelessWidget {
  final TextEditingController addressCon;

  const StadiumEnrollAddressInput({Key? key, required this.addressCon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        HapticFeedback.mediumImpact();
        _addressAPI(context); // 카카오 주소 API
      },
      readOnly: true,
      controller: addressCon,
      decoration: InputDecoration(
        hintText: '경기장 주소',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  _addressAPI(BuildContext context) async {
    KopoModel model = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RemediKopo(),
      ),
    );
    addressCon.text =
    '${model.zonecode!} ${model.address!} ${model.buildingName!}';
  }
}

