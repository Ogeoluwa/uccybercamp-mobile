import 'package:flutter/material.dart';
import 'package:uccybercampweatherapp/weather-info.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oge weather App'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('Images/clouds.jpg'))),
        child: Column(
          children: [
            Text(
              'Get weather info on any place in the world',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 16,
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.yellowAccent[400],
                  labelText: 'Input City Name',
                  labelStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => WeatherInfo(
                          cityName: searchController.value.text,
                           ),
                      ),
                      );
                       },
                       icon: Icon(Icons.search_rounded),
                    ),
                    ),
                ),
                ),
          ],
          ),
     ),
     );
  }
}

