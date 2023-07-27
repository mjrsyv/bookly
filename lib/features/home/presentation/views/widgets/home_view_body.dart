import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book__list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BookListView(),
          ),
        )
      ],
    );
    // return const Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 30),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       CustomAppBar(),
    //       FeaturedBooksListView(),
    //       SizedBox(
    //         height: 50,
    //       ),
    //       Text(
    //         "Best Seller",
    //         style: Styles.textStyle18,
    //       ),
    //       SizedBox(
    //         height: 20,
    //       ),
    //       BestSellerListView()
    //     ],
    //   ),
    // );
  }
}
