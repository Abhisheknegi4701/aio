import 'package:flutter/material.dart';

class AccountDeleteDialog extends StatelessWidget {
  final bool isFailed;
  final double rotateAngle;
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTapTrue;
  final String? onTapTrueText;
  final VoidCallback onTapFalse;
  final String? onTapFalseText;
  const AccountDeleteDialog(
      {super.key,
      this.isFailed = false,
      this.rotateAngle = 0,
      required this.icon,
      required this.title,
      required this.description,
      required this.onTapFalse,
      required this.onTapTrue,
      this.onTapTrueText,
      this.onTapFalseText});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // child: Consumer<AuthsProvider>(
      //     builder: (context, authProvider, _) {
      //       return Container(
      //         width: 300,
      //         padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
      //         child: Stack(clipBehavior: Clip.none, children: [
      //
      //           Positioned(
      //             left: 0, right: 0, top: -55,
      //             child: Container(
      //               height: 80,
      //               width: 80,
      //               alignment: Alignment.center,
      //               decoration: BoxDecoration(color: isFailed ? Theme.of(context).colorScheme.error : Theme.of(context).primaryColor, shape: BoxShape.circle),
      //               child: Transform.rotate(angle: rotateAngle, child: Icon(icon, size: 40, color: Colors.white)),
      //             ),
      //           ),
      //
      //           Padding(
      //             padding: const EdgeInsets.only(top: 40),
      //             child: Column(mainAxisSize: MainAxisSize.min, children: [
      //               Text(title, style: poppinsRegular.copyWith(fontSize: Dimensions.fontSizeLarge)),
      //               const SizedBox(height: Dimensions.paddingSizeSmall),
      //               Text(description, textAlign: TextAlign.center, style: poppinsRegular),
      //               const SizedBox(height: Dimensions.paddingSizeLarge),
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(horizontal: 0),
      //                 child: Row(
      //                   children: [
      //
      //                     Expanded(child: CustomButton(buttonText: onTapFalseText!, onPressed: onTapFalse)),
      //                     const SizedBox(width: 10,),
      //
      //                     //Expanded(child: authProvider.isLoading ? const Center(child: CircularProgressIndicator()) :  CustomButton(buttonText: onTapTrueText!, onPressed: onTapTrue)),
      //                   ],
      //                 ),
      //               ),
      //             ]),
      //           ),
      //
      //         ]),
      //       );
      //     }
      // ),
    );
  }
}
