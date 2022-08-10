import 'package:flutter/material.dart';
import '../theme.dart';

class LoadingButtom extends StatelessWidget {
  const LoadingButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation(primaryTextColor),
                  )),
              SizedBox(
                width: 5,
              ),
              Text(
                'Loading',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
              ),
            ],
          )),
    );
  }
}
