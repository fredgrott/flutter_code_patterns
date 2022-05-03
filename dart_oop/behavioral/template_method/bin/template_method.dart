

import 'package:template_method/template_method.dart';

void main() {
  final con1 = Concrete();
  final con2 = ConcreteOverridingHook();
  con1.templateMethod();
  con2.templateMethod();

  /*
    This is a boring example...
    OMG I am a hook!
    So, so boring...
    I'm an overriden hook method!
  */
}
