import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

Widget defaultButton({
  double height = 60,
  double width = double.infinity,
  bool isUpperCase = false,
  double radius = 13.0,
  required VoidCallback function,
  required BuildContext context,
  required String text,
  required Color color,
  required Color textColor,
}) =>
    Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          color: color,
        ),
        child: MaterialButton(
          onPressed: function,
          child: Text(
            isUpperCase ? text.toUpperCase() : text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: textColor, fontSize: 16),
          ),
        ));

Widget defaultTextButton({
  required VoidCallback function,
  required String text,
  required BuildContext context,
  required Color textColor,
}) =>
    TextButton(
        onPressed: function,
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontSize: 16, color: textColor),
        ));

void showCustomSnackBar(
    BuildContext context, String message, Color backgroundColor) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Center(
        child: Text(
          message,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      backgroundColor: backgroundColor,
      duration: const Duration(seconds: 2),
    ),
  );
}

void navigateTo(context, widget) => Navigator.push(
    context,
    CupertinoPageRoute(
      builder: (context) => widget,
    ));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
        context, CupertinoPageRoute(builder: (context) => widget), (route) {
      return false;
    });

PreferredSizeWidget? defaultAppBar() => AppBar(
      backgroundColor: antiFlashWhite,
      toolbarHeight: 100,
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required Function onSubmit,
  required Function validate,
  bool isPassword = false,
  required String label,
  IconData? suffix,
  Color? suffixColor,
  String? suffixText,
  Color? suffixTextColor,
  Function? suffixPressed,
  bool isClickable = true,
  required BuildContext context,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontSize: 16, color: cadetGrey),
        ),
      ),
      TextFormField(
        validator: (value) {
          return validate(value);
        },
        controller: controller,
        keyboardType: type,
        enabled: isClickable,
        obscureText: isPassword,
        onFieldSubmitted: (s) {
          onSubmit();
        },
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        cursorColor: Colors.black, // Change the cursor color here
        decoration: InputDecoration(
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: cadetGrey, width: 0.4),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: cadetGrey, width: 0.4),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: cadetGrey, width: 0.4),
          ),
          suffixText: suffixText,
          suffixStyle: TextStyle(
              color: suffixTextColor,
              fontWeight: FontWeight.w600,
              fontSize: 14,
              fontFamily: "InterLight"),
          suffixIconColor: suffixColor,
          suffixIcon: suffix != null
              ? IconButton(
                  icon: Icon(suffix),
                  onPressed: () {
                    suffixPressed?.call();
                  },
                  color: suffixColor,
                )
              : null,
        ),
      ),
    ],
  );
}

Widget defaultbottomNav(
        {required BuildContext context,
        required String text,
        Widget? screenToGoTo}) =>
    GestureDetector(
      onTap: () {
        if (screenToGoTo != null) {
          navigateTo(context, screenToGoTo);
        }
      },
      child: Container(
        color: tropicalIndigo,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.087,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: antiFlashWhite, fontSize: 18),
          ),
        ),
      ),
    );
