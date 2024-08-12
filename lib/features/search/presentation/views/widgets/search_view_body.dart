import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kotobaty_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:kotobaty_app/features/search/presentation/views/widgets/search_result_list_view.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/newest_books_list_view.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
