class AppLocalization {
  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'welcome': 'Welcome',
      'login': 'Login',
      'register': 'Register',
    },
    'hi': {
      'welcome': 'स्वागत है',
      'login': 'लॉग इन',
      'register': 'पंजीकरण',
    },
    'ta': {
      'welcome': 'வரவேற்பு',
      'login': 'உள்நுழைய',
      'register': 'பதிவு செய்ய',
    },
    // Add more languages as needed
  };

  static String? translate(String key, String lang) {
    return _localizedValues[lang]?[key] ?? key;
  }
}

