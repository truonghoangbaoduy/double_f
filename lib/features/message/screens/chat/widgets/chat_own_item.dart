import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatOwnItem extends StatelessWidget {
  const ChatOwnItem({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Icon(
          Icons.more_horiz,
          size: AppDimens.iconSizeSmall,
          color: AppColors.lightGrey,
        ),
        const SizedBox(width: AppDimens.sectionMarginMedium),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.all(AppDimens.sectionMarginMedium),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: AppColors.lightGrey,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      message,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 1,
                    right: 8,
                    child: Icon(
                      Icons.done_outlined,
                      color: AppColors.primary,
                      size: AppDimens.iconSizeMediumSmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppDimens.iconMarginSmall),
              Text(
                '1 day ago',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 13,
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.red // Màu nền của tam giác
      ..style = PaintingStyle.stroke // Vẽ border
      ..strokeWidth = 1 // Độ dày của viền
      ..color = AppColors.lightGrey; // Màu của viền

    // Tạo hình tam giác
    final path = Path()
      ..moveTo(size.width / 2, 0) // Đỉnh tam giác (ở trên cùng)
      ..lineTo(size.width, size.height) // Góc dưới bên phải
      ..lineTo(0, size.height) // Góc dưới bên trái
      ..close(); // Kết nối lại đỉnh ban đầu để tạo thành tam giác

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
