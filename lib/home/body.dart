import 'package:chat_app/widgets/category_selector.dart';
import 'package:chat_app/widgets/favourite_contacts.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategorySelector(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: const Column(
              children: [FavouriteContacts()],
            ),
          ),
        ),
      ],
    );
  }
}
