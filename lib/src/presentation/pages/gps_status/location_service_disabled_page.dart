import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locall_app/core/extensions/context_extension.dart';

class LocationServiceDisabledPage extends StatelessWidget {
  const LocationServiceDisabledPage({super.key});

  @override
  Widget build(BuildContext context) {
    final turnOnLocationServiceString =
        AppLocalizations.of(context)!.turn_on_location_service_message;
    final openSettingsString = AppLocalizations.of(context)!.go_to_settings;
    return Scaffold(
      backgroundColor: context.theme.colorScheme.onBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: context.paddingVerticalWidgets,
              right: context.paddingVerticalWidgets,
            ),
            child: Text(
              turnOnLocationServiceString,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.theme.colorScheme.primary,
                fontSize: context.theme.textTheme.headlineSmall!.fontSize,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: Geolocator.openLocationSettings,
            child: Text(
              openSettingsString,
            ),
          ),
        ],
      ),
    );
  }
}
