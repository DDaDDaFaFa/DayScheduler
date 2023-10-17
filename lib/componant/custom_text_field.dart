import 'package:calendar_scheduler/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isContents;
  const CustomTextField(
      {required this.label, required this.isContents, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: PRIMARY_COLOR,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          TextField(

            keyboardType: isContents ? TextInputType.multiline : TextInputType.number,
            maxLines: isContents ? null : 1,
            inputFormatters: isContents
                ? []
                : [
              FilteringTextInputFormatter.digitsOnly,
            ],
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[300],
            ),
          ),
          if(isContents) Expanded(child: renderTextFeild(),),
        //  if(!isContents) renderTextFeild(),

        ],
      ),
    );
  }

  Widget renderTextFeild() {
    return TextField(
       keyboardType: isContents ? TextInputType.multiline : TextInputType.number,
      maxLines: isContents ? null : 1,
      inputFormatters: isContents
          ? []
          : [
              FilteringTextInputFormatter.digitsOnly,
            ],
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey[300],
      ),
    );
  }
}
