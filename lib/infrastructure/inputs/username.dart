import 'package:formz/formz.dart';

enum PassworError { empty, length }

class Passwor extends FormzInput<String, PassworError> {
  const Passwor.pure() : super.pure('');

  const Passwor.dirty(String value) : super.dirty(value);

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == PassworError.empty) return 'El campo se requerido';
    if (displayError == PassworError.length) return 'Mínimo 6 caracteres';
    return null;
  }

  @override
  PassworError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return PassworError.empty;
    if (value.length < 6) return PassworError.length;
    return null;
  }
}
