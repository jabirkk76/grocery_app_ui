import 'package:flutter/material.dart';

class SearchController with ChangeNotifier {
  // Add this constructor to initialize filteredStores with stores
  SearchController() {
    filteredStores = stores;
  }
  TextEditingController searchController = TextEditingController();
  String _searchText = '';
  List<String> stores = ['Store 1', 'Store 2', 'Store 3', 'Store 4', 'Store 5'];
  List<String> filteredStores = [];

  void onSearchTextChanged(String searchText) {
    _searchText = searchText;
    filteredStores = stores
        .where(
            (store) => store.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();
    notifyListeners();
  }
}
