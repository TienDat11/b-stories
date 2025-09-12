import 'package:b_stories/core/constants/app_sizes.dart';
import 'package:b_stories/core/constants/app_svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCardWidget extends StatelessWidget {
  final String imagePath; // Asset ảnh chính
  final String title; // Text overlay
  final VoidCallback? onTap;
  const CustomCardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // xử lý sự kiện tap
      borderRadius: BorderRadius.circular(12), // hiệu ứng ripple theo bo góc
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        clipBehavior: Clip
            .antiAlias, //nếu vượt ra ngoài góc bo thì sẽ bị cắt theo bo góc và mịn đẹp
        child: SizedBox(
          height: 186,
          width: 160,
          child: Stack(
            children: [
              // SVG nền
              SvgPicture.asset(
                AppSvgs.card, // đường dẫn SVG
                fit: BoxFit.cover,
              ),

              //Gradient overlay nếu muốn
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                  ).copyWith(bottom: 4, top: 28),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),

              // Text hoặc widget khác
              Positioned(
                top: 10,
                left: 8,
                right: 8,
                child: SizedBox(
                  height: AppSizes.height.h16, // chỉnh theo nhu cầu
                  child: Text(
                    title,
                    maxLines: 1, // giới hạn 1 dòng
                    overflow: TextOverflow.ellipsis, // hiển thị "..." khi dài
                    textAlign: TextAlign.center, // căn giữa
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
