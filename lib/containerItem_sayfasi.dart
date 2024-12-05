import 'package:flutter/material.dart';


class ContainerItem extends StatelessWidget {
  final String text;
  final Color color;
  final String route;

  const ContainerItem({
    Key? key,
    required this.text,
    required this.color,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: 100,
        height: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(70),
        ),
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, route);
            },
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
