import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

const List<String> cityList = <String>[
  'Ho Chi Minh',
  'Ha Noi',
  'Da Nang',
  'Hue',
  'Can Tho',
  'Hai Phong'
];

const List<String> districtList = <String>[
  'Quan 1',
  'Quan 2',
  'Quan 3',
  'Quan 4',
  'Quan 5',
  'Quan 6',
  'Quan 7',
  'Quan 8',
  'Quan 9',
  'Quan 10',
  'Quan 11',
  'Quan 12',
];

const List<String> wardList = <String>[
  'Phuong 1',
  'Phuong 2',
  'Phuong 3',
  'Phuong 4',
  'Phuong 5',
  'Phuong 6',
  'Phuong 7',
  'Phuong 8',
  'Phuong 9',
  'Phuong 10',
  'Phuong 11',
  'Phuong 12',
];

const List<String> streetList = <String>[
  'Duong Nguyen Trai',
  'Duong Nguyen Dinh Chieu',
  'Duong Nguyen Thi Minh Khai',
  'Duong Nguyen Van Cu',
  'Duong Mai Chi Tho',
  'Duong Le Van Luong',
  'Duong Tran Hung Dao',
  'Duong Tran Phu',
  'Duong Tran Quoc Toan',
  'Duong Tran Nhan Ton',
  'Duong Ly Thuong Kiet',
  'Duong Ly Tu Trong'
];

List<String> receiveAtList = <String>['specific', 'post_office'];

class AddressOrder extends StatefulWidget {
  const AddressOrder({
    super.key,
  });

  @override
  State<AddressOrder> createState() => _AddressOrderState();
}

class _AddressOrderState extends State<AddressOrder> {
  String cityValue = cityList.first;
  String districtValue = districtList.first;
  String wardValue = wardList.first;
  String streetValue = streetList.first;
  String receiveAt = receiveAtList.first;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sender',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                label: Text.rich(TextSpan(text: 'Phone Number', children: [
                  TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                      ))
                ]))),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user),
                label: Text.rich(TextSpan(text: 'Full Name', children: [
                  TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                      ))
                ]))),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.location),
                label: Text.rich(TextSpan(text: 'Address', children: [
                  TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                      ))
                ]))),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // City
              Expanded(
                child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.buildings),
                        label: Text.rich(TextSpan(text: 'City', children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]))),
                    value: cityValue,
                    items:
                        cityList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        cityValue = value!;
                      });
                    }),
              ),
              const SizedBox(width: 16),
              // District
              Expanded(
                child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.buildings),
                        label: Text.rich(TextSpan(text: 'District', children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]))),
                    value: districtValue,
                    items: districtList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        districtValue = value!;
                      });
                    }),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // Ward
              Expanded(
                child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.buildings),
                        label: Text.rich(TextSpan(text: 'Ward', children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]))),
                    value: wardValue,
                    items:
                        wardList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        wardValue = value!;
                      });
                    }),
              ),
              const SizedBox(width: 16),
              // Street
              Expanded(
                child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.buildings),
                        label: Text.rich(TextSpan(text: 'Street', children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]))),
                    isExpanded: true,
                    value: streetValue,
                    items: streetList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        streetValue = value!;
                      });
                    }),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Reveiver',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call),
                label: Text.rich(TextSpan(text: 'Phone Number', children: [
                  TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                      ))
                ]))),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user),
                label: Text.rich(TextSpan(text: 'Full Name', children: [
                  TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                      ))
                ]))),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.location),
                label: Text.rich(TextSpan(text: 'Address', children: [
                  TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                      ))
                ]))),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // City
              Expanded(
                child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.buildings),
                        label: Text.rich(TextSpan(text: 'City', children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]))),
                    value: cityValue,
                    items:
                        cityList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        cityValue = value!;
                      });
                    }),
              ),
              const SizedBox(width: 16),
              // District
              Expanded(
                child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.buildings),
                        label: Text.rich(TextSpan(text: 'District', children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]))),
                    value: districtValue,
                    items: districtList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        districtValue = value!;
                      });
                    }),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // Ward
              Expanded(
                child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.buildings),
                        label: Text.rich(TextSpan(text: 'Ward', children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]))),
                    value: wardValue,
                    items:
                        wardList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        wardValue = value!;
                      });
                    }),
              ),
              const SizedBox(width: 16),
              // Street
              Expanded(
                child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.buildings),
                        label: Text.rich(TextSpan(text: 'Street', children: [
                          TextSpan(
                              text: ' *',
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]))),
                    isExpanded: true,
                    value: streetValue,
                    items: streetList
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        streetValue = value!;
                      });
                    }),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Received at',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            children: [
              ChoiceChip(
                label: const Text('Specific location'),
                backgroundColor: Colors.transparent,
                avatar: const Icon(
                  Iconsax.location,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(width: 2, color: Colors.grey)),
                selectedColor: Colors.green[100],
                selected: receiveAt == 'specific',
                showCheckmark: false,
                onSelected: (value) {
                  setState(() {
                    receiveAt = 'specific';
                  });
                },
              ),
              ChoiceChip(
                label: const Text('Post office'),
                backgroundColor: Colors.transparent,
                avatar: const Icon(Iconsax.building),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(width: 2, color: Colors.grey)),
                selectedColor: Colors.green[100],
                selected: receiveAt == 'post_office',
                showCheckmark: false,
                onSelected: (value) {
                  setState(() {
                    receiveAt = 'post_office';
                  });
                },
              )
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
