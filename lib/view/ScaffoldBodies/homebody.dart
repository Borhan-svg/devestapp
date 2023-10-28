
import 'package:flutter/material.dart';

import '../Widgets/fields.dart';
import '../Widgets/prevdevs.dart';
import '../Widgets/siwtchimage.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ImageSwitcher(),
            const SizedBox(height: 20),
            Fields(),
            const SizedBox(height: 10),
            PrevDevs()
          ],
        ),
      ),
    );
  }
}