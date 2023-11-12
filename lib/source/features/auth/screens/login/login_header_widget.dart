import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    this.imageColor,
    this.imageHight = 0.2,
    this.heightBetween,
    required this.image,
    required this.title,
    required this.subtitle,
    this.crossAxisAlighnment = CrossAxisAlignment.start,
    this.textAlign,
  });
  final Color? imageColor;
  final double imageHight;
  final double? heightBetween;
  final String image, title, subtitle;
  final CrossAxisAlignment crossAxisAlighnment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlighnment,
      children: [
        Image(
          image: AssetImage(image),
          color: imageColor,
          height: size.height * imageHight,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          subtitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
