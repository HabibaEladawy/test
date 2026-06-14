import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rawaquh/core/helpers/specing.dart';
import 'package:rawaquh/core/utils/app_styles.dart';

import '../../../../core/constant/custom_textformfield.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/values_manager.dart';
import '../widgets/auth_container.dart';
import '../widgets/country_list_item.dart';
import '../widgets/register_header.dart';
import 'otp_screen.dart';

class CountrySelectionScreen extends StatefulWidget {
  const CountrySelectionScreen({super.key});

  @override
  State<CountrySelectionScreen> createState() => _CountrySelectionScreenState();
}

class _CountrySelectionScreenState extends State<CountrySelectionScreen> {
  final TextEditingController searchController = TextEditingController();
  int? selectedIndex;

  final List<Map<String, String>> countries = [
    {'name': 'السعوديه', 'code': '+966', 'flag': '🇸🇦'},
    {'name': 'United Kingdom', 'code': '+123', 'flag': '🇬🇧'},
    {'name': 'مصر', 'code': '+20', 'flag': '🇪🇬'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        header: const RegisterHeader(),
        child: Column(
          children: [
            verticalSpace(54),
            CustomTextformfeild(
              keyboardType: TextInputType.text,
              controller: searchController,
              validator: (_) => null,
              formFieldKey: GlobalKey(),
              hintText: 'ابحث عن بلدك',
              textDirection: TextDirection.rtl,
              borderRadius: 8.r,
              borderColor: Color(0xFF143430),
              borderWidth: 1.0,
              hintStyle: getRegularStyle(
                fontSize: AppSize.s14,
                color: Color(0xFF143430),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xFF143430),
                size: 18.sp,
              ),
              contentPaddingVertical: 0,
            ),
            verticalSpace(17),

            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: countries.length,
              separatorBuilder: (_, __) => Divider(color: Colors.grey.shade200),
              itemBuilder: (context, index) {
                final country = countries[index];
                return CountryListItem(
                  name: country['name']!,
                  code: country['code']!,
                  flag: country['flag']!,
                  isSelected: selectedIndex == index,
                  onTap: () {
                    setState(() => selectedIndex = index);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const OtpScreen()),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
