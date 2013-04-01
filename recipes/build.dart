import 'packages/web_ui/component_build.dart';
import 'dart:io';

void main() {
  build(new Options().arguments, [
      'web/webui/inject_expression/main.html',
      'web/webui/one_way_data_binding/main.html',
      'web/webui/two_way_data_binding/main.html',
      'web/webui/conditionals/main.html', 
      'web/webui/change_style/main.html', 

      'web/webui/complexBinding/main.html',
      'web/webui/complexBindingWithComposition/main.html',
      'web/webui/complexBindingPartial/main.html',
      'web/webui/complexBindingWithMap/main.html',
      
      'web/webui/loopUsingTable/main.html',
      'web/webui/loop/main.html'
      ]);
}


