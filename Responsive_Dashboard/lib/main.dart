import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/responsive/desktop_scaffold.dart';
import 'package:responsive_dashboard/responsive/mobile_scaffold.dart';
import 'package:responsive_dashboard/responsive/responsive_layout_dart.dart';
import 'package:responsive_dashboard/responsive/tablet_scaffold.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(

      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),


  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: ResponsiveLayout(
          mobileScaffold: const MobileScaffold(),
          tabletScaffold: const TabletScaffold(),
          desktopScaffold: const DesktopScaffold(),
        ),
      ),
    );
  }
}

