import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutterassignment/address/widgets/countries.dart';

class CountryField extends StatelessWidget {
  const CountryField({super.key, required this.textKey});
  final GlobalKey<AutoCompleteTextFieldState<String>> textKey;

  @override
  Widget build(BuildContext context) {
    return AutoCompleteTextField<String>(
      submitOnSuggestionTap: true,
      key: textKey,
      clearOnSubmit: false,
      suggestions: countries,
      style: const TextStyle(color: Colors.black, fontSize: 16.0),
      decoration: const InputDecoration(
        labelText: 'Country',
        hintText: 'Type to search',
        suffixIcon: Icon(Icons.search),
      ),
      itemFilter: (item, query) {
        return item.toLowerCase().startsWith(query.toLowerCase());
      },
      itemSorter: (a, b) {
        return a.compareTo(b);
      },
      itemSubmitted: (item) {},
      itemBuilder: (context, item) {
        return ListTile(
          title: Text(item),
        );
      },
    );
  }
}
