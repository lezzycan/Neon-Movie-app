import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class SearchInputPanel extends StatelessWidget {
  const SearchInputPanel({Key? key, required this.padding}) : super(key: key);
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Constants.kGreyColor.withOpacity(0.5),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 8.0,
            ),
            SvgPicture.asset(Constants.kIconSearch),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Constants.kWhiteColor.withOpacity(0.6),
                    fontSize: 17,
                    letterSpacing: -0.4
                  ),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Constants.kWhiteColor.withOpacity(0.6),
                    fontSize: 17,
                    letterSpacing: -0.41),
              ),
            )),
            const SizedBox(
              width: 8.0,
            ),
            SvgPicture.asset(Constants.kIconMic),
            const SizedBox(
              width: 8.0,
            )
          ],
        ),
      ),
  //  child: Card(
  //   color: Constants.kGreyColor.withOpacity(0.5),
  //   shape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(20) ),
  //   child: Row(
  //     children: [
  //       const SizedBox(width: 8.0,),
  //       SvgPicture.asset(Constants.kIconSearch),
  //       const SizedBox(width: 8.0,),
  //       Expanded(child: TextField(
  //         style: TextStyle(
  //           fontSize: 17,
  //           color: Constants.kWhiteColor.withOpacity(0.5),
  //           letterSpacing: -0.41
  //         ),
  //         decoration: InputDecoration(
  //           hintText: 'Search',
  //           hintStyle: TextStyle(
  //             color: Constants.kWhiteColor.withOpacity(0.5),
  //             fontSize: 17,
  //             letterSpacing: -0.41,
  //           ),
  //         ),
  //       ),),
  //       const SizedBox(
  //         width: 8,
  //       ),
  //       SvgPicture.asset(Constants.kIconMic),
  //       const SizedBox(width: 8,)
  //     ],
  //   ),
  //  ),
    );
  }
}
