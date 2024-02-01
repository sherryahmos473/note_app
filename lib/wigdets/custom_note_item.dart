
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
      decoration: BoxDecoration(
          color: Color(0xffFFCD7A), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text('Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26)),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text('Build your career with Flutter',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 18)),
            ),
            trailing: IconButton(
              icon: Icon(FontAwesomeIcons.trash),
              onPressed: () {},
              color: Colors.black,
              iconSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May21 , 2021',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
