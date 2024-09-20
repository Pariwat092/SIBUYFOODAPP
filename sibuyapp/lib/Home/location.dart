import 'package:flutter/material.dart';
import 'package:sibuyapp/classallapp/styleText.dart';

class LocationWidget extends StatefulWidget {
  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.location_on,
              color: Color.fromARGB(255, 29, 110, 185),
              size: 20.0,
            ),
            const SizedBox(width: 5.0),
            Text('คอลงหก, ปุทม', style: AppFonts.ticontent2),
            const SizedBox(width: 5.0),
            IconButton(
              icon: Icon(
                isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color: Colors.black,
                size: 20.0,
              ),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded; // สลับสถานะระหว่างเปิดและปิด
                });
              },
            ),
          ],
        ),
        if (isExpanded)
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              '125/1 รป คลองหลวง คลองหก ซอยพร .',
              style: AppFonts
                  .ticontentsmell, // Ensure this font is defined in your custom font class
            ),
          ),
      ],
    );
  }
}
