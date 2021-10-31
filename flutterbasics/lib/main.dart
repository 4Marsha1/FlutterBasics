import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text(
                'Custom Appbar',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    backgroundColor: Colors.blueAccent
                ),
              ),
              Icon(
                Icons.add_alert,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(40.0),
                  margin: EdgeInsets.symmetric(horizontal: 0,vertical: 30.0),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0)
                    )
                  ),
                  child: Center(
                      child: Text(
                          'This is a Jumbotron!',
                          style: TextStyle(
                              fontSize: 26.0,
                              color: Colors.black87
                          )
                      )
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(40.0),
                    margin: EdgeInsets.symmetric(horizontal: 0,vertical: 30.0),
                    child: Image.network('https://wallpaperaccess.com/full/86289.jpg', width: 250.0, height: 250.0,),
                  )
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(40.0),
                      margin: EdgeInsets.symmetric(horizontal: 0,vertical: 30.0),
                    child: ElevatedButton.icon(
                      onPressed: (){
                        print('Clicked');
                      },
                      icon: Icon(
                        Icons.mail_rounded,
                        color: Colors.lightGreen,
                      ),
                      label: Center(
                        child: Text(
                          'Mail Me!',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 20.0
                          ),
                        ),
                      )
                    )
                  )
              )
            ],
          )
        ],
      )
    );
  }
}
