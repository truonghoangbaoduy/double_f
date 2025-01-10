import 'package:double_f_last_mile_delivery/features/order/screens/widgets/address_order.dart';
import 'package:double_f_last_mile_delivery/features/order/screens/widgets/cargo_order.dart';
import 'package:double_f_last_mile_delivery/features/order/screens/widgets/shipping_order.dart';
import 'package:double_f_last_mile_delivery/features/order/screens/widgets/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPlacementScreen extends StatefulWidget {
  const OrderPlacementScreen({super.key});

  @override
  State<OrderPlacementScreen> createState() => _OrderPlacementScreenState();
}

class _OrderPlacementScreenState extends State<OrderPlacementScreen> {
  int currentStep = 0;
  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1;
      });
    } else {
      Get.to(() => const SuccessScreen());
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlsBuilder(context, details) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              onPressed: details.onStepContinue, child: const Text('Continue')),
        ),
        // const SizedBox(width: 10),
        // Expanded(
        //   child: OutlinedButton(
        //       onPressed: details.onStepCancel, child: const Text('Back')),
        // ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 50),
      child: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
        ),
        child: Stepper(
          physics: const ClampingScrollPhysics(),
          currentStep: currentStep,
          onStepContinue: continueStep,
          onStepCancel: cancelStep,
          onStepTapped: onStepTapped,
          controlsBuilder: controlsBuilder,
          type: StepperType.horizontal,
          elevation: 1,
          steps: [
            Step(
                title: const Text('Address'),
                content: const AddressOrder(),
                isActive: currentStep >= 0,
                state:
                    currentStep >= 1 ? StepState.complete : StepState.indexed),
            Step(
                title: const Text('Cargo'),
                content: const CargoOrder(),
                isActive: currentStep >= 1,
                state:
                    currentStep >= 2 ? StepState.complete : StepState.indexed),
            Step(
                title: const Text('Shipping'),
                content: const ShippingFeeOrder(),
                isActive: currentStep >= 2),
          ],
        ),
      ),
    ));
  }
}
