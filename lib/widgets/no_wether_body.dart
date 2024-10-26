import 'package:flutter/material.dart';

class NoWether extends StatelessWidget {
  const NoWether({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Center(
        child: Column(
           mainAxisSize:  MainAxisSize.min,
           children: [
        Text( 
                'there is no weather 😒 start',
                style: TextStyle(
                  fontSize: 28
                ),
                ),
        Text( 
                'searching now 🔎',
                style: TextStyle(
                  fontSize: 30
                ),
                ),
        
           ],
        
        
        ),
      ),
    );
  }
}