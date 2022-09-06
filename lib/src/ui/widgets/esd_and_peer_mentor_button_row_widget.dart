import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';
import 'package:my_pwr_community_screens/src/utils/images.dart';

class ESDAndPeerMentorButtonRowWidget extends StatelessWidget {
  const ESDAndPeerMentorButtonRowWidget({
    Key? key,
    required this.esdButtonTapped,
    required this.peerMentorButtonTapped,
  }) : super(key: key);

  final VoidCallback esdButtonTapped;
  final VoidCallback peerMentorButtonTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
Expanded(child:         ElevatedButton.icon(
  style: ElevatedButton.styleFrom(
    primary: AppColors.primaryColor,
    shadowColor: const Color(0xFFEEEEEE),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100),
    ),
  ),
  onPressed: esdButtonTapped,
  icon: Image.asset(AppImages.crownIcon),
  label: const Text(
    'ESD Expert',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 16,
      letterSpacing: 0.2,
    ),
  ),
),),
  SizedBox(width: 10,),   Expanded(child:    OutlinedButton.icon(
       style: OutlinedButton.styleFrom(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(100),
         ),
         minimumSize: const Size(160, 37),
         side: const BorderSide(
           color: Color(0xFFEDEDED),
           width: 2,
         ),
       ),
       onPressed: peerMentorButtonTapped,
       icon: Image.asset(AppImages.peerMentorIcon),
       label: const Text(
         'Peer Mentor',
         style: TextStyle(
           fontSize: 16,
           fontWeight: FontWeight.bold,
           color: AppColors.primaryColor,
         ),
       ),
     ),
     ) ],
    );
  }
}
