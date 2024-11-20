import 'package:flutter/material.dart';

class SliderBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
        backgroundColor: Colors.purple,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
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
            // Add All Categories section here
            ListTile(
              title: Text(
                'All Categories',
                style: TextStyle(
                    color: const Color.fromARGB(255, 142, 6, 239),
                    fontSize: 18),
              ),
              onTap: () {},
            ),
            Expanded(
              child: ListView(
                children: [
                  buildCategoryItem("Skin", context),
                  buildCategoryItem("Hair", context),
                  buildCategoryItem("Fragrances", context),
                  buildCategoryItem("Makeup", context),
                  buildCategoryItem("Kid's Fashion", context),
                  buildCategoryItem("Gadgets & Accessories", context),
                  buildCategoryItem("Home Appliances & Television", context),
                  buildCategoryItem("Women Fashion", context),
                  buildCategoryItem("Mom & Baby", context),
                  buildCategoryItem("Personal Care", context),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text("Main Screen Content"),
      ),
    );
  }

  // Stateful widget to handle the selection and color change effect
  Widget buildCategoryItem(String title, BuildContext context) {
    return StatefulCategoryItem(title: title);
  }
}

class StatefulCategoryItem extends StatefulWidget {
  final String title;

  StatefulCategoryItem({required this.title});

  @override
  _StatefulCategoryItemState createState() => _StatefulCategoryItemState();
}

class _StatefulCategoryItemState extends State<StatefulCategoryItem> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 16,
          color: _isSelected
              ? const Color.fromRGBO(235, 33, 148, 1)
              : Colors.black, // Change to pink if selected
        ),
      ),
      trailing: Icon(
        _isSelected
            ? Icons.keyboard_arrow_up // Custom up arrow (instead of drop_up)
            : Icons.keyboard_arrow_down, // Custom down arrow
        color:
            _isSelected ? const Color.fromARGB(255, 19, 15, 16) : Colors.black,
      ),
      onExpansionChanged: (bool expanding) {
        setState(() {
          _isSelected = expanding; // Toggle selection and color change
        });
      },
      children: [
        buildSubCategoryItem("Complete ${widget.title} Collection", context),
        buildSubCategoryItem("Cleansers", context),
        buildSubCategoryItem("Body Care", context),
        buildSubCategoryItem("Kits & Combos", context),
        buildSubCategoryItem("Sun Care", context),
        buildSubCategoryItem("Masks", context),
        buildSubCategoryItem("Eye Care", context),
        buildSubCategoryItem("Lip Care", context),
        buildSubCategoryItem("Toners", context),
        buildSubCategoryItem("Moisturizers", context),
        buildSubCategoryItem("Hands & Feet", context),
      ],
    );
  }

  // A method to create a subcategory item
  Widget buildSubCategoryItem(String title, BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(title: title),
          ),
        );
      },
    );
  }
}

// A placeholder ProductPage widget
class ProductPage extends StatelessWidget {
  final String title;

  ProductPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Text("Products of $title will be displayed here."),
      ),
    );
  }
}
