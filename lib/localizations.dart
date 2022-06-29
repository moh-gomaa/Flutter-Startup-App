import 'package:algoriza_task1_app/lang/messages_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppLocalizations {
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalizations();
    });
  }

  //* Onboarding --------------------------------------------------
  String get slide1_title {
    return Intl.message('Get food delivery to your doorstep ASAP',
        name: 'slide1_title');
  }

  String get slide1_desc {
    return Intl.message(
        'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
        name: 'slide1_desc');
  }

  String get slide2_title {
    return Intl.message('Buy Any food from your favorite restaurant',
        name: 'slide2_title');
  }

  String get slide2_desc {
    return Intl.message(
        'We are constatnly adding your favourite restaurant throughout the territory and around your area carefully selected',
        name: 'slide2_desc');
  }

  String get getStart_btn {
    return Intl.message('Get Start', name: 'getStart_btn');
  }

  String get register_msg {
    return Intl.message("Don't have an account?", name: 'register_msg');
  }

  String get signup_btn {
    return Intl.message('Sign Up', name: 'signup_btn');
  }

  String get welcome_msg {
    return Intl.message('Welcome to Fashion Daily', name: 'welcome_msg');
  }

  String get sign_in {
    return Intl.message('Sign in', name: 'sign_in');
  }

  String get register {
    return Intl.message('Register', name: 'register');
  }

  String get google_sign {
    return Intl.message('Sign with by google', name: 'google_sign');
  }

  String get register_msg2 {
    return Intl.message("Doesn't has an account?", name: 'register_msg2');
  }

  String get register_here {
    return Intl.message('Register here', name: 'register_here');
  }

  String get policy_msg {
    return Intl.message('Use the application according to policy rules. Any kind of violation will be subject to sanctions',
        name: 'policy_msg');
  }

  String get sign_in_msg {
    return Intl.message("Has any account?", name: 'sign_in_msg');
  }

  String get sign_in_here {
    return Intl.message('Sign In here', name: 'sign_in_here');
  }

  String get accept_condition_msg {
    return Intl.message('By registering your account,you are agree to our', name: 'accept_condition_msg');
  }

  String get terms_condition {
    return Intl.message('terms and condition', name: 'terms_condition');
  }

  String get help {
    return Intl.message("Help", name: 'help');
  }

  String get mail_hint {
    return Intl.message('Email', name: 'mail_hint');
  }

  String get phone_hint {
    return Intl.message('Phone Number', name: 'phone_hint');
  }

  String get password_hint {
    return Intl.message('Password', name: 'password_hint');
  }

  String get or {
    return Intl.message('Or', name: 'or');
  }


//-------------------------------------------------------------------


  //xxxx---------------------------------------------------------
  String get account_title {
    return Intl.message('Account', name: 'account_title');
  }

  String get more_title {
    return Intl.message('More', name: 'more_title');
  }

  //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

// *NAV BAR* ----------------------------------------------------------
  String get home_title {
    return Intl.message('Home', name: 'home_title');
  }

  String get menu_title {
    return Intl.message('Our Menu', name: 'menu_title');
  }

  String get addresses {
    return Intl.message('Addresses', name: 'addresses');
  }

  String get profile {
    return Intl.message('Personal Details', name: 'profile');
  }

  String get invoices {
    return Intl.message('Invoices', name: 'invoices');
  }

  String get setting {
    return Intl.message('Settings', name: 'setting');
  }

// *LogIn & SignUp* ----------------------------------------------------------
  String get login_title {
    return Intl.message('Sign In', name: 'login_title');
  }

  String get signup_title {
    return Intl.message('Sign Up', name: 'signup_title');
  }

  String get mobile_hint {
    return Intl.message('Mobile Number', name: 'mobile_hint');
  }



  String get repassword_hint {
    return Intl.message('Retype password', name: 'repassword_hint');
  }

  String get full_name_ar {
    return Intl.message('Enter Full Name Arabic', name: 'full_name_ar');
  }

  String get mail {
    return Intl.message('Email Address', name: 'mail');
  }

  String get full_name_en {
    return Intl.message('Enter Full Name English', name: 'full_name_en');
  }

  String get login_btn {
    return Intl.message('Sign In', name: 'login_btn');
  }



  String get completeData {
    return Intl.message("Complete the data and try agains",
        name: 'completeData');
  }

  String get required_field {
    return Intl.message("please fill the field", name: 'required');
  }

  String get errVerfiy {
    return Intl.message('Verfiy Username And Password, Try again',
        name: 'errVerfiy');
  }

  String get errPassword {
    return Intl.message('Your passwords didn’t match.', name: 'errPassword');
  }

  String get errAgree {
    return Intl.message('You have to accept terms and conditions',
        name: 'errAgree');
  }

  String get errDoubleUsername {
    return Intl.message('The phone number already registered',
        name: 'errDoubleUsername');
  }

  String get acceptRules {
    return Intl.message('I Accept terms and condtions', name: 'acceptRules');
  }

  String get forgetPass {
    return Intl.message('Forget Password', name: 'forgetPass');
  }

  // *Dialog* ----------------------------------------------------------

  String get btnHome {
    return Intl.message('Home', name: 'btnHome');
  }

  String get btnContinue {
    return Intl.message('Continue', name: 'btnContinue');
  }

  // *Welcome PAGE* ----------------------------------------------

  String get Welcome {
    return Intl.message('Welcome in', name: 'Welcome');
  }

  String get Welcome_details1 {
    return Intl.message('Please Login Or Sign Up to Continue',
        name: 'Welcome_details1');
  }

  String get Welcome_details2 {
    return Intl.message('Or Skip it Now', name: 'Welcome_details2');
  }



  String get Welcome_details4 {
    return Intl.message('Sign UP', name: 'Welcome_details4');
  }

  // *HOME PAGE* ---------------------------------------------------------

  String get primary_title {
    return Intl.message('Explore Life', name: 'primary_title');
  }

  String get sub_title {
    return Intl.message('at its maximum', name: 'sub_title');
  }

  // *MORE PAGE* ----------------------------------------------

  String get about_us {
    return Intl.message('About', name: 'about_us');
  }

  String get lang_title {
    return Intl.message('Language', name: 'lang_title');
  }

  String get change_lang {
    return Intl.message('Change Language', name: 'change_lang');
  }

  String get change {
    return Intl.message('Change', name: 'change');
  }

  String get terms_conditions {
    return Intl.message('Terms & Conditions', name: 'terms_conditions');
  }

  String get terms_conditionsS {
    return Intl.message('Conditions', name: 'terms_conditionsS');
  }

  String get support {
    return Intl.message('Support', name: 'support');
  }

  String get app_guide {
    return Intl.message('App Guidelines', name: 'app_guide');
  }

  String get contact_us {
    return Intl.message('Contact Us', name: 'contact_us');
  }

  String get log_out {
    return Intl.message('Log Out', name: 'log_out');
  }

  String get log_in {
    return Intl.message('Login', name: 'log_in');
  }

  // * Address Add Edit Page----------------------------------------

  String get addressAdd_Titel {
    return Intl.message('Address Add/Edit', name: 'addressAdd_Titel');
  }

  String get address_Titel {
    return Intl.message('Address Title', name: 'address_Titel');
  }

  String get comboSelect {
    return Intl.message('Select', name: 'comboSelect');
  }

  String get block {
    return Intl.message('Enter Block', name: 'block');
  }

  String get Jadah {
    return Intl.message('Enter Jadah', name: 'Jadah');
  }

  String get street {
    return Intl.message('Enter Street', name: 'street');
  }

  String get building {
    return Intl.message('Enter Building', name: 'building');
  }

  String get completeAddress {
    return Intl.message('Enter Complete Address', name: 'completeAddress');
  }

  String get saveAddress {
    return Intl.message('Save Address', name: 'saveAddress');
  }

  // OnBoarding Screen

  String get getStarted_label {
    return Intl.message('GET STARTED NOW', name: 'getStarted_label');
  }

  String get next_label {
    return Intl.message('Next', name: 'next_label');
  }

  String get skip_label {
    return Intl.message('SKIP', name: 'skip_label');
  }

  // Language & Countries Page
  String get btn_change {
    return Intl.message('Change', name: 'btn_change');
  }

  // Home
  String get guide {
    return Intl.message('Application Guide', name: 'guide');
  }

  String get link {
    return Intl.message('To Watch Video On Youtube', name: 'link');
  }

  // error Messages
  String get errorConnection {
    return Intl.message('Internet connection error', name: 'errorConnection');
  }

  String get error_no_data {
    return Intl.message('There is no data', name: 'error_no_data');
  }

  // Contract Screen
  String get breakfastNo {
    return Intl.message('Without breakfast', name: 'breakfastNo');
  }

  String get btnEdit {
    return Intl.message('Menu', name: 'btnEdit');
  }

  String get carb {
    return Intl.message('Carb', name: 'carb');
  }

  String get client_id {
    return Intl.message('client_id', name: 'client_id');
  }

  String get contract_c {
    return Intl.message('contract_c', name: 'contract_c');
  }

  String get contract_cat_id {
    return Intl.message('Subscription :', name: 'contract_cat_id');
  }

  String get contract_date {
    return Intl.message('Subscription Date :', name: 'contract_date');
  }

  String get contract_delivery {
    return Intl.message('contract_delivery', name: 'contract_delivery');
  }

  String get contract_dicount {
    return Intl.message('contract_dicount', name: 'contract_dicount');
  }

  String get contract_meal_count {
    return Intl.message('Meals Count :', name: 'contract_meal_count');
  }

  String get contract_net_price {
    return Intl.message('Net Price: ', name: 'contract_net_price');
  }

  String get contract_num {
    return Intl.message('Contract Num: ', name: 'contract_num');
  }

  String get contract_packaging {
    return Intl.message('contract_packaging', name: 'contract_packaging');
  }

  String get contract_price {
    return Intl.message('Price', name: 'contract_price');
  }

  String get contract_type_id {
    return Intl.message('Contract Type :', name: 'contract_type_id');
  }

  String get contract_week_id {
    return Intl.message('contract_week_id', name: 'contract_week_id');
  }

  String get date_enter {
    return Intl.message('date_enter', name: 'date_enter');
  }

  String get date_update {
    return Intl.message('date_update', name: 'date_update');
  }

  String get day_in_week {
    return Intl.message('day_in_week', name: 'day_in_week');
  }

  String get edited_date {
    return Intl.message('edited_date', name: 'edited_date');
  }

  String get edited_emp_id {
    return Intl.message('edited_emp_id', name: 'edited_emp_id');
  }

  String get edited_flag {
    return Intl.message('edited_flag', name: 'edited_flag');
  }

  String get emp_id_enter {
    return Intl.message('emp_id_enter', name: 'emp_id_enter');
  }

  String get emp_id_update {
    return Intl.message('emp_id_update', name: 'emp_id_update');
  }

  String get end_date {
    return Intl.message('End date: ', name: 'end_date');
  }

  String get freez {
    return Intl.message('Freez', name: 'freez');
  }

  String get Friday {
    return Intl.message('Friday', name: 'Friday');
  }

  String get holidayDays5 {
    return Intl.message('Friday & Saturday Off', name: 'holidayDays5');
  }

  String get holidayDays6 {
    return Intl.message('Friday Off', name: 'holidayDays6');
  }

  String get holidayDays7 {
    return Intl.message('Without Day Off', name: 'holidayDays7');
  }

  String get meal_carb_size_id {
    return Intl.message('meal_carb_size_id', name: 'meal_carb_size_id');
  }

  String get meal_protein_size_id {
    return Intl.message('meal_protein_size_id', name: 'meal_protein_size_id');
  }

  String get mealNum {
    return Intl.message('Meal Count', name: 'mealNum');
  }

  String get mealsCount2 {
    return Intl.message(
        '2 Meals    -    Salad + Snack ..... (Without BreakFast)',
        name: 'mealsCount2');
  }

  String get mealsCount3 {
    return Intl.message('3 Meals    -    2 Salad + Snack', name: 'mealsCount3');
  }

  String get mealsCount4 {
    return Intl.message('4 Meals    -    2 Salad + Snack', name: 'mealsCount4');
  }

  String get mealsCount5 {
    return Intl.message('5 Meals    -    2 Salad + Snack', name: 'mealsCount5');
  }

  String get mealsCount6 {
    return Intl.message(
        '6 Meals    -    2 Salad + Snack ..... (With BreakFast)',
        name: 'mealsCount6');
  }

  String get Monday {
    return Intl.message('Monday', name: 'Monday');
  }

  String get move_to_menus {
    return Intl.message('move_to_menus', name: 'move_to_menus');
  }

  String get note {
    return Intl.message('note', name: 'note');
  }

  String get pay_done {
    return Intl.message('Pay Done :', name: 'pay_done');
  }

  String get priceText {
    return Intl.message('kd.', name: 'priceText');
  }

  String get protein {
    return Intl.message('Protein', name: 'protein');
  }

  String get real_end_date {
    return Intl.message('End date: ', name: 'real_end_date');
  }

  String get saladNum {
    return Intl.message('Salad', name: 'saladNum');
  }

  String get saladsNum {
    return Intl.message('Salads', name: 'saladsNum');
  }

  String get Saturday {
    return Intl.message('Saturday', name: 'Saturday');
  }

  String get snackNum {
    return Intl.message('Snack', name: 'snackNum');
  }

  String get snacksNum {
    return Intl.message('Snacks', name: 'snacksNum');
  }

  String get start_date {
    return Intl.message('Start date:', name: 'start_date');
  }

  String get summary {
    return Intl.message('Subscription Summary', name: 'summary');
  }

  String get sunday {
    return Intl.message('sunday', name: 'sunday');
  }

  String get Thursday {
    return Intl.message('Thursday', name: 'Thursday');
  }

  String get title_sub {
    return Intl.message('Subscriptions', name: 'title_sub');
  }

  String get Tuesday {
    return Intl.message('Tuesday', name: 'Tuesday');
  }

  String get Wednesday {
    return Intl.message('Wednesday', name: 'Wednesday');
  }

  String get weeks {
    return Intl.message('Subscription Period', name: 'weeks');
  }

  String get weekTextAll {
    return Intl.message('Weeks', name: 'weekTextAll');
  }

  String get weekTextOne {
    return Intl.message('Week', name: 'weekTextOne');
  }

  String get weekTextTwo {
    return Intl.message('2 Weeks', name: 'weekTextTwo');
  }

  String get withBreakfast {
    return Intl.message('With breakfast', name: 'withBreakfast');
  }

  String get subscribe {
    return Intl.message('My subScribes', name: 'subscribe');
  }

  String get rowActive {
    return Intl.message('Active', name: 'rowActive');
  }

  String get rowClose {
    return Intl.message('Close', name: 'rowClose');
  }

  String get rowPaid {
    return Intl.message('Paid', name: 'rowPaid');
  }

  String get rowUnPaid {
    return Intl.message('Un Paid', name: 'rowUnPaid');
  }

  String get newContract {
    return Intl.message('New Contract', name: 'newContract');
  }

  String get offers {
    return Intl.message('Offers', name: 'offers');
  }

  String get whatsApp {
    return Intl.message('WhatsApp', name: 'whatsApp');
  }

  String get saveContract {
    return Intl.message('Create Contract', name: 'saveContract');
  }

  String get contractsActive {
    return Intl.message('Active', name: 'contractsActive');
  }

  String get contractsOld {
    return Intl.message('Expired', name: 'contractsOld');
  }

  String get dinnarKw {
    return Intl.message('SAR', name: 'dinnarKw');
  }

  String get back {
    return Intl.message('Back', name: 'back');
  }

  String get next {
    return Intl.message('Next', name: 'next');
  }

  String get with_breakFast {
    return Intl.message('With BreakFast', name: 'with_breakFast');
  }

  String get black_list {
    return Intl.message('Allergies', name: 'black_list');
  }

  String get errCompleteDate {
    return Intl.message('Please Fill Protein Or Carb', name: 'errCompleteDate');
  }

  // Contract Options Screens ------------------------------------------------

  String get move_days_title {
    return Intl.message('Move Days', name: 'move_days_title');
  }

  String get move_days_btn {
    return Intl.message('Move', name: 'move_days_btn');
  }

  String get start_freez_date {
    return Intl.message('Start Freez From Date', name: 'start_freez_date');
  }

  String get freez_days_count {
    return Intl.message('Freez Days Count', name: 'freez_days_count');
  }

  String get start_move_date {
    return Intl.message('Start Move Day To Date', name: 'start_move_date');
  }

  String get submit {
    return Intl.message('Submit', name: 'submit');
  }

  String get sucess_operation {
    return Intl.message('Operation Has Been Applyed Succefully',
        name: 'sucess_operation');
  }

  String get err_operation {
    return Intl.message('Error During Operation, Please Try Again',
        name: 'err_operation');
  }

  String get freez_list_title {
    return Intl.message('Freez List', name: 'freez_list_title');
  }

  String get add_freez {
    return Intl.message('Add Freez', name: 'add_freez');
  }

  String get unFreez_title {
    return Intl.message('UnFreez', name: 'unFreez_title');
  }

  String get end_freez_date {
    return Intl.message('End Freez Date', name: 'end_freez_date');
  }

  String get p {
    return Intl.message('P:', name: 'p');
  }

  String get c {
    return Intl.message('C:', name: 'c');
  }

  String get f {
    return Intl.message('F:', name: 'f');
  }

  String get kCal {
    return Intl.message('kCal', name: 'kCal');
  }

  String get fat {
    return Intl.message('fat', name: 'fat');
  }

  String get from {
    return Intl.message('From :', name: 'from');
  }

  String get to {
    return Intl.message('To :', name: 'to');
  }

  String get no {
    return Intl.message('NO :', name: 'no');
  }

  String get notHaveMeal {
    return Intl.message('Not Have Meal for this day', name: 'notHaveMeal');
  }

  String get changeAddresTtitle {
    return Intl.message('Select the delivery address',
        name: 'changeAddresTtitle');
  }

  String get deliveryAddress {
    return Intl.message('Change Address', name: 'deliveryAddress');
  }

  String get share {
    return Intl.message('Share', name: 'share');
  }

  String get twoMonth {
    return Intl.message('Two Month', name: 'twoMonth');
  }

  String get daySelect {
    return Intl.message('Days Select', name: 'daySelect');
  }

  String get planDetails {
    return Intl.message('Plan Details', name: 'planDetails');
  }

  // Menu Screen ------------------------------------------------

  String get change_meal_succefully {
    return Intl.message('The Meal Has Been Changed Succefully',
        name: 'change_meal_succefully');
  }

  String get change_meal_alert {
    return Intl.message('The Meal Can Not Be Updated Before 3 Days',
        name: 'change_meal_alert');
  }

  String get renewContract {
    return Intl.message('Renew Contract', name: 'renewContract');
  }

  String get errorMoveDayCount {
    return Intl.message('The number of days must be greater than zero',
        name: 'errorMoveDayCount');
  }

  String get mealDetails {
    return Intl.message('Meal Details', name: 'mealDetails');
  }

  String get contractDates {
    return Intl.message('Contract Dates', name: 'contractDates');
  }

  String get mealsPrice {
    return Intl.message('Meals &  Price', name: 'mealsPrice');
  }

  String get mySubscribe {
    return Intl.message('My SubScribe', name: 'mySubscribe');
  }

  String get meal {
    return Intl.message('Meal', name: 'meal');
  }

  String get meals {
    return Intl.message('Meals', name: 'meals');
  }

  String get signIn {
    return Intl.message('Sign in', name: 'signIn');
  }

  String get here {
    return Intl.message('here', name: 'here');
  }

  String get visitor {
    return Intl.message('Visitor', name: 'visitor');
  }

  String get moveDaysMessage {
    return Intl.message('The number of days will be moved',
        name: 'moveDaysMessage');
  }

  String get freezDaysMessage {
    return Intl.message('Days will be frozen from a date',
        name: 'freezDaysMessage');
  }

  String get unfreezDaysMessage {
    return Intl.message('The number of days will be unfrozen',
        name: 'freezDaysMessage');
  }

  String get startFrom {
    return Intl.message('Start from ', name: 'startFrom');
  }

  String get btnCancel {
    return Intl.message('Cancel ', name: 'btnCancel');
  }

  String get warning {
    return Intl.message('Warning ', name: 'warning');
  }

  String get moveDays {
    return Intl.message('Transfer days start from the date', name: 'moveDays');
  }

  String get moveDaysCount {
    return Intl.message('The number of move days', name: 'moveDaysCount');
  }

  String get move3Days {
    return Intl.message('The Day Can Not Be Move Before 2 Days',
        name: 'move3Days');
  }

  String get notDayFromContract {
    return Intl.message('Not from the contract days',
        name: 'notDayFromContract');
  }

  String get dayCount0 {
    return Intl.message('You must specify the days to be transferred',
        name: 'dayCount0');
  }

  String get afterDate {
    return Intl.message('To the end of the Contract', name: 'afterDate');
  }

  String get delivery_title {
    return Intl.message('Delivery', name: 'delivery_title');
  }

  String get deliveryDone {
    return Intl.message('Delivered on', name: 'deliveryDone');
  }

  String get deliveryfall {
    return Intl.message('No delivery', name: 'deliveryfall');
  }

  String get currentLocation {
    return Intl.message('current location', name: 'currentLocation');
  }

  String get selectLocation {
    return Intl.message('Select location', name: 'selectLocation');
  }

  String get del {
    return Intl.message('Delete', name: 'del');
  }

  String get googleAddress {
    return Intl.message('Select Address from map', name: 'googleAddress');
  }

  String get selectPaymentMethod {
    return Intl.message('Choose a payment method', name: 'selectPaymentMethod');
  }

  String get errorPaymentTitle {
    return Intl.message('Failed Operation', name: 'errorPaymentTitle');
  }

  String get errorPayment {
    return Intl.message(
        'An error occurred during the payment, to complete the process, press Back and try again, or Home to return to the main screen',
        name: 'errorPayment');
  }

  String get paymentDetails {
    return Intl.message('Payment Details', name: 'paymentDetails');
  }

  String get paymentGateway {
    return Intl.message('Payment Type', name: 'paymentGateway');
  }

  String get invoiceId {
    return Intl.message('Invoice ID', name: 'invoiceId');
  }

  String get referenceId {
    return Intl.message('Reference ID', name: 'referenceId');
  }

  String get authorizationId {
    return Intl.message('Authorization ID', name: 'authorizationId');
  }

  String get paymentId {
    return Intl.message('Payment ID', name: 'paymentId');
  }

  String get transactionStatus {
    return Intl.message('Transaction Status', name: 'transactionStatus');
  }

  String get invoiceDisplayValue {
    return Intl.message('Amount', name: 'invoiceDisplayValue');
  }

  String get selectDay {
    return Intl.message('Select Day', name: 'selectDay');
  }

  String get mealInfo {
    return Intl.message('Nutritional information', name: 'mealInfo');
  }

  String get day {
    return Intl.message('Day', name: 'day');
  }

  String get days {
    return Intl.message('Days', name: 'days');
  }

  String get daysCount {
    return Intl.message('Days Count', name: 'daysCount');
  }

  String get selectStartContract {
    return Intl.message('Select the contract start date',
        name: 'selectStartContract');
  }

  String get errCanAddContract {
    return Intl.message(
        'It is allowed to create or renew a contract within a week before the end of the last contract, or after the end of the last contract',
        name: 'errCanAddContract');
  }

  String get choosePlan {
    return Intl.message('Choose your plan', name: 'choosePlan');
  }

  String get dayperWeek {
    return Intl.message('Days per week', name: 'dayperWeek');
  }

  String get none {
    return Intl.message('No', name: 'none');
  }

  String get numberSalads {
    return Intl.message('Number of salads:', name: 'numberSalads');
  }

  String get numberSanack {
    return Intl.message('Number of snacks:', name: 'numberSanack');
  }

  String get chooseBlack {
    return Intl.message('Please choose from the items below:',
        name: 'chooseBlack');
  }

  String get clearAll {
    return Intl.message('Clear all', name: 'clearAll');
  }

  String get add {
    return Intl.message('Add', name: 'add');
  }

  String get proceed {
    return Intl.message('Proceed', name: 'proceed');
  }

  String get addAddress {
    return Intl.message('Add Address(es)', name: 'addAddress');
  }

  String get contractSummary {
    return Intl.message('Summary', name: 'contractSummary');
  }

  String get LangMain1 {
    return Intl.message('الرجاء اختيار اللغة', name: 'LangMain1');
  }

  String get LangMain2 {
    return Intl.message('Please select language', name: 'LangMain2');
  }

  String get LangMain3 {
    return Intl.message('عربي', name: 'LangMain3');
  }

  String get LangMain4 {
    return Intl.message('English', name: 'LangMain4');
  }

// *welcome ----------------------------------------------------------------
  String get Welcome1 {
    return Intl.message('Welcome', name: 'Welcome1');
  }

  String get Welcome2 {
    return Intl.message('Our Menu', name: 'Welcome2');
  }

  String get Welcome3 {
    return Intl.message('Join Now / Sign in', name: 'Welcome3');
  }

//--------------------------------------------------------------
  String get duration {
    return Intl.message('Duration', name: 'duration');
  }

  String get paymentMothed {
    return Intl.message('Payment mothed', name: 'paymentMothed');
  }

  String get planPrice {
    return Intl.message('Plan price', name: 'planPrice');
  }

  String get pay {
    return Intl.message('Pay', name: 'pay');
  }

  String get agreeKnet {
    return Intl.message('By proceeding, you agree', name: 'agreeKnet');
  }

  String get agreeKnet2 {
    return Intl.message('to KNET payment ', name: 'agreeKnet2');
  }

  String get editMenu {
    return Intl.message('Edit Menu', name: 'editMenu');
  }

  String get ChangeAddress {
    return Intl.message('Change Address', name: 'ChangeAddress');
  }

  String get feed {
    return Intl.message('Boost Feed', name: 'feed');
  }

  String get pausePlan {
    return Intl.message('Pause Plan', name: 'pausePlan');
  }

  String get remainingDays {
    return Intl.message('Remaining', name: 'remainingDays');
  }

  String get editPlan {
    return Intl.message('Edit Plan', name: 'editPlan');
  }

  String get renewPlan {
    return Intl.message('Renew Plan', name: 'renewPlan');
  }

  String get boostFeed {
    return Intl.message('Boost Feed', name: 'boostFeed');
  }

// * getStart-------------------------------------------------------------------
  String get getStart1 {
    return Intl.message('Simply', name: 'getStart1');
  }

  String get getStart2 {
    return Intl.message('Boost', name: 'getStart2');
  }

  String get getStart3 {
    return Intl.message('Your Way', name: 'getStart3');
  }



// * mainCourse-------------------------------------------------------------------
  String get mainCourse {
    return Intl.message('Lunch & Dinner', name: 'mainCourse');
  }

  String get mainCourse2 {
    return Intl.message('Lunch & Dinner', name: 'mainCourse2');
  }



  String get subscribeCanMove {
    return Intl.message('Can be moved', name: 'subscribeCanMove');
  }

  String get subscribeCanotMove {
    return Intl.message("Can’t be moved.", name: 'subscribeCanotMove');
  }

  String get daysToBeMoved {
    return Intl.message('Selected to be moved.', name: 'daysToBeMoved');
  }

  String get movedDays {
    return Intl.message('Moved days.', name: 'movedDays');
  }

  String get changeDeliveryAddress {
    return Intl.message('Delivery Address', name: 'changeDeliveryAddress');
  }

  String get selectDate {
    return Intl.message('Select Date', name: 'selectDate');
  }

  String get selectAddress {
    return Intl.message('Search address', name: 'selectAddress');
  }

// *setting----------------------------------------------------
  String get setting1 {
    return Intl.message('Settings', name: 'setting1');
  }

  String get setting2 {
    return Intl.message('Notifications', name: 'setting2');
  }

  String get setting3 {
    return Intl.message('Langauge', name: 'setting3');
  }

  String get setting4 {
    return Intl.message('Logout', name: 'setting4');
  }

  String get setting_Ar {
    return Intl.message('عربي', name: 'setting_Ar');
  }

  String get setting_En {
    return Intl.message('English', name: 'setting_En');
  }

  String get select {
    return Intl.message('Select', name: 'select');
  }

  //---------about Main-----------------------------------------------
  String get aboutMain1 {
    return Intl.message('About', name: 'aboutMain1');
  }

  String get aboutMain2 {
    return Intl.message('FAQ', name: 'aboutMain2');
  }

  String get aboutMain3 {
    return Intl.message('Terms & Conditions', name: 'aboutMain3');
  }

  String get aboutMain4 {
    return Intl.message('About Healthy Road', name: 'aboutMain4');
  }

  String get save {
    return Intl.message('Save', name: 'save');
  }

  //*---------------------------------------------
  String get fillInfo {
    return Intl.message('Personal information', name: 'fillInfo');
  }

  String get firstName {
    return Intl.message('First Name', name: 'firstName');
  }

  String get lastName {
    return Intl.message('Last Name', name: 'lastName');
  }

  String get acceptConditons {
    return Intl.message('By registering, you agree', name: 'acceptConditons');
  }

  String get toOur {
    return Intl.message('to our', name: 'toOur');
  }

  String get welcomeBack {
    return Intl.message('Welcome back!', name: 'welcomeBack');
  }

  String get phoneLengthMassage {
    return Intl.message('The phone number must containt 8 charcters',
        name: 'phoneLengthMassage');
  }

  String get newUser {
    return Intl.message('New user (?) ', name: 'newUser');
  }

  String get createAccount {
    return Intl.message('Add Account', name: 'createAccount');
  }

  String get apply {
    return Intl.message('Apply', name: 'apply');
  }

  String get deApply {
    return Intl.message('Cancel', name: 'deApply');
  }

  String get promotionCode {
    return Intl.message('Please enter the code.', name: 'promotionCode');
  }

  String get promotionError {
    return Intl.message('Wrong writing the promotion code',
        name: 'promotionError');
  }

  String get lang {
    return Intl.message('English', name: 'lang');
  }

  String get editAddress {
    return Intl.message('Edit Address', name: 'editAddress');
  }

  String get ForgetPass_title {
    return Intl.message('Forget Password', name: 'ForgetPass_title');
  }

  String get ForgetPass_hint {
    return Intl.message('Mobile Number', name: 'ForgetPass_hint');
  }

  String get sendOTP {
    return Intl.message('Send OTP', name: 'sendOTP');
  }

  String get wrongPhone {
    return Intl.message('Wrong phone number', name: 'wrongPhone');
  }



  String get alreadyRegistered {
    return Intl.message('Already registered', name: 'alreadyRegistered');
  }

  String get loginHere {
    return Intl.message('Login Here', name: 'loginHere');
  }

  String get verify {
    return Intl.message('Verify', name: 'verify');
  }

  String get errRegisteredPhone {
    return Intl.message('The phone number is not registerd',
        name: 'errRegisteredPhone');
  }

  String get OTPVerification {
    return Intl.message('OTP verification', name: 'OTPVerification');
  }

  String get OTPMessage {
    return Intl.message('Please enter the OTP sent to', name: 'OTPMessage');
  }

  String get resendOTP {
    return Intl.message('Resend code in', name: 'resendOTP');
  }

  String get resetPass {
    return Intl.message('Reset password', name: 'resetPass');
  }

  String get reset {
    return Intl.message('Reset', name: 'reset');
  }

  String get errWrongOTP {
    return Intl.message('The entered OTP is wrong', name: 'errWrongOTP');
  }

  String get msgChangePassSuccess {
    return Intl.message('The password has been changed successfully',
        name: 'msgChangePassSuccess');
  }

  String get resendOTPBtn {
    return Intl.message('Resend OTP', name: 'resendOTPBtn');
  }

  String get verifyMobile {
    return Intl.message('Verify Mobile Number', name: 'verifyMobile');
  }

  String get refineLocation {
    return Intl.message('Refine location', name: 'refineLocation');
  }

  String get promotionLabel {
    return Intl.message('Do you have a discount/promo code?',
        name: 'promotionLabel');
  }

  String get changeDeliverySuccess {
    return Intl.message('Delivery address has been changed successfully',
        name: 'changeDeliverySuccess');
  }

  String get profile1 {
    return Intl.message('Personal Details', name: 'profile1');
  }

  String get profile2 {
    return Intl.message('Body Measurements', name: 'profile2');
  }

  String get profile3 {
    return Intl.message('Change Mobile Number', name: 'profile3');
  }

  String get resumeContract {
    return Intl.message('Resume Contract', name: 'resumeContract');
  }

  String get notifications {
    return Intl.message('Notifications', name: 'notifications');
  }

  String get chooseDate {
    return Intl.message('Please choose a date', name: 'chooseDate');
  }

  String get send {
    return Intl.message('Send', name: 'send');
  }

  String get updateMessage {
    return Intl.message('Time to update the app to get the latest updates',
        name: 'updateMessage');
  }

  String get update {
    return Intl.message('Update Now', name: 'update');
  }

  String get later {
    return Intl.message('Reminded me later', name: 'later');
  }

  String get day7Message {
    return Intl.message('7 day message', name: 'day7Message');
  }

  String get defaultString {
    return Intl.message('(Default)', name: 'defaultString');
  }

  String get optional {
    return Intl.message('(Optional)', name: 'optional');
  }

  String get maxPassword {
    return Intl.message('Your password must be at least 6 characters.',
        name: 'maxPassword');
  }

  String get governorate {
    return Intl.message('Governorate', name: 'governorate');
  }

  String get area {
    return Intl.message('Area', name: 'area');
  }

  String get flat {
    return Intl.message('Flat', name: 'flat');
  }

  String get floor {
    return Intl.message('Floor', name: 'floor');
  }

  String get changePassword {
    return Intl.message('Reset password', name: 'changePassword');
  }

  String get dayTotal {
    return Intl.message('Day Totals', name: 'dayTotal');
  }

  String get delNote {
    return Intl.message('Meals delivered a day in advance', name: 'delNote');
  }

  String get moveDesc {
    return Intl.message('Please select day(s) you would like to move',
        name: 'moveDesc');
  }

  String get canNotMove {
    return Intl.message('Can not be moved.', name: 'canNotMove');
  }

  String get defaultAddress {
    return Intl.message('Default address', name: 'defaultAddress');
  }

  String get paymentOk {
    return Intl.message('Successful Process', name: 'paymentOk');
  }

  String get calories {
    return Intl.message('Calories', name: 'calories');
  }

  String get description {
    return Intl.message('Description', name: 'description');
  }

  String get viewCart {
    return Intl.message('View cart', name: 'viewCart');
  }

  String get yourOrder {
    return Intl.message('Your order', name: 'yourOrder');
  }

  String get previous {
    return Intl.message('Previous', name: 'previous');
  }

  String get healthy_road_label {
    return Intl.message('Healthy Road Restaurant', name: 'healthy_road_label');
  }

  String get total {
    return Intl.message('Total', name: 'total');
  }

  String get emptyCart {
    return Intl.message('Empty cart', name: 'emptyCart');
  }

  String get branch {
    return Intl.message('Healthy Road Branches', name: 'branch');
  }

  String get selectBranch {
    return Intl.message('Select branch', name: 'selectBranch');
  }

  String get receive {
    return Intl.message('Receiving', name: 'receive');
  }

  String get healthyRoad {
    return Intl.message('Healthy Road', name: 'healthyRoad');
  }

  String get thisBranch {
    return Intl.message('Select branch', name: 'thisBranch');
  }

  String get cartUpdate {
    return Intl.message('Cart data has been updated', name: 'cartUpdate');
  }

  String get order_now {
    return Intl.message('Menu', name: 'order_now');
  }

  String get subscriptions {
    return Intl.message('Subscriptions', name: 'subscriptions');
  }

  String get branches {
    return Intl.message('Branches', name: 'branches');
  }

  String get error_login {
    return Intl.message('please login first to complete this action',
        name: 'error_login');
  }

  String get contract_summary_note1 {
    return Intl.message('Meals are received once.',
        name: 'contract_summary_note1');
  }

  String get contract_summary_note2 {
    return Intl.message(
        'A one-time suspension is allowed for a period not exceeding 15 days.',
        name: 'contract_summary_note2');
  }

  String get contract_summary_note3 {
    return Intl.message(
        'The subscription is canceled after 45 days from the date of subscription start.',
        name: 'contract_summary_note3');
  }

  String get contract_summary_note4 {
    return Intl.message('Subscription price is not refundable.',
        name: 'contract_summary_note4');
  }

  String get subscription_invoice {
    return Intl.message('Subscription Invoices', name: 'subscription_invoice');
  }

  String get order_invoice {
    return Intl.message('Order Invoices', name: 'order_invoice');
  }

  String get paidInBranch {
    return Intl.message('Paiement when recieving', name: 'paidInBranch');
  }

  String get orderStatus0 {
    return Intl.message('Order is done', name: 'orderStatus0');
  }

  String get orderStatus1 {
    return Intl.message('Being processed', name: 'orderStatus1');
  }

  String get orderStatus2 {
    return Intl.message('Ready for pick up', name: 'orderStatus2');
  }

  String get orderStatus3 {
    return Intl.message('Received', name: 'orderStatus3');
  }

  String get maxDueDate {
    return Intl.message('The contract period cannot exceed 45 days',
        name: 'maxDueDate');
  }

  String get order_num {
    return Intl.message('Order Number', name: 'order_num');
  }

  String get track_order {
    return Intl.message('Track Order', name: 'track_order');
  }

  String get error_msg {
    return Intl.message('Error when sending massage', name: 'error_msg');
  }

  String get meal_tracking {
    return Intl.message('Receiving meals', name: 'meal_tracking');
  }

  String get notRevice {
    return Intl.message('Not recived', name: 'notRevice');
  }

  String get version {
    return Intl.message('Version', name: 'version');
  }

  String get addressFromMap {
    return Intl.message('The address must be selected on the map',
        name: 'addressFromMap');
  }

  String get newPassword {
    return Intl.message('New password', name: 'newPassword');
  }

  String get fromBranch {
    return Intl.message('Receive from branch', name: 'fromBranch');
  }

  String get deliveryToAddress {
    return Intl.message('Delivery to the address', name: 'deliveryToAddress');
  }

  String get deliveryCost {
    return Intl.message('Delivery cost', name: 'deliveryCost');
  }

  String get am {
    return Intl.message('AM', name: 'am');
  }

  String get pm {
    return Intl.message('PM', name: 'pm');
  }

  String get hours24 {
    return Intl.message('7 days a week 24 hours', name: 'hours24');
  }

  String get canNotOrder {
    return Intl.message(
        'It is not possible to order outside of official working hours',
        name: 'canNotOrder');
  }

  String get canNotDelivery {
    return Intl.message('It is not possible to deliver to this address',
        name: 'canNotDelivery');
  }
}

class SpecificLocalizationDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  final Locale overriddenLocale;

  SpecificLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => overriddenLocale != null;

  @override
  Future<AppLocalizations> load(Locale locale) =>
      AppLocalizations.load(overriddenLocale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => true;
}

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => ['ar', 'en'].contains(locale.languageCode);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<_DefaultCupertinoLocalizations>(
          _DefaultCupertinoLocalizations(locale));

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}

class _DefaultCupertinoLocalizations extends DefaultCupertinoLocalizations {
  final Locale locale;

  _DefaultCupertinoLocalizations(this.locale);
}
