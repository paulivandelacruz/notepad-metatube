import 'package:flutter/material.dart';
import 'package:metatube/utils/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark,
      body: Column(
        children: [
          Row(
            children: [
              _mainButton(() => null, 'New File'),
              Row(
                children: [
                  _actionButton(() => null, Icons.file_upload),
                  _actionButton(() => null, Icons.folder),
                ],
              ),
            ],
          )
        ],
        )
    );
  }

  ElevatedButton _mainButton(Function()? onPressed, String text) {
    return ElevatedButton(
      onPressed: onPressed, 
      child: Text(text),
    );
  }

  IconButton _actionButton(Function()? onPressed, IconData icon) {
    return IconButton(
      onPressed: onPressed,
      splashRadius: 20,
      splashColor: AppTheme.accent,
      icon: Icon(
        icon,
        color: AppTheme.medium,
      ),
    );
  }
}