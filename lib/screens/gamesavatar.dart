import 'package:flutter/material.dart';

class GamesAvatar extends StatelessWidget {
  const GamesAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 70.0,
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://www.pubgmobile.com/common/images/icon_logo.jpg'),
      ),
    );
  }
}