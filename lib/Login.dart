import 'package:flutter/material.dart';


class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: MediaQuery.of(context).orientation == Orientation.landscape
        ? SingleChildScrollView(child: ContentArea())
        : ContentArea(),
    );
  }
}


class ContentArea extends StatelessWidget {
  const ContentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        //1
        FormLogin(),
        //2
        Flexible(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(20),

            child: Column(
              children: <Widget>[

                Row(
                  children: <Widget>[
                    Checkbox(
                      onChanged: (_) {},
                      value: false,
                    ),

                    Text(
                      "Remember Me",
                      style: TextStyle(),
                    ),

                    Spacer(
                      flex: 2,
                    ),

                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF13E3D2),
                              Color(0xFF5D74E2)
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80.0),
                          ),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            minWidth: 150.0,
                            minHeight: 36.0,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Atau",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                Divider(),

                SocialButton()
              ],
            ),
          ),
        )

      ],
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Flexible(
      flex: 2,

      child: Stack(
        children: <Widget>[

          Container(
            height: MediaQuery.of(context).size.height,
          ),

          Container(
            height: MediaQuery.of(context).size.height / 2.4,
            decoration: BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                image: AssetImage('Pictures/KKTOFICIAL.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.8,

            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(

                margin: const EdgeInsets.all(20.0),
                elevation: 8,
                child: Padding(

                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),

                      TextField(

                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),

                          focusedBorder: UnderlineInputBorder(

                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          labelText: "EMAIL : ",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.security,
                            color: Colors.black,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.pinkAccent,
                            ),
                          ),
                          labelText: "PASSWORD: ",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(

                        padding: const EdgeInsets.only(
                            top: 20, bottom: 5, right: 15.0),

                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "LUPA PASSWORD?",
                            style: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



class SocialButton extends StatelessWidget {
  const SocialButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Image.asset(
              'Pictures/facebook.png',
            ),
            backgroundColor: Color(0xFF5D74E2),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Image.asset(
              'Pictures/twitter.png',
            ),
            backgroundColor: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            child: Image.asset(
              'Pictures/google.png',
            ),
            backgroundColor: Colors.white,
          ),
        ),
        FloatingActionButton(
          heroTag: null,
          onPressed: () {},
          child: Image.asset(
            'Pictures/instagram.png',
          ),
          backgroundColor: Color(0xFF5D74E2),
        ),
      ],
    );
  }
}

