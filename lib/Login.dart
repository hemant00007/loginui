import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:decbliz/Constants.dart';
import 'package:flutter/services.dart';
class Login extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();

  }

  class _LoginScreenState extends State<Login> {

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Email",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white
          ),
        ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.centerLeft,
         height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0,2)
              )
            ]
          ),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 15),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff5ac18e),
              ),
              hintText: "Enter Email",
              hintStyle: TextStyle(
                color: Colors.black38
              )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Password",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white
          ),
        ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.centerLeft,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          child: TextField(
           obscureText: true,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff5ac18e),
                ),
                hintText: "Enter Password",
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildForgetButton(){
    return Container(
      alignment: Alignment.topRight,
      child: FlatButton(
        onPressed: ()=> print("forget password is cliced"),
        padding: EdgeInsets.only(right: 10),
        child: Text(
          "Forget Password",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildRememberMe(){
    bool isRememberMe=false;
    return Container(
      height: 30,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              activeColor: Colors.green,
              onChanged:(value){
                setState(() {
                  isRememberMe =true;
                });
              },
            ),

          ),
          Text(
            "Remember Me",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            
            ),
          )
        ],
      ),
    );

  }
  
  Widget buildLoginButton(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: ()=> print("Login button is cliced"),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.white,
        child: Text(
          "Login ",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildSignupbtn(){
    return GestureDetector(
    onTap: ()=> print("Signup button is cliced"),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don\'t have an account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500
            )
          )
        ]
      ),
    ),
    );

  }
 @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors :[
                      Color(0x665ac18e),
                      Color(0x995ac18e),
                      Color(0xcc5ac18e),
                      Color(0xff5ac18e),

                    ]
                  )
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 100
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 50,),
                      buildEmail(),
                      SizedBox(height: 15),
                      buildPassword(),
                      SizedBox(height: 10),
                      buildForgetButton(),
                      buildRememberMe(),
                      SizedBox(height: 20),
                      buildLoginButton(),
                      SizedBox(height: 20),
                      buildSignupbtn()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


