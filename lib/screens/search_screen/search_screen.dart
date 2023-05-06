import 'package:flutter/material.dart';
import 'package:grocery_app/controller/search_screen_controller.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/styles/colors.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = Provider.of<SearchController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Search Store',
          style: TextStyle(color: AppColor.primaryColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizes.szdh20,
              TextFormField(
                controller: searchController.searchController,
                decoration: InputDecoration(
                  hintText: 'Search Store',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                ),
                onChanged: searchController.onSearchTextChanged,
              ),
              AppSizes.szdh50,
              Consumer<SearchController>(
                builder: (context, value, child) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: searchController.filteredStores.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(searchController.filteredStores[index]),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
