import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputField extends StatelessWidget {
  GetxController _getxController;
  String _nameForm, _hintText;
  TextEditingController _textEditingController;
  bool _required = false;
  IconData _icon = null;
  bool get required => this._required;

  InputField(
      {GetxController x,
      String nameForm,
      TextEditingController controller,
      bool required = false,
      String hintText = '',
      IconData icon = null}) {
    this._getxController = x;
    this._nameForm = nameForm;
    this._textEditingController = controller;
    this._required = required;
    this._hintText = hintText;
    this._icon = icon;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (txt) {
        _getxController.update([_nameForm]);
      },
      controller: _textEditingController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          prefixIcon: Icon(
            _icon,
            color: Theme.of(context).iconTheme.color,
          ),
          hintText: _hintText),
      validator: (value) =>
          (this.required && value.trim().isEmpty) ? 'Campo requerido' : null,
    );
  }
}
