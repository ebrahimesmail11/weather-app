import'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('there is no weather 😔 start',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 30),),
            Text('searching now 🔍',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 30),),
          ]
        ),
      ),
    );
  }
}
