part of 'themes.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kBackgroundColor1,
    appBarTheme: AppBarTheme(
      iconTheme: iconThemeData(),
      backgroundColor: kBackgroundColor1,
      titleTextStyle: primaryTextStyle.copyWith(
        fontSize: 14,
        fontWeight: semiBold,
      ),
      elevation: 0,
    ),
  );
}

IconThemeData iconThemeData() {
  return IconThemeData(
    color: kPrimaryTextColor,
  );
}
