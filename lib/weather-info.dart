import 'package:flutter/material.dart';
import 'package:uccybercampweatherapp/json2dart.dart';
import 'package:flutter/cupertino.dart';
import 'api.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeatherInfo extends StatefulWidget {
  const WeatherInfo({Key? key, required this.cityName}) : super(key: key);
  final String cityName;

  get searchName => null;

  @override
  _WeatherInfoState createState() => _WeatherInfoState();
}

class _WeatherInfoState extends State<WeatherInfo> {
  ApiService service = ApiService();
  var response;

  var apiService;

 
  @override
 @override
  void initState() {
    super.initState();
    response = -apiService.get(
      searchName: widget.searchName,
      appId: '0b034dbf05b60fd2bd9f30cdd0e08748', //i didnt get sent an App ID so i used yours
    );
  }
Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: response,
      initialData: DailyForecast.initialData(),
      builder: (context, snapshot) {
        var deviceSize = MediaQuery.of(context).size;
        if (snapshot.data == null )
         {
          return Scaffold(
            body: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: deviceSize.height,
                width: deviceSize.width,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    'You entered a wrong search query',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        
    
      });
        
  }

  Widget bottomContainer({
    required Color color,
    required String attribute,
    attributeDigit,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      color: color,
      child: Column(
        children: [
          Text('Other Weather Info'),
          Text('One'),
        ],
      ),
    );
  }
}
