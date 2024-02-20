import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gdg_theme_homework/responsive/desktop_scaffold.dart';
import 'package:gdg_theme_homework/responsive/mobile_scaffold.dart';
import 'package:gdg_theme_homework/responsive/responsive_layout.dart';
import 'package:gdg_theme_homework/responsive/tablet_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold());
  }
}
