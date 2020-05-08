A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:mmdate/mmdate.dart';

main() {
  MMDate mmdate = new MMDate();
}
```

get MM-date
```
Sting mmdate = mmdate.now();
//  နမှုနာ "  ၁၃၈၁ : ပြာသို : လဆုတ် ၄ ရက် : တနင်္လာ "
```

get year

```
String mmyear = mmdate.year();
// နမှုနာ "၁၃၈၁"
```

get month

```
String mmonth = mmdate.month();
// နမှုနာ တော်သလင်းလ
```

get day
```
String mmday = mmdate.day();
//နမှုနာ သောကြာ
```
get nextday
```
String mmnextday = mmdate.nextday(10);
//နမှုနာ ယနေ့၇က်မှစပြီးနောက်ထပ် ၁၀ ၇က်မြောက်နေ့ ၇က်စွဲအား တွက်ချက်ပါသည် ။
```
## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
# Algorithm, Program and Calculation of Myanmar Date

# Credit..

yan9a  :https://yan9a.github.io/mcal

Website 1 :[http://cool-emerald.blogspot.com/2013/06/algorithm-program-and-calculation-of.html](http://cool-emerald.blogspot.com/2013/06/algorithm-program-and-calculation-of.html)
