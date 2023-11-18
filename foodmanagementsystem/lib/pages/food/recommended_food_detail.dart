import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodmanagementsystem/utils/colors.dart';
import 'package:foodmanagementsystem/utils/dimensions.dart';
import 'package:foodmanagementsystem/widgets/app_icon.dart';
import 'package:foodmanagementsystem/widgets/big_text.dart';
import 'package:foodmanagementsystem/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              toolbarHeight: 70,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.clear),
                  Icon(Icons.shopping_cart_outlined),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  child: Center(
                      child: BigText(
                          size: Dimensions.font26, text: ("Fast Food Side"))),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20),
                      )),
                ),
              ),
              pinned: true,
              backgroundColor: AppColors.yellowColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/image/food1.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              )),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                    text:
                        "To prepare a delicious homemade burger, start by selecting high-quality ingredients. Begin with 1 pound of ground beef (preferably 80% lean, 20% fat) for that juicy flavor. In a mixing bowl, season the beef with salt, pepper, and any desired spices like garlic powder or onion powder. Gently combine the ingredients, being careful not to overmix, as it can result in a tougher texture.Divide the seasoned beef into equal portions and shape them into burger patties. Heat a grill or stovetop pan over medium-high heat and cook the patties to your preferred doneness, usually 3-4 minutes per side for medium. Just before they're done, add a slice of your favorite cheese to each patty and let it melt. While the patties are cooking, prepare the burger fixings. Toast the burger buns on the grill or in a toaster for a crispy texture. Spread a generous amount of mayonnaise, ketchup, or mustard on the bottom half of each bun. Layer fresh lettuce, tomato slices, and red onion rings on top. Once the patties are cooked and the cheese is melted, carefully transfer them onto the prepared buns. Add any additional toppings you desire, such as pickles, bacon, or avocado slices. Finally, place the top half of the bun on top, press gently to hold everything together, and your mouthwatering homemade burger is ready to be savored. Serve with your favorite side dishes and enjoy this delightful culinary creation!"),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
