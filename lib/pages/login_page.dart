import 'package:first_bank_attendance_system/Components/color.dart';
import 'package:first_bank_attendance_system/Components/text_field.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Position? _currentLocation;
  late bool servicePermission = false;
  late LocationPermission permission;

  String _currentAdress = '';

  Future<Position> _getCurrentLocation() async {
    // code to check if we have permisiion to access location services
    servicePermission = await Geolocator.isLocationServiceEnabled();
    if (!servicePermission) {
      debugPrint('service disabled');
    }
    // the service is enabled on phones but it is always good to check
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return await Geolocator.getCurrentPosition();
  }

  _getAdressFromCoordinates() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          _currentLocation!.latitude, _currentLocation!.longitude);

      Placemark place = placemarks[0];

      setState(() {
        _currentAdress = '${place.locality}, ${place.country}';
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    double fontSize = screenWidth * 0.05; // Adjust multiplier as needed

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 35, right: 35, top: 0.1 * screenHeight),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Longitude =${_currentLocation?.longitude}',
                    style: TextStyle(
                        fontSize: 1.19 * fontSize,
                        color: primaryColor,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Latitude = ${_currentLocation?.latitude};',
                    style: TextStyle(
                        fontSize: 1.19 * fontSize,
                        color: primaryColor,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${_currentAdress}',
                    style: TextStyle(
                      fontSize: 0.69 * fontSize,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              SvgPicture.asset('images/illustration.svg'),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 0.45 * screenHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Staff ID',
                                style: TextStyle(color: primaryColor),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const MyTextField(),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'STEP 1 OF 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: primaryColor),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () async {
                              _currentLocation = await _getCurrentLocation();
                              setState(() {});
                              await _getAdressFromCoordinates();
                              debugPrint('${_currentLocation}');
                              debugPrint('${_currentAdress}');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Center(
                                  child: Text('Login',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 0.94 * fontSize,
                                      )),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
