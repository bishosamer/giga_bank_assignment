import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutterassignment/address/widgets/country_field.dart';
import 'package:flutterassignment/address/widgets/custom_text_field.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Please enter information as written on your ID document.',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              CountryField(
                textKey: GlobalKey<AutoCompleteTextFieldState<String>>(),
              ),
              CustomTextField(
                onSaved: (String? str) {},
                hintText: 'Prefecture',
              ),
              CustomTextField(
                onSaved: (String? str) {},
                hintText: 'Municipality',
              ),
              CustomTextField(
                onSaved: (String? str) {},
                hintText: 'Street Adress (subarea - block - house)',
              ),
              CustomTextField(
                onSaved: (String? str) {},
                hintText: 'Apartment, suite or unit',
              ),
              Spacer(),
              MaterialButton(
                  height: 75,
                  minWidth: MediaQuery.of(context).size.width,
                  color: Theme.of(context).primaryColor,
                  shape: const StadiumBorder(),
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {})
            ],
          )),
        ));
  }
}
