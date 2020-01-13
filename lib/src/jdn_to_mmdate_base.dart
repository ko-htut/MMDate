// TODO: Put public facing types in this file.

import 'dart:html';

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
}

class JMMDate {
  var _edate = DateTime.now();
//မြန်မာ ပြက္ခဒိန်မှာ သူရိယနှစ် တစ်နှစ်ရဲ့ ကြာချိန် (Solar Year) ကို ၁၅၇၇၉၁၇၈၂၈/၄၃၂၀၀၀၀ (၃၆၅.၂၅၈၇၅၆၅) ရက် လို့သတ်မှတ်ထား ပါတယ် [Irwin, 1909]။ အဲဒီ ကိန်းသေ ကို SY လို့ခေါ်လိုက် ပါမယ်။
  var sy = 1577917828 ~/ 4320000;
// မြန်မာနှစ် သုညနှစ် ရဲ့ အစကိန်းသေကို MO
// ( နှစ်တချို့ရဲ့ သိပြီးသား နှစ်ဆန်းချိန် တွေကို ja မှာ အစားထိုးပြီး၊ ပျမ်းမျှရှာပြီး ခန့်မှန်း တဲ့အခါ MO ကို ဂျူလီယန်ရက်တန်ဖိုး ၁၉၅၄၁၆၈.၀၅၀၆၂၃ လို့ ခန့်မှန်းလို့ ရပါတယ်။)
  var mo = 1954168.050623;


  JMMDate();
//ဂျုလီယန်ရက်စုစုပေါင်း
  int _jdndaynocal() {
    var a = ((14 - _edate.month) ~/ 12);
    var y = (_edate.year + 4800 - a);
    var m = _edate.month + (12 * a) - 3;
    var jdn = _edate.day +
        (((153 * m) + 2) ~/ 5) +
        (365 * y) +
        (y ~/ 4) -
        (y ~/ 100) +
        (y ~/ 400) -
        32045;
    print("test jdn no $jdn");
    return jdn;
  }

  //ဂျုလီယန်ရက် နံပါတ်..
  int _jdndate() {
    _jdndaynocal();
    var df = (((_edate.hour) ~/ 24) +
        (_edate.minute ~/ 1440) +
        (_edate.second ~/ 86400));
    var jd = _jdndaynocal() + df;
    print("test jdndate $jd");
    return jd;
  }

//ဂျူလီယန်ရက်နံပါတ်မှ မြန်မာရက်သို့..
//ရှာလိုတဲ့မြန်မာသက္ကရဇ် - my
  int _jdntommyear() {
    var my = ((_jdndate() - 0.5 - mo) ~/ sy);
    return my;
  }

//မြန်မာနစ်အစ
//ရှာလိုတဲ့နစ်ရဲ့ - ဂျုလီရန် ရက်တန်ဖိုး - နှစ်ဆန်းချိန်ရဲ့ ဂျူလီယန် ရက်တန်ဖိုး အဖြေ - ja
//နှစ်တချို့ရဲ့ သိပြီးသား နှစ်ဆန်းချိန် တွေကို ja မှာ အစားထိုးပြီး၊ ပျမ်းမျှရှာပြီး ခန့်မှန်း တဲ့အခါ MO ကို ဂျူလီယန်ရက်တန်ဖိုး 1954168.050623 - MO
  _jdnmmdaystart() {
    var ja = (sy * _jdntommyear()) + mo;
    return ja;
  }

  
}
