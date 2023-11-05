import 'package:fitnesstracker/source/constants/size.dart';
import 'package:fitnesstracker/source/features/auth/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(gDefaultSize),
      color: model.ggcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.65,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                model.subtitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(model.counterText),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
