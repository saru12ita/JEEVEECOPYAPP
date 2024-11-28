import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyan, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.grid_view, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Categories",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Spacer(),
                Icon(Icons.label, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  "Brands",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'All Categories',
              style: TextStyle(
                  color: const Color.fromARGB(255, 142, 6, 239), fontSize: 18),
            ),
            onTap: () {},
          ),
          Expanded(
            child: ListView(
              children: [
                _buildCategoryItem("Skin", context),
                _buildCategoryItem("Hair", context),
                _buildCategoryItem("Fragrances", context),
                _buildCategoryItem("Makeup", context),
                _buildCategoryItem("Kid's Fashion", context),
                _buildCategoryItem("Gadgets & Accessories", context),
                _buildCategoryItem("Home Appliances & Television", context),
                _buildCategoryItem("Women Fashion", context),
                _buildCategoryItem("Mom & Baby", context),
                _buildCategoryItem("Personal Care", context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, BuildContext context) {
    return ExpansionTile(
      title: Text(title, style: TextStyle(fontSize: 16)),
      children: [
        ListTile(
          title: Text("Subcategory for $title"),
          onTap: () {},
        ),
      ],
    );
  }
}
