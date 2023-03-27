import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

class AppLocalization {
  AppLocalization(this.locale);

  final Locale locale;

  static AppLocalization? of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'Login': 'Login',
      'Enter- your emails and password': 'Enter your emails and password',
      'Forgot password?': 'Forgot password ?',
      'Don\'t have an account?': 'Don\'t have an account?',
      'Signup': 'Signup',
      'Sign Up': 'Sign Up',
      'Email': 'Email',
      'Password': 'Password',
      'credential': 'Enter your credentials to continue',
      'User': 'Username',
      'Having?': 'Already have an account?,',
      'Sign in': 'Sign in',
      'Banner': 'Fresh Vegetables',
      'Exclusive Order': 'Exclusive Order',
      'Best Sell': 'Best Selling',
      'Groceries': 'Groceries',
      'Find Products': 'Find Products',
      'My Cart': 'My Cart',
      'My Favourites': 'My Favourites',
      'check': 'Go To Check Out',
      'Log Out': 'Log Out',
      'Fresh Fruits & Vegetables': 'Fresh Fruits & Vegetables',
      'Cooking Oil': 'Cooking Oil',
      'No Favorite Items': 'No Favorite Items',
      'Meat & Fish': 'Meat & Fish',
      'Bakery & Snacks': 'Bakery & Snacks',
      'Dairy & Eggs': 'Dairy & Eggs',
      'Beverages': 'Beverages',
      'orders': 'Orders',
      'my details': 'My Details',
      'delivery access': 'Delivery Aceess',
      'Payment Methods': 'Payment Methods',
      'Promo Card': 'Promo Card',
      'Notifications': 'Notifications',
      'Help': 'Help',
      'About': 'About'
    },
    'ml': {
      'Login': 'ലോഗിൻ',
      'Enter- your emails and password':
          'നിങ്ങളുടെ ഇമെയിലുകളും പാസ്‌വേഡും നൽകുക',
      'Forgot password?': 'പാസ്വേഡ് മറന്നോ ?',
      'Don\'t have an account?': 'ഒരു അക്കൗണ്ട് ഇല്ലേ?',
      'Signup': 'സൈൻ അപ്പ് ചെയ്യുക',
      'Sign Up': 'സൈൻ അപ്പ് ചെയ്യുക',
      'Email': 'ഇമെയിൽ',
      'Password': 'രഹസ്യ കോഡ്‌',
      'credential': 'തുടരാൻ നിങ്ങളുടെ ക്രെഡൻഷ്യലുകൾ നൽകുക',
      'User': 'തുടരാനുള്ള ഉപയോക്തൃനാമം',
      'Having?': 'ഇതിനകം ഒരു അക്കൗണ്ട് ഉണ്ടോ?',
      'Sign in': 'അടയാളം',
      'Banner': 'പുതിയ പച്ചക്കറികൾ',
      'Exclusive Order': 'പ്രത്യേക ഓർഡർ',
      'Best Sell': 'മികച്ച വിൽപ്പന',
      'Groceries': 'പലചരക്ക് സാധനങ്ങൾ',
      'Find Products': 'ഉൽപ്പന്നം കണ്ടെത്തുക',
      'My Cart': 'എന്റെ വണ്ടി',
      'My Favourites': 'എന്റെ പ്രിയപ്പെട്ടവ',
      'check': 'ചെക്ക് ഔട്ട് ചെയ്യാൻ പോകുക',
      'Log Out': 'പുറത്തുകടക്കുക',
      'Fresh Fruits & Vegetables': 'പുതിയ പഴങ്ങളും പച്ചക്കറികളും',
      'Cooking Oil': 'പാചക എണ്ണ',
      'No Favorite Items': 'പ്രിയപ്പെട്ട ഇനങ്ങൾ ഇല്ല',
      'Meat & Fish': 'മാംസവും മത്സ്യവും',
      'Bakery & Snacks': 'ബേക്കറിയും ലഘുഭക്ഷണവും',
      'Dairy & Eggs': 'പാലും മുട്ടയും',
      'Beverages': 'പാനീയങ്ങൾ',
      'orders': 'ഉത്തരവുകൾ',
      'my details': 'എന്റെ വിശദാംശങ്ങൾ',
      'Delivery Access': ' ഡെലിവറി ആക്സസ്',
      'Payment Methods': 'പേയ്മെന്റ് രീതികൾ',
      'Promo Card': 'പ്രൊമോ കാർഡ്',
      'Notifications': 'അറിയിപ്പുകൾ',
      'Help': 'സഹായം',
      'About': 'കുറിച്ച്'
    },
    'hi': {
      'Login': 'लॉग इन करें',
      'Enter- your emails and password': 'अपने ईमेल और पासवर्ड दर्ज करें',
      "Forgot password?": 'पासवर्ड भूल गए ?',
      'Don\'t have an account?': 'खाता नहीं है?',
      'Signup': 'साइन अप करें',
      'Sign Up': 'साइन अप करें',
      'Email': 'ईमेल',
      'Password': 'पासवर्ड',
      'credential': 'जारी रखने के लिए अपनी साख दर्ज करें',
      'User': 'उपयोगकर्ता नाम जारी रखने के लिए',
      'Having?': 'क्या आपके पास पहले से एक खाता मौजूद है',
      'Sign in': 'संकेत',
      'Banner': 'ताज़ी सब्जियां',
      'Exclusive Order': 'अनन्य आदेश',
      'Best Sell': 'सर्वश्रेष्ठ बिक्री',
      'Groceries': 'किराने का सामान',
      'Find Products': 'उत्पाद खोजें',
      'My Cart': 'मेरी गाड़ी',
      'My Favourites': 'मेरा पसंदीदा',
      'check': 'परिक्षण के लिए जाएं',
      'Log Out': 'लॉग आउट',
      'Fresh Fruits & Vegetables': 'ताजे फल और सब्जियां',
      'Cooking Oil': 'खाना पकाने का तेल',
      'No Favorite Items': 'कोई पसंदीदा आइटम नहीं',
      'Meat & Fish': 'मांस और मछली',
      'Bakery & Snacks': 'बेकरी और स्नैक्स',
      'Dairy & Eggs': 'डेयरी और अंडे',
      'Beverages': 'पेय',
      'orders': 'आदेश',
      'my details': 'मेरे विवरण',
      'Delivery Access': 'वितरण पहुँच',
      'Payment Methods': 'भुगतान की विधि',
      'Promo Card': 'प्रोमो कार्ड',
      'Notifications': 'सूचनाएं',
      'Help': 'मदद',
      'About': 'के बारे में'
    },
    'ta': {
      'Login': 'உள்நுழைய',
      'Enter- your emails and password':
          'உங்கள் மின்னஞ்சல்கள் மற்றும் கடவுச்சொல்லை உள்ளிடவும்',
      "Forgot password?": 'கடவுச்சொல்லை மறந்துவிட்டீர்களா ?',
      'Don\'t have an account?': 'கணக்கு இல்லையா?',
      'Signup': 'பதிவு செய்யவும்',
      'Sign Up': 'பதிவு செய்யவும்',
      'Email': 'மின்னஞ்சல்',
      'Password': 'கடவுச்சொல்',
      'credential': 'தொடர உங்கள் சான்றுகளை உள்ளிடவும்',
      'User': 'தொடர பயனர்பெயர்',
      'Having?': 'ஏற்கனவே ஒரு கணக்கு உள்ளதா? தமிழ்',
      'Sign in': "அடையாளம்",
      'Banner': 'புதிய காய்கறிகள்',
      'Exclusive Order': 'பிரத்தியேக ஒழுங்கு',
      'Best Sell': 'சிறந்த விற்பனை',
      'Groceries': 'மளிகை',
      'Find Products': 'பொருட்கள் கண்டுபிடிக்க',
      'My Cart': 'என் வண்டி',
      'My Favourites': 'எனக்கு பிடித்தவை',
      'check': 'சென்று பார்க்க',
      'Log Out': 'வெளியேறு',
      'Fresh Fruits & Vegetables': 'புதிய பழங்கள் மற்றும் காய்கறிகள்',
      'Cooking Oil': 'சமையல் எண்ணெய்',
      'No Favorite Items': 'பிடித்த பொருட்கள் இல்லை',
      'Meat & Fish': 'இறைச்சி மற்றும் மீன்',
      'Bakery & Snacks': 'பேக்கரி மற்றும் சிற்றுண்டி',
      'Dairy & Eggs': 'பால் & முட்டை',
      'Beverages': 'பானங்கள்',
      'orders': 'மேலிட உத்தரவுகள்',
      'my details': 'என் விவரங்கள்',
      'Delivery Access': 'விநியோக அணுகல்',
      'Payment Methods': 'பணம் செலுத்தும் முறைகள்',
      'Promo Card': 'விளம்பர அட்டை',
      'Notifications': 'அறிவிப்புகள்',
      'Help': 'உதவி',
      'About': 'பற்றி'
    },
  };

  String translate(String key) {
    return _localizedValues[locale.languageCode]![key] ?? '** $key not found';
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'ml', 'hi', 'ta'].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) {
    return SynchronousFuture<AppLocalization>(
      AppLocalization(locale),
    );
  }

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
}
