import 'package:mockito/mockito.dart';
import 'package:surveys_app/validation/protocols/field_validation.dart';
import 'package:surveys_app/validation/validation_composite.dart';
import 'package:test/test.dart';

class FieldValidationSpy extends Mock implements FieldValidation {}

void main() {
  test('Should return null if all validations return null or empty', () {
    final validation1 = FieldValidationSpy();
    when(validation1.field).thenReturn('any_field');
    when(validation1.validate(any)).thenReturn(null);
    final validation2 = FieldValidationSpy();
    when(validation2.field).thenReturn('any_field');
    when(validation2.validate(any)).thenReturn('');
    final sut = ValidationComposite([validation1, validation2]);

    final error = sut.validate(field: 'any_field', value: 'any_value');

    expect(error, null);
  });
}