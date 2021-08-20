import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ripetizioni/SessionManager.dart';

class PageHeader extends StatelessWidget {
  final String _title;
  final String _subTitle;
  final bool _isProfile;

  PageHeader(this._title, this._subTitle, this._isProfile);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(_title,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: Colors.black)),
            ),
            _isProfile
                ? GestureDetector(
                    onTap: () => Get.dialog(
                      AlertDialog(
                        title: Text('Logout'),
                        content: Text('Are you sure you want to logout?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(Get.context!),
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Get.find<SessionManager>().logOut(),
                            child: Text('Logout'),
                          ),
                        ],
                      ),
                      barrierDismissible: false,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text('Logout',
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        Icon(Icons.logout),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
        Text(_subTitle, style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}
