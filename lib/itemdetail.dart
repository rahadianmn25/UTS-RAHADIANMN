import 'package:flutter/material.dart';

class Itemdetailkamera extends StatelessWidget {
  const Itemdetailkamera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'images/kembali.png',
              width: 85,
              height: 35,
            ),
            Center(
              child: Image.asset(
                'images/fujifilm-banner.png',
                width: 160,
                height: 50,
              ),
            ),
            Image.asset(
              'images/titik.png',
              width: 70,
              height: 35,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Image.asset(
                    'images/warnamint.png',
                    width: MediaQuery.of(context).size.width / 1.7,
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instax Mini Min 7+',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. ',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Poin & Shot',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mini But With Full-Size Memories',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Pop it in your wallet, stick it to your wall – the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell. Using professional high-quality film technology (as you’d expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.',
                    ),
                    Text(
                      'Mini Film',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Mini moments with maximum impact. What’s your next mini moment?',
                    ),
                    Text(
                      'Plenty of Great Color Choices',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue',
                    ),
                    Text(
                      'The Mini 7+ Has Your Back!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Depending upon the weather conditions, you can easily control brightness to obtain a great picture',
                    ),
                    Text(
                      'Fun All The Time!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Live in the moment and enjoy your Mini 7+, and give your day some instant fun!',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border(
                  top: BorderSide.none,
                ),
              ),
              width: 394,
              height: 53,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$49.00',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xfff8FCEB4),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff8FCEB4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/itemdetailkamera');
                      },
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}