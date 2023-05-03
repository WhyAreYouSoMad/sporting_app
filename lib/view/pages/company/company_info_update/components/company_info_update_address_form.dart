import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remedi_kopo/remedi_kopo.dart';

class CompanyInfoUpdateAddressForm extends StatelessWidget {
  final TextEditingController addressCon;
  final addressValidator;

  const CompanyInfoUpdateAddressForm(
      {Key? key, required this.addressCon, required this.addressValidator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text('주소', style: TextStyle(fontSize: 15)),
        const SizedBox(width: 90),
        Expanded(
          child: GestureDetector(
            onTap: () {
              HapticFeedback.mediumImpact();
              _addressAPI(context); // 카카오 주소 API
            },
            child: TextFormField(
              validator: addressValidator,
              enabled: false,
              controller: addressCon,
              style: const TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
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

