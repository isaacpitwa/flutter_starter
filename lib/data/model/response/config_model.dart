class ConfigModel {
  late int _systemDefaultCurrency;
  BaseUrls? _baseUrls;
  StaticUrls? _staticUrls;
  late List<CurrencyList> _currencyList;
  Language? _language;

  ConfigModel({ required int systemDefaultCurrency,  required BaseUrls baseUrls, required StaticUrls staticUrls, required List<CurrencyList> currencyList, required Language language}) {
    _systemDefaultCurrency = systemDefaultCurrency;
    _baseUrls = baseUrls;
    _staticUrls = staticUrls;
    _currencyList = currencyList;
    _language = language;
  }

  int get systemDefaultCurrency => _systemDefaultCurrency;
  BaseUrls? get baseUrls => _baseUrls;
  StaticUrls? get staticUrls => _staticUrls;
  List<CurrencyList> get currencyList => _currencyList;
  Language? get language => _language;

  ConfigModel.fromJson(Map<String, dynamic> json) {
    _systemDefaultCurrency = json['system_default_currency'];
    _baseUrls = json['base_urls'] != null ? new BaseUrls.fromJson(json['base_urls']) : null;
    _staticUrls = json['static_urls'] != null ? new StaticUrls.fromJson(json['static_urls']) : null;
    if (json['currency_list'] != null) {
      _currencyList = [];
      json['currency_list'].forEach((v) { _currencyList.add(new CurrencyList.fromJson(v)); });
    }
    _language = json['language'] != null ? new Language.fromJson(json['language']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['system_default_currency'] = _systemDefaultCurrency;
    if (_baseUrls != null) {
      data['base_urls'] = _baseUrls?.toJson();
    }
    if (_staticUrls != null) {
      data['static_urls'] = _staticUrls?.toJson();
    }
    if (_currencyList != null) {
      data['currency_list'] = _currencyList.map((v) => v.toJson()).toList();
    }
    if (_language != null) {
      data['language'] = _language?.toJson();
    }
    return data;
  }
}

class BaseUrls {
 late  String _productImageUrl;
 late  String _productThumbnailUrl;
 late  String _brandImageUrl;
 late  String _customerImageUrl;
  late String _bannerImageUrl;
 late  String _categoryImageUrl;
 late  String _reviewImageUrl;
 late  String _sellerImageUrl;
 late  String _shopImageUrl;
 late  String _notificationImageUrl;

  BaseUrls({ required String productImageUrl,required  String productThumbnailUrl, required String brandImageUrl, required String customerImageUrl, required String bannerImageUrl, required String categoryImageUrl,required  String reviewImageUrl,required  String sellerImageUrl,required  String shopImageUrl, required String notificationImageUrl}) {
    _productImageUrl = productImageUrl;
    _productThumbnailUrl = productThumbnailUrl;
    _brandImageUrl = brandImageUrl;
    _customerImageUrl = customerImageUrl;
    _bannerImageUrl = bannerImageUrl;
    _categoryImageUrl = categoryImageUrl;
    _reviewImageUrl = reviewImageUrl;
    _sellerImageUrl = sellerImageUrl;
    _shopImageUrl = shopImageUrl;
    _notificationImageUrl = notificationImageUrl;
  }

  String get productImageUrl => _productImageUrl;
  String get productThumbnailUrl => _productThumbnailUrl;
  String get brandImageUrl => _brandImageUrl;
  String get customerImageUrl => _customerImageUrl;
  String get bannerImageUrl => _bannerImageUrl;
  String get categoryImageUrl => _categoryImageUrl;
  String get reviewImageUrl => _reviewImageUrl;
  String get sellerImageUrl => _sellerImageUrl;
  String get shopImageUrl => _shopImageUrl;
  String get notificationImageUrl => _notificationImageUrl;

  BaseUrls.fromJson(Map<String, dynamic> json) {
    _productImageUrl = json['product_image_url'];
    _productThumbnailUrl = json['product_thumbnail_url'];
    _brandImageUrl = json['brand_image_url'];
    _customerImageUrl = json['customer_image_url'];
    _bannerImageUrl = json['banner_image_url'];
    _categoryImageUrl = json['category_image_url'];
    _reviewImageUrl = json['review_image_url'];
    _sellerImageUrl = json['seller_image_url'];
    _shopImageUrl = json['shop_image_url'];
    _notificationImageUrl = json['notification_image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_image_url'] = _productImageUrl;
    data['product_thumbnail_url'] = _productThumbnailUrl;
    data['brand_image_url'] = _brandImageUrl;
    data['customer_image_url'] = _customerImageUrl;
    data['banner_image_url'] = _bannerImageUrl;
    data['category_image_url'] = _categoryImageUrl;
    data['review_image_url'] = _reviewImageUrl;
    data['seller_image_url'] = _sellerImageUrl;
    data['shop_image_url'] = _shopImageUrl;
    data['notification_image_url'] = _notificationImageUrl;
    return data;
  }
}

class StaticUrls {
  late String _aboutUs;
  late  String _faq;
  late String _termsConditions;
  late String _contactUs;
  late String _brands;
  late String _categories;
  late String _customerAccount;

  StaticUrls({required String aboutUs,required String faq,required String termsConditions, required String contactUs, required String brands,required  String categories, required String customerAccount}) {
    _aboutUs = aboutUs;
    _faq = faq;
    _termsConditions = termsConditions;
    _contactUs = contactUs;
    _brands = brands;
    _categories = categories;
    _customerAccount = customerAccount;
  }

  String get aboutUs => _aboutUs;
  String get faq => _faq;
  String get termsConditions => _termsConditions;
  String get contactUs => _contactUs;
  String get brands => _brands;
  String get categories => _categories;
  String get customerAccount => _customerAccount;

  StaticUrls.fromJson(Map<String, dynamic> json) {
    _aboutUs = json['about_us'];
    _faq = json['faq'];
    _termsConditions = json['terms_&_conditions'];
    _contactUs = json['contact_us'];
    _brands = json['brands'];
    _categories = json['categories'];
    _customerAccount = json['customer_account'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['about_us'] = _aboutUs;
    data['faq'] = _faq;
    data['terms_&_conditions'] = _termsConditions;
    data['contact_us'] = _contactUs;
    data['brands'] = _brands;
    data['categories'] = _categories;
    data['customer_account'] = _customerAccount;
    return data;
  }
}

class CurrencyList {
  late int _id;
  late String _name;
  late String _symbol;
  late String _code;
  late double _exchangeRate;
  late int _status;
  late String _createdAt;
  late String _updatedAt;

  CurrencyList({ required int id, required String name, required String symbol, required String code, required double exchangeRate, required int status, required String createdAt,required  String updatedAt}) {
    _id = id;
    _name = name;
    _symbol = symbol;
    _code = code;
    _exchangeRate = exchangeRate;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  int get id => _id;
  String get name => _name;
  String get symbol => _symbol;
  String get code => _code;
  double get exchangeRate => _exchangeRate;
  int get status => _status;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  CurrencyList.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _symbol = json['symbol'];
    _code = json['code'];
    _exchangeRate = json['exchange_rate'].toDouble();
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = _id;
    data['name'] = _name;
    data['symbol'] = _symbol;
    data['code'] = _code;
    data['exchange_rate'] = _exchangeRate;
    data['status'] = _status;
    data['created_at'] = _createdAt;
    data['updated_at'] = _updatedAt;
    return data;
  }
}

class Language {
  LanguageList? _languageList;
  Data? _data;

  Language({required LanguageList list,required  Data data}) {
    _languageList = list;
    _data = data;
  }

  LanguageList? get languageList => _languageList;
  Data? get data => _data;

  Language.fromJson(Map<String, dynamic> json) {
    _languageList = json['list'] != null ? new LanguageList.fromJson(json['list']) : null;
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (_languageList != null) {
      data['list'] = _languageList?.toJson();
    }
    if (_data != null) {
      data['data'] = _data?.toJson();
    }
    return data;
  }
}

class LanguageList {
  late String _bn;
  late String _en;

  LanguageList({required String bn, required String en}) {
    _bn = bn;
    _en = en;
  }

  String get bn => _bn;
  String get en => _en;

  LanguageList.fromJson(Map<String, dynamic> json) {
    _bn = json['bn'];
    _en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bn'] = _bn;
    data['en'] = _en;
    return data;
  }
}

class Data {
  Bn? _bn;
  En? _en;

  Data({required Bn bn, required En en}) {
    _bn = bn;
    _en = en;
  }

  Bn? get bn => _bn;
  En? get en => _en;

  Data.fromJson(Map<String, dynamic> json) {
    _bn = json['bn'] != null ? new Bn.fromJson(json['bn']) : null;
    _en = json['en'] != null ? new En.fromJson(json['en']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (_bn != null) {
      data['bn'] = _bn?.toJson();
    }
    if (_en != null) {
      data['en'] = _en?.toJson();
    }
    return data;
  }
}

class Bn {
  late String _home;

  Bn({ required String home}) {
    _home = home;
  }

  String get home => _home;

  Bn.fromJson(Map<String, dynamic> json) {
    _home = json['Home'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Home'] = _home;
    return data;
  }
}

class En {
  String? _home;
  String? _signIn;
  String? _myCart;
  String? _shippingMethod;
  String? _banner;
  String? _addMainBanner;
  String? _addFooterBanner;
  String? _mainBannerForm;
  String? _bannerUrl;
  String? _bannerType;
  String? _published;
  String? _mainBannerImage;
  String? _footerBannerForm;
  String? _footerBannerImage;
  String? _bannerTable;
  String? _bannerPhoto;
  String? _categories;
  String? _allCategories;
  String? _latestProducts;
  String? _moreProducts;
  String? _brands;
  String? _brandUpdate;
  String? _viewAll;
  String? _brand;
  String? _brandForm;
  String? _name;
  String? _brandLogo;
  String? _brandTable;
  String? _sl;
  String? _image;
  String? _action;
  String? _save;
  String? _update;
  String? _category;
  String? _icon;
  String? _categoryForm;
  String? _categoryTable;
  String? _slug;
  String? _subCategory;
  String? _subCategoryForm;
  String? _subCategoryTable;
  String? _selectCategoryName;
  String? _cashOnDelivery;
  String? _sslCommerzPayment;
  String? _paypal;
  String? _stripe;
  String? _paytm;

  En({String? home, String? signIn, String? myCart, String? shippingMethod, String? banner, String? addMainBanner, String? addFooterBanner, String? mainBannerForm, String? bannerUrl, String? bannerType, String? published, String? mainBannerImage, String? footerBannerForm, String? footerBannerImage, String? bannerTable, String? bannerPhoto, String? categories, String? allCategories, String? latestProducts, String? moreProducts, String? brands, String? brandUpdate, String? viewAll, String? brand, String? brandForm, String? name, String? brandLogo, String? brandTable, String? sl, String? image, String? action, String? save, String? update, String? category, String? icon, String? categoryForm, String? categoryTable, String? slug, String? subCategory, String? subCategoryForm, String? subCategoryTable, String? selectCategoryName, String? cashOnDelivery, String? sslCommerzPayment, String? paypal, String? stripe, String? paytm}) {
    _home = home;
    _signIn = signIn;
    _myCart = myCart;
    _shippingMethod = shippingMethod;
    _banner = banner;
    _addMainBanner = addMainBanner;
    _addFooterBanner = addFooterBanner;
    _mainBannerForm = mainBannerForm;
    _bannerUrl = bannerUrl;
    _bannerType = bannerType;
    _published = published;
    _mainBannerImage = mainBannerImage;
    _footerBannerForm = footerBannerForm;
    _footerBannerImage = footerBannerImage;
    _bannerTable = bannerTable;
    _bannerPhoto = bannerPhoto;
    _categories = categories;
    _allCategories = allCategories;
    _latestProducts = latestProducts;
    _moreProducts = moreProducts;
    _brands = brands;
    _brandUpdate = brandUpdate;
    _viewAll = viewAll;
    _brand = brand;
    _brandForm = brandForm;
    _name = name;
    _brandLogo = brandLogo;
    _brandTable = brandTable;
    _sl = sl;
    _image = image;
    _action = action;
    _save = save;
    _update = update;
    _category = category;
    _icon = icon;
    _categoryForm = categoryForm;
    _categoryTable = categoryTable;
    _slug = slug;
    _subCategory = subCategory;
    _subCategoryForm = subCategoryForm;
    _subCategoryTable = subCategoryTable;
    _selectCategoryName = selectCategoryName;
    _cashOnDelivery = cashOnDelivery;
    _sslCommerzPayment = sslCommerzPayment;
    _paypal = paypal;
    _stripe = stripe;
    _paytm = paytm;
  }

  String get home => _home ?? '';
  String get signIn => _signIn ?? '';
  String get myCart => _myCart ?? '';
  String get shippingMethod => _shippingMethod ?? '';
  String get banner => _banner ?? '';
  String get addMainBanner => _addMainBanner ?? '';
  String get addFooterBanner => _addFooterBanner?? '';
  String get mainBannerForm => _mainBannerForm ?? '';
  String get bannerUrl => _bannerUrl?? '';
  String get bannerType => _bannerType?? '';
  String get published => _published?? '';
  String get mainBannerImage => _mainBannerImage?? '';
  String get footerBannerForm => _footerBannerForm?? '';
  String get footerBannerImage => _footerBannerImage?? '';
  String get bannerTable => _bannerTable?? '';
  String get bannerPhoto => _bannerPhoto?? '';
  String get categories => _categories?? '';
  String get allCategories => _allCategories?? '';
  String get latestProducts => _latestProducts?? '';
  String get moreProducts => _moreProducts?? '';
  String get brands => _brands?? '';
  String get brandUpdate => _brandUpdate?? '';
  String get viewAll => _viewAll?? '';
  String get brand => _brand?? '';
  String get brandForm => _brandForm?? '';
  String get name => _name?? '';
  String get brandLogo => _brandLogo?? '';
  String get brandTable => _brandTable?? '';
  String get sl => _sl?? '';
  String get image => _image?? '';
  String get action => _action?? '';
  String get save => _save?? '';
  String get update => _update?? '';
  String get category => _category?? '';
  String get icon => _icon?? '';
  String get categoryForm => _categoryForm?? '';
  String get categoryTable => _categoryTable?? '';
  String get slug => _slug?? '';
  String get subCategory => _subCategory?? '';
  String get subCategoryForm => _subCategoryForm?? '';
  String get subCategoryTable => _subCategoryTable?? '';
  String get selectCategoryName => _selectCategoryName?? '';
  String get cashOnDelivery => _cashOnDelivery?? '';
  String get sslCommerzPayment => _sslCommerzPayment?? '';
  String get paypal => _paypal?? '';
  String get stripe => _stripe?? '';
  String get paytm => _paytm?? '';

  En.fromJson(Map<String, dynamic> json) {
    _home = json['Home'];
    _signIn = json['sign_in'];
    _myCart = json['my_cart'];
    _shippingMethod = json['shipping_method'];
    _banner = json['Banner'];
    _addMainBanner = json['add_main_banner'];
    _addFooterBanner = json['add_footer_banner'];
    _mainBannerForm = json['main_banner _form'];
    _bannerUrl = json['banner_url'];
    _bannerType = json['banner_type'];
    _published = json['published'];
    _mainBannerImage = json['main_banner_image'];
    _footerBannerForm = json['footer_banner_form'];
    _footerBannerImage = json['footer_banner_image'];
    _bannerTable = json['banner_table'];
    _bannerPhoto = json['banner_photo'];
    _categories = json['categories'];
    _allCategories = json['all_categories'];
    _latestProducts = json['latest_products'];
    _moreProducts = json['more_products'];
    _brands = json['brands'];
    _brandUpdate = json['brand_update'];
    _viewAll = json['view_all'];
    _brand = json['brand'];
    _brandForm = json['brand_form'];
    _name = json['name'];
    _brandLogo = json['brand_logo'];
    _brandTable = json['brand_table'];
    _sl = json['sl'];
    _image = json['image'];
    _action = json['action'];
    _save = json['save'];
    _update = json['update'];
    _category = json['category'];
    _icon = json['icon'];
    _categoryForm = json['category_form'];
    _categoryTable = json['category_table'];
    _slug = json['slug'];
    _subCategory = json['sub_category'];
    _subCategoryForm = json['sub_category_form'];
    _subCategoryTable = json['sub_category_table'];
    _selectCategoryName = json['select_category_name'];
    _cashOnDelivery = json['cash_on_delivery'];
    _sslCommerzPayment = json['ssl_commerz_payment'];
    _paypal = json['paypal'];
    _stripe = json['stripe'];
    _paytm = json['paytm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Home'] = _home;
    data['sign_in'] = _signIn;
    data['my_cart'] = _myCart;
    data['shipping_method'] = _shippingMethod;
    data['Banner'] = _banner;
    data['add_main_banner'] = _addMainBanner;
    data['add_footer_banner'] = _addFooterBanner;
    data['main_banner _form'] = _mainBannerForm;
    data['banner_url'] = _bannerUrl;
    data['banner_type'] = _bannerType;
    data['published'] = _published;
    data['main_banner_image'] = _mainBannerImage;
    data['footer_banner_form'] = _footerBannerForm;
    data['footer_banner_image'] = _footerBannerImage;
    data['banner_table'] = _bannerTable;
    data['banner_photo'] = _bannerPhoto;
    data['categories'] = _categories;
    data['all_categories'] = _allCategories;
    data['latest_products'] = _latestProducts;
    data['more_products'] = _moreProducts;
    data['brands'] = _brands;
    data['brand_update'] = _brandUpdate;
    data['view_all'] = _viewAll;
    data['brand'] = _brand;
    data['brand_form'] = _brandForm;
    data['name'] = _name;
    data['brand_logo'] = _brandLogo;
    data['brand_table'] = _brandTable;
    data['sl'] = _sl;
    data['image'] = _image;
    data['action'] = _action;
    data['save'] = _save;
    data['update'] = _update;
    data['category'] = _category;
    data['icon'] = _icon;
    data['category_form'] = _categoryForm;
    data['category_table'] = _categoryTable;
    data['slug'] = _slug;
    data['sub_category'] = _subCategory;
    data['sub_category_form'] = _subCategoryForm;
    data['sub_category_table'] = _subCategoryTable;
    data['select_category_name'] = _selectCategoryName;
    data['cash_on_delivery'] = _cashOnDelivery;
    data['ssl_commerz_payment'] = _sslCommerzPayment;
    data['paypal'] = _paypal;
    data['stripe'] = _stripe;
    data['paytm'] = _paytm;
    return data;
  }
}
