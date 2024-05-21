import 'package:first_bank_attendance_system/Components/info_bar.dart';
import 'package:first_bank_attendance_system/Components/swipe_button.dart';
import 'package:flutter/material.dart';
 import 'package:intl/intl.dart';

import '../Components/color.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var currentDate = DateTime.now();

  List<DateTime> daysInaMonth = [];
  List<DateTime> monthsInYear = [];

  PageController? pageController;
  final PageController monthController = PageController(initialPage: 0);
//

  getDaysInMonth() {
    List<DateTime> _daysInMonth = [];
    // Calculate the first day of the month
    DateTime firstDayOfMonth = DateTime(currentDate.year, currentDate.month, 1);
    // Calculate the last day of the month
    DateTime lastDayOfMonth =
        DateTime(currentDate.year, currentDate.month + 1, 0);

    // Loop through each day in the month and add them to the list
    for (var i = firstDayOfMonth;
        i.isBefore(lastDayOfMonth) || i.isAtSameMomentAs(lastDayOfMonth);
        i = i.add(const Duration(days: 1))) {
      debugPrint("day is ${i.day}");
      _daysInMonth.add(i);
    }

    daysInaMonth = _daysInMonth;

    setState(() {});
  }

//

  generateMonthsList() {
    List<DateTime> monthsList = [];
    for (int month = 1; month <= 12; month++) {
      monthsList.add(DateTime(DateTime.now().year, month));
      monthsInYear = monthsList;
    }
    debugPrint("month is $monthsInYear");
    setState(() {});
  }

  int currentIndex = DateTime.now().month - 1;

 
  @override
  void initState() {
    generateMonthsList();
    pageController = PageController(viewportFraction: 0.2);
    getDaysInMonth();

    super.initState();
  }

  String getDayName(DateTime date) {
    return DateFormat('EE').format(date);
  }

  String getMonthName(DateTime date) {
    return DateFormat('MMMM').format(date);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    double fontSize = screenWidth * 0.06; // Adjust multiplier as needed

    // Define the desired format
    DateFormat dateFormat = DateFormat('EEEE dd, yyyy');

    // Format the date
    String formattedDate = dateFormat.format(currentDate);

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 100),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Welcome back,',
                      style: TextStyle(
                        fontSize: fontSize,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Michael',
                      style: TextStyle(
                          fontSize: fontSize,
                          color: primaryColor,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          formattedDate,
                          style: TextStyle(
                              fontSize: 0.7 * fontSize, color: primaryColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {
                            monthController.previousPage(
                                duration: const Duration(
                                  milliseconds: 600,
                                ),
                                curve: Curves.ease);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: primaryColor,
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          color: Colors.transparent,
                          child: PageView.builder(
                            controller: monthController,
                            itemCount: monthsInYear.length,
                            itemBuilder: (context, index) {
                              return Center(
                                  child: Text(
                                getMonthName(monthsInYear[index]),
                                style: TextStyle(
                                    fontSize: 1.5 * fontSize,
                                    color: primaryColor,
                                    fontWeight: FontWeight.w600),
                              ));
                            },
                          ),
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {
                            monthController.nextPage(
                                duration: const Duration(
                                  milliseconds: 600,
                                ),
                                curve: Curves.ease);
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 100,
                      child: PageView.builder(
                        onPageChanged: (val) {
                          debugPrint("$val");
                          debugPrint("${pageController!.page}");
                          setState(() {});
                        },
                        controller: pageController,
                        itemCount: daysInaMonth.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 30,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: daysInaMonth
                                              .indexOf(daysInaMonth[index]) ==
                                          pageController!.page?.round()
                                      ? Colors.blueAccent.withOpacity(.2)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 60,
                              width: 17,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    getDayName(daysInaMonth[index]),
                                    style: TextStyle(
                                        fontSize: 14, color: primaryColor),
                                  ),
                                  Text(
                                    daysInaMonth[index].day.toString(),
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        color: primaryColor),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 0.4 * screenHeight,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InFoBar(
                          text1: "Location", text2: 'Digital Innovation Lab'),
                      SizedBox(
                        height: 10,
                      ),
                      InFoBar(text1: "Check in Time", text2: '9:44am'),
                      SizedBox(
                        height: 10,
                      ),
                      InFoBar(text1: "Check Out Time", text2: ''),
                    ],
                  ),
                  SwipeButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
