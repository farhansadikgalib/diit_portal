
import 'package:diit_portal/Screens/Weather/data_service.dart';
import 'package:diit_portal/Screens/Weather/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:intl/intl.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    weatherService();
  }

  WeatherResponse? _response;

  final _dataService = DataService();

  dynamic todaysDate = DateFormat('dd MMMM yyyy').format(DateTime.now());
  dynamic currentTime = DateFormat.jm().format(DateTime.now());
  dynamic todaysWeeklyName = DateFormat('EEEE').format(DateTime.now());

  // Completer<GoogleMapController> _controller = Completer();
  //  final CameraPosition _googleplas = CameraPosition(
  //    target: LatLng(23.750902226946753, 90.37901692963807),zoom: 18 );

  // final List <Marker> _marker = [];
  // final List<Marker> _list = const[
  //   Marker(
  //     markerId: MarkerId("1"),
  //     position: LatLng(23.750902226946753, 90.37901692963807),
  //     infoWindow: InfoWindow(
  //         title: "My Current Location"
  //     ),
  //   ),
  // ];


  final List<String> imageList = [
    "assets/slider_image/banner.png",
    "assets/slider_image/banner2.jpg",
    "assets/slider_image/banner3.jpg",
    "assets/slider_image/banner4.png",
  ];

  final List<String> StudentProtalButton = [
    'STUDENT PORTAL',
    'TUTION FEES',
    'FACULTUY MEMBER',
    'ACADEMIC RESULT',
    'NU PORTAL',
    'DIIT NOTICS',
  ];

  final List<String> BankPageName = [
    "Question Bank",
    "Class  Routine",
    "Club",
    "Attendence",
  ];
  final List<String> BankPageimage = [
    "assets/ic_questionbank.png",
    "assets/ic_routine.png",
    "assets/ic_club.png",
    "assets/ic_attendance.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 12, right: 12),
            child: Column(
              children: <Widget>[
                Card(
                  elevation: 3,
                  child: Container(
                    height: 200,
                    width: double.maxFinite,
                    color: Color(0xff00DCA8),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget> [

                              Padding(
                                padding:
                                const EdgeInsets.only(top: 8, left: 15),
                                child: Text(
                                  '${_response!.weatherInfo.description}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      'Sunrise',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      '05:35 AM',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      'Sunset',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 58,
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      '06:50 PM',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      'Today’s Date',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      '${todaysDate}',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      'Current  Time',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      '${currentTime}',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      'Current  Temp',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 8, left: 15),
                                    child: Text(
                                      "${(((_response!.tempInfo.temperature -
                                          32) * 5) / 9).ceil()}° C",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(

                            child:  Image.network(_response!.iconUrl,


                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: 65.0,
                    color: Color(0xff3A95CB),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset(
                            'assets/calendar.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "${todaysWeeklyName}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "You’ve No Class Today",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: double.maxFinite,
                  child: GFCarousel(
                    autoPlay: true,
                    items: imageList.map(
                          (url) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0)),
                            child: Image.asset(url,
                                fit: BoxFit.cover, width: 1000.0),
                          ),
                        );
                      },
                    ).toList(),
                    onPageChanged: (index) {
                      setState(() {
                        index;
                      });
                    },
                  ),
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: StudentProtalButton.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: InkWell(
                            onTap: () {
                              print("${StudentProtalButton[index]}");
                            },
                            child: Container(
                              color: Color(0xffA400DD),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, left: 12, right: 10, bottom: 15),
                                child: Text(
                                  '${StudentProtalButton[index]}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: GridView.builder(
                      itemCount: BankPageName.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, mainAxisSpacing: 2),
                      itemBuilder: (_, index) {
                        return Card(
                          elevation: 4,
                          color: Color(0xffF8EFEF),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "${BankPageimage[index]}",
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${BankPageName[index]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    fontFamily: "Poppins"),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 15,),
                // Container(
                //
                //     height: 300,
                //     child: GoogleMap(
                //         initialCameraPosition: _googleplas,
                //     markers: Set<Marker>.of(_marker),
                //     onMapCreated: (GoogleMapController controller){
                //           _controller.complete(controller);
                //     },
                //
                //     // onTap: _handleMap,
                //     ),
                //
                //
                //   )


              ],
            ),
          ),
        ),
      ),
    );
  }

  void weatherService() async {
    final response = await _dataService.getWeather("Dhaka");
    setState(() => _response = response);
  }


}