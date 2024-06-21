import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/check_out_info_item.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/check_widget.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/circule_avatar_widget.dart';
import 'package:payment/Features/checkout_feature.dart/Presentaion/views/widgets/custom_dashed_line.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment/core/utils/widgets.dart/default_arrow_back.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 25.0, right: 25.0, bottom: 30.0, top: 100),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          const CircleAvatarWidgetFromLeft(),
          const CircleAvatarWidgetFromRight(),
          const CheckWidget(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height / 4 + 20,
            left: 0,
            right: 0,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: CutomDashedLine(),
            ),
          ),
        ],
      ),
    );
  }
}

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: ShapeDecoration(
          color: const Color(0xffD9D9D9),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.only(top: 60 + 12, left: 20, right: 20),
        child: Column(
          children: [
            Text(
              'Thank you!',
              style: Styles.style25,
            ),
            SizedBox(
              height: 1.h,
            ),
            FittedBox(
              child: Text(
                'Your transaction was successful',
                style: Styles.style20
                    .copyWith(color: Colors.black.withOpacity(0.5)),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            CheckOutInfoItem(
              title: 'Date',
              price: '01/24/2023',
              style: Styles.style18W600,
            ),
            SizedBox(
              height: 5.h,
            ),
            CheckOutInfoItem(
              title: 'Time',
              price: '10:15Am',
              style: Styles.style18W600,
            ),
            SizedBox(
              height: 5.h,
            ),
            CheckOutInfoItem(
              title: 'to',
              price: 'Abdo Abdelhady',
              style: Styles.style18W600,
            ),
            Divider(
              height: 40.h,
              color: Colors.grey.withOpacity(0.4),
            ),
            CheckOutInfoItem(
              title: 'Total',
              price: r'$50:25',
              style: Styles.style18W600,
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
                width: double.infinity,
                // height: MediaQuery.sizeOf(context).height * 0.13,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/logo.svg'),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Credit Card ',
                          style: Styles.style18,
                        ),
                        Text(
                          'Master Card **77',
                          style: Styles.style16,
                        ),
                      ],
                    ),
                  ],
                )),
            Spacer(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.barcode,
                    size: MediaQuery.sizeOf(context).width * 0.15,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(20))),
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          'PAID',
                          style: Styles.style25.copyWith(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            LayoutBuilder(builder: (context, constraints) {
              return constraints.maxHeight > 10000
                  ? SizedBox(
                      height:
                          ((MediaQuery.sizeOf(context).height / 4 + 20) / 2) -
                              20)
                  : SizedBox(
                      height: 20,
                    );
            }),
          ],
        ),
      ),
    );
  }
}
