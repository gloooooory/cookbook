// Auto-generated from main.html.
// DO NOT EDIT.

library main_html;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'dart:html';


// Original code
class Book {
  String title;
  num price;
  num numPages;
  bool available;
 
  Book(this.title, this.price, this.numPages, [this.available=true]);
}

// BEGIN(conditionals_and_loops_noBooks_dart)
List<Book> books = [];
bool get noBooks => books.isEmpty;
// END(conditionals_and_loops_noBooks_dart)

// BEGIN(conditionals_and_loops_showBookDetails_dart))
bool showBookDetails = true;
// END(conditionals_and_loops_showBookDetails_dart))


// BEGIN(conditionals_and_loops_emptyBookList)
emptyBookList() {
  books = []; 
  return false;
}
// END(conditionals_and_loops_emptyBookList)

main() {
  books = [
    new Book("War and Peace", 20.99, 1013),
    new Book("Anna Karenina", 23.99, 1243, false),
    new Book("The Old Man and the Sea", 8.99, 78)
  ]; 
}


// Additional generated code
/** Create the views and bind them to models. */
void init_autogenerated() {
  var _root = autogenerated_html.document.body;
  autogenerated_html.UnknownElement __e0;
  
  List<autogenerated.WatcherDisposer> __stoppers1;
  
  autogenerated_html.Node _endPosition__e0;
  
  bool _isVisible__e0 = false;
  
  autogenerated_html.UnknownElement __e16;
  
  autogenerated_html.Node _endPosition__e16;
  
  bool _isVisible__e16 = false;
  
  autogenerated_html.UListElement __e12;
  
  autogenerated_html.UnknownElement __e11;
  
  List<autogenerated.WatcherDisposer> __stoppers2_1;
  
  List<Function> _removeChild__e11 = [];
  
  autogenerated_html.Node _endPosition__e11;
  
  autogenerated_html.DivElement __e14;
  
  autogenerated_html.InputElement __e13;
  
  autogenerated_html.EventListener __listener__e13_change_5_4;
  
  autogenerated_html.DivElement __emptyBookList;
  
  autogenerated_html.AnchorElement __e15;
  
  autogenerated_html.EventListener __listener__e15_click_6_5;
  


  // Initialize fields.
  __e0 = _root.query('#__e-0');
  __stoppers1 = [];
  __e16 = _root.query('#__e-16');
  

  // Attach model to views.
  _endPosition__e0 = __e0;
  
  __stoppers1.add(autogenerated.watchAndInvoke(() => noBooks, (__e) {
    bool showNow = __e.newValue;
    if (_isVisible__e0 && !showNow) {
      _isVisible__e0 = false;
      
      _endPosition__e0 = autogenerated.removeNodes(__e0, _endPosition__e0);
      
    } else if (!_isVisible__e0 && showNow) {
      
      _isVisible__e0 = true;
      
      autogenerated.insertAllBefore(__e0.parentNode, __e0.nextNode,
      
      [_endPosition__e0 = new autogenerated_html.Element.html('<h2>No Books to Display</h2>')]);
      
    }
  }));
  
  _endPosition__e16 = __e16;
  
  __stoppers1.add(autogenerated.watchAndInvoke(() => !noBooks, (__e) {
    bool showNow = __e.newValue;
    if (_isVisible__e16 && !showNow) {
      _isVisible__e16 = false;
      
      __e12 = null;
      (__stoppers2_1..forEach((s) => s())).clear();
      _endPosition__e11 = autogenerated.removeNodes(__e11, _endPosition__e11);
      for (var remover in _removeChild__e11) remover();
      _removeChild__e11.clear();
      
      __e11 = null;
      __e14 = null;
      __e13.on.change.remove(__listener__e13_change_5_4);
      __listener__e13_change_5_4 = null;
      
      __e13 = null;
      __emptyBookList = null;
      __e15.on.click.remove(__listener__e15_click_6_5);
      __listener__e15_click_6_5 = null;
      
      __e15 = null;
      
      _endPosition__e16 = autogenerated.removeNodes(__e16, _endPosition__e16);
      
    } else if (!_isVisible__e16 && showNow) {
      
      _isVisible__e16 = true;
      
      __e12 = new autogenerated_html.Element.html('<ul>\n        <template id="__e-11" style="display:none"></template>\n      </ul>');
      __e11 = __e12.query('#__e-11');
      __stoppers2_1 = [];
      __e14 = new autogenerated_html.Element.html('<div><input type="checkbox" id="__e-13">show details</div>');
      __e13 = __e14.query('#__e-13');
      __emptyBookList = new autogenerated_html.Element.html('<div id="emptyBookList"><a href="#" id="__e-15">delete all books</a></div>');
      __e15 = __emptyBookList.query('#__e-15');
      
      autogenerated.insertAllBefore(__e16.parentNode, __e16.nextNode,
      
      [new autogenerated_html.Text('\n    '), new autogenerated_html.Text('\n      '), new autogenerated_html.Element.html('<h2>Books:</h2>'), new autogenerated_html.Text('\n      '), __e12, new autogenerated_html.Text(' \n      '), new autogenerated_html.Text('\n      '), __e14, new autogenerated_html.Text(' \n      '), new autogenerated_html.Text('\n      '), new autogenerated_html.HRElement(), new autogenerated_html.Text('\n      '), __emptyBookList, _endPosition__e16 = new autogenerated_html.Text('\n    ')]);
      
      _endPosition__e11 = __e11;
      __stoppers2_1.add(autogenerated.watchAndInvoke(() => books, (_) {
        for (var remover in _removeChild__e11) remover();
        _removeChild__e11.clear();
        
        _endPosition__e11 = autogenerated.removeNodes(__e11, _endPosition__e11);
        var __insert___e11 = __e11.nextNode;
        for (var book in books) {
          autogenerated_html.LIElement __e10;
          var __binding1;
          List<autogenerated.WatcherDisposer> __stoppers3_2_1;
          autogenerated_html.UListElement __e9;
          bool _isVisible__e9 = false;
          autogenerated_html.UListElement __e8;
          autogenerated_html.LIElement __e3;
          var __binding2;
          List<autogenerated.WatcherDisposer> __stoppers4_3_2_1;
          autogenerated_html.LIElement __e5;
          var __binding4;
          autogenerated_html.LIElement __e7;
          var __binding6;
          __e10 = new autogenerated_html.LIElement();
          __binding1 = new autogenerated_html.Text('');
          __stoppers3_2_1 = [];
          __e9 = new autogenerated_html.Element.html('<ul style="display:none"></ul>');
          __e10.nodes.add(__binding1);
          __e10.nodes.add(new autogenerated_html.Text('\n          '));
          __e10.nodes.add(__e9);
          __e10.nodes.add(new autogenerated_html.Text('\n          '));
          autogenerated.insertAllBefore(__e11.parentNode, __insert___e11,
          [new autogenerated_html.Text('\n          '), __e10, _endPosition__e11 = new autogenerated_html.Text('\n        ')]);
          __stoppers3_2_1.add(autogenerated.watchAndInvoke(() => '${book.title}', (__e) {
            __binding1 = autogenerated.updateBinding(book.title, __binding1, __e.newValue);
          }));
          __stoppers3_2_1.add(autogenerated.watchAndInvoke(() => showBookDetails, (__e) {
            bool showNow = __e.newValue;
            if (_isVisible__e9 && !showNow) {
              _isVisible__e9 = false;
              
              __e8 = null;
              __e3 = null;
              (__stoppers4_3_2_1..forEach((s) => s())).clear();
              __binding2 = null;
              __e5 = null;
              __binding4 = null;
              __e7 = null;
              __binding6 = null;
              __e9.nextNode.remove();
            } else if (!_isVisible__e9 && showNow) {
              _isVisible__e9 = true;
              __e8 = new autogenerated_html.Element.html('<ul template="" instantiate="if showBookDetails">\n            <li id="__e-3"></li>\n            <li id="__e-5"></li>\n            <li id="__e-7"></li>\n          </ul>');
              __e3 = __e8.query('#__e-3');
              __binding2 = new autogenerated_html.Text('');
              __stoppers4_3_2_1 = [];
              __e3.nodes.add(new autogenerated_html.Text('\$'));
              __e3.nodes.add(__binding2);
              __e5 = __e8.query('#__e-5');
              __binding4 = new autogenerated_html.Text('');
              __e5.nodes.add(__binding4);
              __e5.nodes.add(new autogenerated_html.Text(' pages'));
              __e7 = __e8.query('#__e-7');
              __binding6 = new autogenerated_html.Text('');
              __e7.nodes.add(__binding6);
              __e9.parentNode.insertBefore(__e8, __e9.nextNode);
              __stoppers4_3_2_1.add(autogenerated.watchAndInvoke(() => '${book.price}', (__e) {
                __binding2 = autogenerated.updateBinding(book.price, __binding2, __e.newValue);
              }));
              __stoppers4_3_2_1.add(autogenerated.watchAndInvoke(() => '${book.numPages}', (__e) {
                __binding4 = autogenerated.updateBinding(book.numPages, __binding4, __e.newValue);
              }));
              __stoppers4_3_2_1.add(autogenerated.watchAndInvoke(() => '${book.available ? "Available" : "Out of Stock"}', (__e) {
                __binding6 = autogenerated.updateBinding(book.available ? "Available" : "Out of Stock", __binding6, __e.newValue);
              }));
              
            }
          }));
          
          _removeChild__e11.add(() {
            __e10 = null;
            (__stoppers3_2_1..forEach((s) => s())).clear();
            __binding1 = null;
            if (_isVisible__e9) {
              __e9.nextNode.remove();
              __e8 = null;
              __e3 = null;
              (__stoppers4_3_2_1..forEach((s) => s())).clear();
              __binding2 = null;
              __e5 = null;
              __binding4 = null;
              __e7 = null;
              __binding6 = null;
            }
            __e9 = null;
          });
        }
      }));
      __listener__e13_change_5_4 = ($event) {
        showBookDetails = __e13.checked;
        autogenerated.dispatch();
      };
      __e13.on.change.add(__listener__e13_change_5_4);
      
      __stoppers2_1.add(autogenerated.watchAndInvoke(() => showBookDetails, (__e) { __e13.checked = __e.newValue; }));
      __listener__e15_click_6_5 = ($event) {
        emptyBookList();
        autogenerated.dispatch();
      };
      __e15.on.click.add(__listener__e15_click_6_5);
      
    }
  }));
  

}
