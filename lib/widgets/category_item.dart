import 'package:flutter/material.dart';
import '../screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  // ignore: non_constant_identifier_names
  final String ImageUrl;
  CategoryItem(this.id, this.title, this.color, this.ImageUrl);
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName,
        arguments: {'id': id, 'title': title, 'ImageUrl': ImageUrl});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,

            //DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.network(ImageUrl).image,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
                fit: BoxFit.cover,
              ),
              gradient: LinearGradient(colors: [
                color.withOpacity(0),
                color,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15)),
        ));
  }
}
