import 'package:flutter/material.dart';
void main() => runApp(instax());

class instax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fujifilm ',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<productdata> _produklist = [
    productdata(
      jenisproduk: 'Limited Edition',
      titleproduk: 'Instax Mini Mint 7+',
      price: 49.00,
      img: 'images/warnamint.png',
      color: Color(0xff8FCEB4),
    ),
    productdata(
      jenisproduk: 'Limited Editon',
      titleproduk: 'Instax Mini Blue 7+',
      price: 48.00,
      img: 'images/warnablue.png',
      color: Color(0xff97BFE3),
    ),
    productdata(
      jenisproduk: 'Limited Editon',
      titleproduk: 'Instax Mini choral 7+',
      price: 48.00,
      img: 'images/warnachoral.png',
      color: Color(0xffB43939),
    ),
    productdata(
      jenisproduk: 'Limited Editon',
      titleproduk: 'Instax Mini pink 7+',
      price: 48.00,
      img: 'images/warnapink.png',
      color: Color(0xffFF69B4),
    ),
    productdata(
      jenisproduk: 'Limited Editon',
      titleproduk: 'Instax Mini Lavender 7+',
      price: 48.00,
      img: 'images/warnalavender.png',
      color: Color(0xff8B7FAF),
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.menu_rounded),
        title: Image.asset('images/fujifilm-banner.png',
          width: 130.0,
          height: 30.0,
        ),
        actions: [
          Icon(Icons.shopping_bag)
        ],
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 1, child: Search()),
          SizedBox(
            height: 8,
          ),

          Flexible(
            flex: 8,
            child: ListView.builder(
              itemCount: _produklist.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 9),
                child: CardTile(
                  jenisproduk: _produklist[index].jenisproduk,
                  titleproduk: _produklist[index].titleproduk,
                  price: _produklist[index].price,
                  color: _produklist[index].color,
                  img: _produklist[index].img,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 12, left: 12),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            fillColor: Colors.black,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            hintText: 'Search',
            hintStyle: TextStyle(
              fontSize: 16,
              color: Color(0xff6F7070),
            ),
          ),
        ),
      ),
    );
  }
}

class productdata {
  final String? jenisproduk;
  final String? titleproduk;
  final double? price;
  final String? img;
  final Color? color;

  productdata({this.jenisproduk, this.titleproduk, this.price, this.img, this.color});
}

class CardTile extends StatelessWidget {
  final String? jenisproduk;
  final String? titleproduk;
  final double? price;
  final String? img;
  final Color? color;
  const CardTile({
    Key? key,
    this.jenisproduk,
    this.titleproduk,
    this.price,
    this.img,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Stack(
        fit: StackFit.passthrough,
        alignment: Alignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            color: color,
            margin: EdgeInsets.only(
              right: 21,
            ),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Text(
                  jenisproduk!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              trailing: SizedBox(
                width: 15,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        titleproduk!,
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      '\$ $price',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/itemdetail');
                    },
                    child: Text(
                      'Buy',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              img!,
              width: MediaQuery.of(context).size.width / 3.6,
            ),
          ),
        ],
      ),
    );
  }
}