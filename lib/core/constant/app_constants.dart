/// Application constants
class AppConstants {
  // API Configuration

  static const String superBabaBaseUrl = 'https://superbaba.app';
  static const String onboardingEndpoint = '/api/onboarding';
  static const String loginEndpoint = '/api/auth/login';
  static const String registerEndpoint = '/api/auth/register';
  static const String socialLoginEndpoint = '/api/auth/social-login';
  static const String deleteAccountEndpoint = '/api/auth/delete-account';
  // Auth / password

  static const String sendPasswordResetOtpEndpoint =
      '/api/auth/send-password-reset-otp';
  static const String sendEmailVerificationOtpEndpoint =
      '/api/auth/send-email-verification-otp';
  static const String resetPasswordEndpoint = '/api/auth/reset-password';
  static const String verifyPasswordResetOtpEndpoint =
      '/api/auth/verify-password-reset-otp';
  static const String verifyEmailVerificationOtpEndpoint =
      '/api/auth/verify-email-verification-otp';
  static const String sendFcmToken = '/api/auth/profile/register-fcm-token';
  static const String bannersEndpoint = '/api/auth/home/banners';

  // Home endpoints (SuperBaba)
  static const String homeMainCategoriesEndpoint = '/api/home/main-categories';
  static const String mainCategories = '/api/main-categories';

  // Banners (guest vs authenticated)
  static const String homeBannersEndpoint = '/api/home/vip-banners';
  static const String authHomeBannersEndpoint = '/api/auth/home/vip-banners';

  // Company suppliers (guest vs authenticated)
  static const String homeCompanySuppliersEndpoint =
      '/api/home/company-suppliers';
  static const String authHomeCompanySuppliersEndpoint =
      '/api/auth/home/company-suppliers';

  // Offers (guest vs authenticated)
  static const String homeOffersEndpoint = '/api/home/offers';
  static const String authHomeOffersEndpoint = '/api/auth/home/offers';
  static const String homeUserData = '/api/auth/home/user';
  static const String countries = '/api/countries';
  static const String cities = '/api/cities-by-country';
  static const String myAddresses = '/api/auth/profile/addresses/list';
  static const String addAddress = '/api/auth/profile/addresses/create';
  static const String updateAddress = '/api/auth/profile/addresses/update';
  static const String updateLocation = '/api/auth/profile/update-location';

  // profile
  static const String getUserData = '/api/auth/profile/me';
  static const String updateUserData = '/api/auth/profile/update-profile';
  static const String changeLocale = '/api/auth/profile/change-locale';
  static const String terms = '/api/settings/terms-and-conditions';
  static const String privacyPolicy = '/api/settings/privacy-policy';
  static const String contactUs = '/api/settings/contact-us';
  static const String faqs = '/api/settings/faqs';

  // Notifications
  static const String notificationsListEndpoint =
      '/api/auth/notifications/list';
  static const String notificationsUnreadCountEndpoint =
      '/api/auth/notifications/unread-count';
  static const String notificationsMarkAsReadEndpoint =
      '/api/auth/notifications/mark-as-read';
  static const String notificationsMarkAllAsReadEndpoint =
      '/api/auth/notifications/mark-all-as-read';

  // Suppliers
  static const String suppliersEndpoint = '/api/suppliers';
  static const String supplierProfileEndpoint = '/api/supplier/profile';

  // Products
  static const String productDetailEndpoint = '/api/products/detail';
  static const String addToCartEndpoint = '/api/auth/order/cart/add';
  static const String updateCartEndpoint = '/api/auth/order/cart/update';
  static const String supplierProductsEndpoint = '/api/products/by-supplier';

  // Search
  static const String searchEndpoint = '/api/search';

  // Cart
  static const String getCartItemsEndpoint = '/api/auth/order/cart';
  static const String getCartSummaryEndpoint = '/api/auth/order/cart/summary';
  static const String removeCartItemEndpoint = '/api/auth/order/cart/remove';
  static const String clearCartEndpoint = '/api/auth/order/cart/clear';
  static const String applyDiscountEndpoint = '/api/auth/discount-codes/apply';
  static const String createOrderEndpoint = '/api/auth/order/create';
  // Orders
  static const String myOrdersEndpoint = '/api/auth/my-orders';
  static const String orderStatusEndpoint = '/api/auth/order/status';
  static const String orderDetailEndpoint = '/api/auth/order/details';
  static const String getAvailableDiscountCodesEndpoint =
      '/api/auth/discount-codes/available';
  static const String getMyPurchasedDiscountCodesEndpoint =
      '/api/auth/discount-codes/my-codes';
  static const String purchaseDiscountCodeEndpoint =
      '/api/auth/discount-codes/purchase';
  static const String getLoyaltyPointsEndpoint =
      '/api/auth/profile/loyalty-points';

  /// Customer rates supplier or delivery person (`supplier_delivery_id` = user id).
  static const String ratingsSubmitEndpoint = '/api/auth/ratings/submit';
  static const String ratingsMyRatingEndpoint = '/api/auth/ratings/my-rating';

  // Languages
  static const String arabicLangCode = 'ar';
  static const String englishLangCode = 'en';

  /// Last successful social login provider (`google` / `apple`). Cleared on email login.
  static const String lastAuthProviderCacheKey = 'last_auth_provider';

  // Error Messages
  static const String networkErrorMessage = 'خطأ في الشبكة';
  static const String serverErrorMessage = 'خطأ في الخادم';
  static const String cacheErrorMessage = 'خطأ في التخزين المؤقت';
  static const String unknownErrorMessage = 'خطأ غير معروف';

  // Success Messages
  static const String productAddedToCart = 'تمت إضافة المنتج إلى السلة بنجاح';
  static const String orderPlacedSuccessfully = 'تم تأكيد الطلب بنجاح';
  static const String dataLoadedSuccessfully = 'تم تحميل البيانات بنجاح';

  /*
هخلي  ف الهوم لما ادوس علي زرار اللوكيشن يرجعلي ليست ب عناويني اللي هي Get user addresses
وزرار اضف عنوان جديد لو الليست فاضيه يفتحلي الخريطه وبعدها انقل العنوان ف صفحه ال aderss
واملي باقي البيانات ادوس سيند ل Create user address

*/
}
