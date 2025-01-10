import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CargoOrder extends StatefulWidget {
  const CargoOrder({
    super.key,
  });

  @override
  State<CargoOrder> createState() => _CargoOrderState();
}

class _CargoOrderState extends State<CargoOrder> {
  bool isHighValue = false;
  bool isFragile = false;
  bool isMonolithic = false;
  bool isOversized = false;
  bool isLiquid = false;
  bool isMagnetism = false;
  bool isColdGoods = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cargo',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text.rich(TextSpan(text: 'Name', children: [
                    TextSpan(
                        text: ' *',
                        style: TextStyle(
                          color: Colors.red,
                        ))
                  ]))),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text.rich(TextSpan(text: 'Quantity', children: [
                    TextSpan(
                        text: ' *',
                        style: TextStyle(
                          color: Colors.red,
                        ))
                  ]))),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text.rich(TextSpan(text: 'Price (đ)', children: [
                    TextSpan(
                        text: ' *',
                        style: TextStyle(
                          color: Colors.red,
                        ))
                  ]))),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      label: Text.rich(TextSpan(text: 'Weight (g)', children: [
                    TextSpan(
                        text: ' *',
                        style: TextStyle(
                          color: Colors.red,
                        ))
                  ]))),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total Weight:'),
              Text('0 g', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total Value:'),
              Text('0 đ', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Characteristics',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          GridView.count(
            physics: const ClampingScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 4 / 1,
            padding: const EdgeInsets.all(0),
            children: [
              Row(
                children: [
                  Checkbox(
                      value: isHighValue,
                      onChanged: (bool? value) {
                        setState(() {
                          isHighValue = value!;
                        });
                      }),
                  const Text('High Value'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: isFragile,
                      onChanged: (bool? value) {
                        setState(() {
                          isFragile = value!;
                        });
                      }),
                  const Text('Fragile'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: isMonolithic,
                      onChanged: (bool? value) {
                        setState(() {
                          isMonolithic = value!;
                        });
                      }),
                  const Text('Monolithic'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: isOversized,
                      onChanged: (bool? value) {
                        setState(() {
                          isOversized = value!;
                        });
                      }),
                  const Text('Oversized'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: isLiquid,
                      onChanged: (bool? value) {
                        setState(() {
                          isLiquid = value!;
                        });
                      }),
                  const Text('Liquid'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: isMagnetism,
                      onChanged: (bool? value) {
                        setState(() {
                          isMagnetism = value!;
                        });
                      }),
                  const Text('Magnetism'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: isColdGoods,
                      onChanged: (bool? value) {
                        setState(() {
                          isColdGoods = value!;
                        });
                      }),
                  const Text('Cold Goods'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(color: Colors.grey),
          const SizedBox(height: 16),
          Text(
            'Images',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 16,
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            color: Colors.grey,
            child: const SizedBox(
              height: 150,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.camera5,
                    size: 36,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Drag & Drop your images here',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Size',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Row(
                children: [
                  Text('Length x Width x Height'),
                  Icon(Iconsax.arrow_right_3)
                ],
              )
            ],
          ),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}
