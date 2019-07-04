import 'package:eva_design_flutter/components/icon_button/icon_button.dart';
import 'package:eva_design_flutter/eva_design_flutter.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Themes.darkTheme.basic.shade1100,
      child: EqLayout(
        theme: Themes.darkTheme,
        appBar: EqAppBar(
          centerTitle: true,
          title: 'Test',
          subtitle: 'v0.0.0',
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: EqCard(
              shape: WidgetShape.rectangle,
              header: Text('Login'),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  EqTextField(
                    shape: WidgetShape.rectangle,
                    hint: 'Username',
                    icon: EvaIcons.emailOutline,
                    iconPosition: IconPositioning.right,
                  ),
                  SizedBox(height: 16.0),
                  EqTextField(
                    shape: WidgetShape.rectangle,
                    hint: 'Password',
                    icon: EvaIcons.lockOutline,
                    iconPosition: IconPositioning.right,
                  ),
                ],
              ),
              footerPadding: EdgeInsets.zero,
              footer: EqButton(
                appearance: WidgetAppearance.ghost,
                onTap: () {},
                label: 'Log in',
                size: WidgetSize.large,
                status: WidgetStatus.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
