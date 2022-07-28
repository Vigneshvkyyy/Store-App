import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:store_app/model/category_model.dart';
import '../const/global_colors.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriesModelProvider = Provider.of<CategoriesModel>(context);

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: FancyShimmerImage(
              height: size.width * 0.45,
              width: size.width * 0.45,
              errorWidget: const Icon(
                IconlyBold.danger,
                color: Colors.red,
                size: 28,
              ),
              imageUrl: categoriesModelProvider.image!.toString(),
              boxFit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              categoriesModelProvider.name.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                backgroundColor: lightCardColor.withOpacity(0.5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
