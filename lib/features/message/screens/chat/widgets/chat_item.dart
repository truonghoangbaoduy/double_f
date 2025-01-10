import 'package:double_f_last_mile_delivery/utils/constrains/colors.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.all(AppDimens.sectionMarginMedium),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      message,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                      ),
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
        ),
        const SizedBox(width: AppDimens.sectionMarginMedium),
        const Icon(
          Icons.more_horiz,
          size: AppDimens.iconSizeSmall,
          color: AppColors.lightGrey,
        ),
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
