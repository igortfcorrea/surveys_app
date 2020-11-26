import 'package:test/test.dart';

import 'package:surveys_app/validation/validators/validators.dart';

void main() {
  RequiredFieldValidation sut;

  setUp(() {
    sut = RequiredFieldValidation();
  });

  test('Should return null if value is not empty', () {
    expect(sut.validate('any_value'), null);
  });

  test('Should return error if value is empty', () {
    expect(sut.validate(''), 'Campo obrigatório');
  });

  test('Should return error if value is null', () {
    expect(sut.validate(null), 'Campo obrigatório');
  });
}