import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
 static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/intro.svg'),
            Text("Find Your Favoret Course",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xff232323),
              ),),
            Padding(
              padding: const EdgeInsets.only(top: 9,bottom: 129),
              child: Text(
                "Lorem ipsum dolor sit amet,"
                  " consetetur\n sadipscing elitr,"
                  " sed diam nonumy eirmod\n "
                  "tempor invidunt ut labore et dolore",
                style: TextStyle(
                    color: Color(0xffBBBBBB),
                    fontSize: 14),),
            ),
            InkWell(
              onTap: (){
                // Navigator.pushReplacement(context, newRoute);
              },
              child: Container(
                width: 315,
                height: 65,
                decoration: BoxDecoration(
                  color: Color(0xff6CC4EE),
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }

}
