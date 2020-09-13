import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class TextFieldScreen extends StatefulWidget {
  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.TEXTFIELD),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 16.0),
              TextFormField(
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  labelText: "Username",
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Enter your name",
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: _obscureText,
                maxLines: 1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  )),
                  hintText: "Enter your password",
                  labelText: "Password",
                  suffixIcon: GestureDetector(
                    child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                keyboardType: TextInputType.phone,
                maxLengthEnforced: true,
                maxLength: 10,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  prefixText: '+91 ',
                  hintText: "Enter phone number",
                  labelText: "Phone number",
                  filled: true,
                  icon: Icon(Icons.phone),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter email",
                  labelText: "Email",
                  filled: true,
                  icon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                keyboardType: TextInputType.text,
                maxLines: 3,
                decoration: InputDecoration(
                  helperMaxLines: 1,
                  helperText: "Specify full address",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Enter your address",
                  labelText: "Address",
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                keyboardType: TextInputType.number,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: "Enter your amount",
                  filled: true,
                  suffixText: "INR",
                  labelText: "Amount",
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
