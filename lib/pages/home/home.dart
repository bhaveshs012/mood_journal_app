import 'dart:developer';
import 'package:intl/intl.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:mood_journal_app/constants/colors.dart';
import 'package:mood_journal_app/constants/fonts.dart';
import 'package:mood_journal_app/constants/spacing.dart';
import 'package:uicons/uicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "February,",
                      style: AppTextStyles.heading().copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    AppSpacing.horizontalSpace(10.0),
                    Text("2025", style: AppTextStyles.heading()),
                    Spacer(),
                    CircleAvatar(
                      radius: 24.0,
                      backgroundColor: AppColors.primary,
                      child: Icon(
                        UIcons.regularRounded.user,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                AppSpacing.verticalSpace(32.0),
                EasyDateTimeLinePicker.itemBuilder(
                  firstDate: DateTime(2025, 1, 1),
                  lastDate: DateTime(2030, 3, 18),
                  focusedDate: DateTime.now(),
                  itemExtent: 64.0,
                  headerOptions: HeaderOptions(
                    headerType: HeaderType.none,
                  ),
                  itemBuilder:
                      (context, date, isSelected, isDisabled, isToday, onTap) {
                    return InkResponse(
                      onTap: onTap,
                      borderRadius: BorderRadius.circular(12),
                      splashColor: Colors.blue.withOpacity(0.2),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Day (e.g., Mon, Tue)
                          Text(
                            DateFormat.E()
                                .format(date), // 'E' gives short day name
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: isSelected
                                  ? const Color.fromARGB(255, 255, 52, 72)
                                  : Colors.black,
                            ),
                          ),
                          AppSpacing.verticalSpace(4.0),
                          CircleAvatar(
                            child: Image.asset("assets/moods/excited.png"),
                          ),
                          AppSpacing.verticalSpace(4.0),
                          Text(
                            date.day.toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isSelected
                                  ? const Color.fromARGB(255, 255, 52, 72)
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  onDateChange: (date) {
                    log(date.toIso8601String());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
