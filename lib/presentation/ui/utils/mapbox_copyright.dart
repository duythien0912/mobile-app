import 'package:flutter/material.dart';
import 'package:vost/presentation/utils/misc.dart';

/*
 * Created by Gonçalo Lima (https://github.com/lima21) for Fogos.pt
 */
class MapboxCopyright extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      right: 0.0,
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                _createCopyrightOption(
                    '© Mapbox', 'https://www.mapbox.com/about/maps/'),
                _createCopyrightOption('© OpenStreetMap',
                    'http://www.openstreetmap.org/copyright'),
                _createCopyrightOption(
                    "Improve this map",
                    'https://www.mapbox.com/map-feedback/'),
                SizedBox(
                  width: 12.0,
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ),
      ),
    );
  }

  InkWell _createCopyrightOption(String title, String url) {
    return InkWell(
      onTap: () => launchURL(url),
      child: Text(title,
          style:
              TextStyle(decoration: TextDecoration.underline, fontSize: 12.0)),
    );
  }
}