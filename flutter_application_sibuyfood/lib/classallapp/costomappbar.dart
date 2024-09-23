import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/colors.dart';
import 'package:sibuyapp/classallapp/styleText.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final Color? backgroundColor;

  /// Creates a [CustomAppBar] with the given [title] and optional [backgroundColor].
  CustomAppBar({required this.title, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppFonts.tiappbar,
      ),
      backgroundColor: backgroundColor ?? Appcolor.white,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class CustomAppBarNoBack extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  final Color? backgroundColor;

  CustomAppBarNoBack({required this.title, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppFonts.tiappbar,
      ),
      backgroundColor: backgroundColor ?? Appcolor.white,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
