//
//
//
//            Develope By :) Athar Ibrahim Khalid
//
//            Published By :) Athar Ibrahim Khalid
//
//            See More Work On
//                -> Github: https://github.com/AtharIbrahim
//                -> Linkedin: https://www.linkedin.com/in/athar-ibrahim-khalid-0715172a2/
//                -> Dribbble: https://dribbble.com/AtharIbrahim
//

import 'package:e_book_ecommerce/common/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AccountBookType extends StatefulWidget {
  final Icon icon;
  final void Function(String?) onChanged;

  const AccountBookType({
    super.key,
    required this.icon,
    required this.onChanged,
  });

  @override
  State<AccountBookType> createState() => _AccountBookTypeState();
}

// Drop Down Menu USed in account

class _AccountBookTypeState extends State<AccountBookType> {
  String? _selectedValue;
  final List<String> _options = ['By Pages', 'By Episodes'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 231, 231, 231),
                ),
                child: widget.icon,
              ),
              const SizedBox(width: 28),
              Expanded(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: _selectedValue,
                    hint: Text(
                      'Select an option',
                      style: TextStyle(
                        color: AppColors.text_grey,
                      ),
                    ),
                    dropdownColor: AppColors.white,
                    items: _options.map((String option) {
                      return DropdownMenuItem<String>(
                        value: option,
                        child: Text(
                          option,
                          style: TextStyle(
                            color: AppColors.text_black,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedValue = newValue;
                      });
                      widget.onChanged(newValue); // Call the callback function
                    },
                    isExpanded: true,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -4,
            left: 56,
            right: 0,
            child: Divider(
              thickness: 0.7,
              color: AppColors.greySHADE700,
            ),
          ),
        ],
      ),
    );
  }
}
