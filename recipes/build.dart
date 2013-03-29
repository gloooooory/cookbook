import 'packages/web_ui/component_build.dart';
import 'dart:io';

void main() {
  build(new Options().arguments, [
      'web/webui/one_way_data_binding/main.html',
      'web/webui/two_way_data_binding/main.html',
      'web/webui/conditionals/main.html', 
      'web/webui/edit_form/main.html',
      ]);
}


