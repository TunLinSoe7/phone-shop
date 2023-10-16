import 'package:flutter/material.dart';

class LoadingDialogWidget extends StatelessWidget {

  const LoadingDialogWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: Center(child: CircularProgressIndicator()),
    );
  }
}
