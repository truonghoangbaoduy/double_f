import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ShippingFeeOrder extends StatefulWidget {
  const ShippingFeeOrder({
    super.key,
  });

  @override
  State<ShippingFeeOrder> createState() => _ShippingFeeOrderState();
}

class _ShippingFeeOrderState extends State<ShippingFeeOrder> {
  bool isInsurance = false;
  bool isCocheck = false;
  String paymentMethod = 'COD';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Service',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Row(
              children: [Text('See all'), Icon(Iconsax.arrow_right_3)],
            )
          ],
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.green),
              color: Colors.green.withOpacity(0.1)),
          child: Row(
            children: [
              const Icon(Iconsax.money_2),
              const SizedBox(width: 16),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Economy Delivery',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Estimated delivery time: 4-5 days',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ]),
              const Text(
                '15,000 đ',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
              color: Colors.grey.withOpacity(0.1)),
          child: Row(
            children: [
              const Icon(Iconsax.box),
              const SizedBox(width: 16),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Standard Delivery',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Estimated delivery time: 3-5 days',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ]),
              const Text(
                '30,000 đ',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
              color: Colors.grey.withOpacity(0.1)),
          child: Row(
            children: [
              const Icon(Iconsax.truck_fast),
              const SizedBox(width: 16),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Express Delivery',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Estimated delivery time:         2 days',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ]),
              const Text(
                '45,000 đ',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        const Divider(
          color: Colors.grey,
        ),
        const SizedBox(height: 8),
        Text('Additional service',
            style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        Row(
          children: [
            Checkbox(
                value: isInsurance,
                onChanged: (bool? value) {
                  setState(() {
                    isInsurance = value!;
                  });
                }),
            const Text('Insurance'),
          ],
        ),
        Row(
          children: [
            Checkbox(
                value: isCocheck,
                onChanged: (bool? value) {
                  setState(() {
                    isCocheck = value!;
                  });
                }),
            const Text('Co-check'),
          ],
        ),
        const Divider(
          color: Colors.grey,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Note', style: Theme.of(context).textTheme.titleMedium),
            const Row(
              children: [Text('Send note'), Icon(Iconsax.arrow_right_3)],
            )
          ],
        ),
        const SizedBox(height: 8),
        const Divider(
          color: Colors.grey,
        ),
        const SizedBox(height: 8),
        Text('Payment Method', style: Theme.of(context).textTheme.titleMedium),
        Row(
          children: [
            Radio(
                value: 'COD',
                groupValue: paymentMethod,
                onChanged: (String? value) {
                  setState(() {
                    paymentMethod = value!;
                  });
                }),
            const Text('Cash on Delivery')
          ],
        ),
        Row(
          children: [
            Radio(
                value: 'visa',
                groupValue: paymentMethod,
                onChanged: (String? value) {
                  setState(() {
                    paymentMethod = value!;
                  });
                }),
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.all(8),
              child: const Image(
                  image: AssetImage('assets/icons/payment_methods/visa.png')),
            ),
            const Text('Visa')
          ],
        ),
        Row(
          children: [
            Radio(
                value: 'paypal',
                groupValue: paymentMethod,
                onChanged: (String? value) {
                  setState(() {
                    paymentMethod = value!;
                  });
                }),
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.all(8),
              child: const Image(
                  image: AssetImage('assets/icons/payment_methods/paypal.png')),
            ),
            const Text('Paypal')
          ],
        ),
        Row(
          children: [
            Radio(
                value: 'applePay',
                groupValue: paymentMethod,
                onChanged: (String? value) {
                  setState(() {
                    paymentMethod = value!;
                  });
                }),
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.all(8),
              child: const Image(
                  image:
                      AssetImage('assets/icons/payment_methods/apple-pay.png')),
            ),
            const Text('Apple Pay')
          ],
        ),
        Row(
          children: [
            Radio(
                value: 'googlePay',
                groupValue: paymentMethod,
                onChanged: (String? value) {
                  setState(() {
                    paymentMethod = value!;
                  });
                }),
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.all(8),
              child: const Image(
                  image: AssetImage(
                      'assets/icons/payment_methods/google-pay.png')),
            ),
            const Text('Google Pay')
          ],
        ),
        const Divider(
          color: Colors.grey,
        ),
        const SizedBox(height: 8),
        Text('Payment Summary', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Package'), Text('50,000 đ')],
        ),
        const SizedBox(
          height: 4,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Insurance'), Text('10,000 đ')],
        ),
        const SizedBox(
          height: 4,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Express Delivery'), Text('40,000 đ')],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total', style: Theme.of(context).textTheme.titleSmall),
            const Text('100,000 đ',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                    fontSize: 16))
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
