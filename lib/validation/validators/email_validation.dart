import 'package:equatable/equatable.dart';
import 'package:surveys_app/validation/protocols/field_validation.dart';

class EmailValidation extends Equatable implements FieldValidation {
  final String field;

  List get props => [field];

  EmailValidation(this.field);

  String validate(String value) {
    final regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isValid = value?.isNotEmpty != true || regExp.hasMatch(value);
    return isValid ? null : 'Campo inválido';
  }
}
