import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:remedi_kopo/remedi_kopo.dart';

class PlayerInfoUpdateAddressForm extends StatelessWidget {
  final TextEditingController addressCon;

  const PlayerInfoUpdateAddressForm({Key? key, required this.addressCon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row (
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Text('주소', style: TextStyle(fontSize: 15)),
        const SizedBox(width: 85),
        Expanded(
          child: GestureDetector(
            onTap: () {
              HapticFeedback.mediumImpact();
              _addressAPI(context); // 카카오 주소 API
            },
            child: TextFormField(
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

