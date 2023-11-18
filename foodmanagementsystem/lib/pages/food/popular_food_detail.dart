import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodmanagementsystem/utils/colors.dart';
import 'package:foodmanagementsystem/utils/dimensions.dart';
import 'package:foodmanagementsystem/widgets/app_column.dart';
import 'package:foodmanagementsystem/widgets/app_icon.dart';
import 'package:foodmanagementsystem/widgets/big_text.dart';
import 'package:foodmanagementsystem/widgets/expandable_text_widget.dart';
import 'package:foodmanagementsystem/widgets/icon_and_text_widget.dart';
import 'package:foodmanagementsystem/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/food1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //icon Widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.height20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //Introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Fast Food in Pakistan"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  //expandable text widget
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "To prepare a delicious homemade burger, start by selecting high-quality ingredients. Begin with 1 pound of ground beef (preferably 80% lean, 20% fat) for that juicy flavor. In a mixing bowl, season the beef with salt, pepper, and any desired spices like garlic powder or onion powder. Gently combine the ingredients, being careful not to overmix, as it can result in a tougher texture.Divide the seasoned beef into equal portions and shape them into burger patties. Heat a grill or stovetop pan over medium-high heat and cook the patties to your preferred doneness, usually 3-4 minutes per side for medium. Just before they're done, add a slice of your favorite cheese to each patty and let it melt. While the patties are cooking, prepare the burger fixings. Toast the burger buns on the grill or in a toaster for a crispy texture. Spread a generous amount of mayonnaise, ketchup, or mustard on the bottom half of each bun. Layer fresh lettuce, tomato slices, and red onion rings on top. Once the patties are cooked and the cheese is melted, carefully transfer them onto the prepared buns. Add any additional toppings you desire, such as pickles, bacon, or avocado slices. Finally, place the top half of the bun on top, press gently to hold everything together, and your mouthwatering homemade burger is ready to be savored. Serve with your favorite side dishes and enjoy this delightful culinary creation!"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                text: " \$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
