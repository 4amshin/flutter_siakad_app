// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/widgets/svg_image.dart';

class DpItem extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String imagePath;
  const DpItem({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.onPressed,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                        height: 1.2,
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: onPressed,
                      child: Text(
                        "Lihat",
                        style: TextStyle(
                          fontSize: 13,
                          color: backgroundColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 91,
                height: 106,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(95),
                  color: ColorName.white.withOpacity(0.2),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 5,
          child: SvgImage(
            iconUrl: imagePath,
            height: 90,
          ),
        ),
      ],
    );
  }
}
