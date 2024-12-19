import 'package:flutter/material.dart';
import 'package:jeeveeapp/BrandPages/BrandFashion.dart';
import 'package:jeeveeapp/Categorypages/skin.dart';
import 'package:jeeveeapp/components/my_account_tile.dart';
import 'package:jeeveeapp/containers/CategoryMain/CategoryHome.dart';
import 'package:jeeveeapp/containers/offersmain/Offer_Page.dart';
import 'package:jeeveeapp/homepage/homepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final List<Map<String, String>> brandList = [
  {"name": "Aadhya", "imageUrl": "assets/icons/Aadhya.png"},
  {"name": "Abbott", "imageUrl": "assets/icons/Abbott.png"},
  {"name": "Acnes", "imageUrl": "assets/icons/Acnes.png"},
  {"name": "Acnestar", "imageUrl": "assets/icons/Aadhya.png"},
  {"name": "Aiwibi", "imageUrl": "assets/icons/Apple.png"},
  {"name": "AI Ziba", "imageUrl": "assets/icons/Abbott.png"},
  {"name": "Aadhya", "imageUrl": "assets/icons/Aadhya.png"},
  {"name": "Abbott", "imageUrl": "assets/icons/Abbott.png"},
  {"name": "Acnes", "imageUrl": "assets/icons/Acnes.png"},
  {"name": "Acnestar", "imageUrl": "assets/icons/Aadhya.png"},
  {"name": "Aiwibi", "imageUrl": "assets/icons/Apple.png"},
  {"name": "AI Ziba", "imageUrl": "assets/icons/Abbott.png"},
  {"name": "Aadhya", "imageUrl": "assets/icons/Aadhya.png"},
  {"name": "Abbott", "imageUrl": "assets/icons/Abbott.png"},
  {"name": "Acnes", "imageUrl": "assets/icons/Acnes.png"},
  {"name": "Acnestar", "imageUrl": "assets/icons/Aadhya.png"},
  {"name": "Aiwibi", "imageUrl": "assets/icons/Apple.png"},
  {"name": "AI Ziba", "imageUrl": "assets/icons/Abbott.png"},
];

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool isMenSelected = true;
  String _selectedSection = "Categories"; // Start with Categories selected
  String _searchQuery = "";
  String _selectedFilter = "ALL"; // Track the selected filter

  final List<Widget> _pages = [
    HomePage(),
    CategoryMainPage(),
    OfferPage(),
    MyAccountTile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void toggleGender() {
    setState(() {
      isMenSelected = !isMenSelected;
    });
  }

  Color getIconColor(int index) {
    if (_selectedIndex == index) {
      return Color.lerp(
              const Color.fromARGB(255, 63, 76, 218), Colors.purple, 0.5) ??
          const Color.fromARGB(255, 63, 76, 218);
    }
    return Colors.black;
  }

  void _selectSection(String section) {
    setState(() {
      _selectedSection = section;
    });
  }

  List<Map<String, String>> _filteredBrands() {
    return brandList.where((brand) {
      return brand["name"]!.toLowerCase().contains(_searchQuery.toLowerCase());
    }).toList();
  }

  // Method to build the category filter buttons
  Widget _buildCategoryFilterButton(String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedFilter = label;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Text(
          label,
          style: TextStyle(
            color: _selectedFilter == label
                ? const Color.fromARGB(255, 63, 76, 218) // Pink when selected
                : Colors.black, // Black when unselected
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  // Method to build the selection container for "Categories" and "Brands"
  Widget _buildSectionButton(String label, String section) {
    bool isSelected = _selectedSection == section;
    return GestureDetector(
      onTap: () {
        _selectSection(section);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 63, 76, 218)
              : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: isSelected
                  ? const Color.fromARGB(255, 63, 76, 218)
                  : Colors.black),
        ),
        child: Row(
          children: [
            Icon(
              section == "Categories" ? Icons.grid_view : Icons.label,
              color: isSelected ? Colors.white : Colors.black,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Transform.rotate(
              angle: 3.1416,
              child: Transform.scale(
                scaleX: -1,
                child: Image.asset(
                  'assets/icons/hamburger.png', // Replace with the path of your image
                  width: 30,
                  height: 30,
                ),
              ),
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: _selectedSection == "Account"
            ? Text(
                "Account Settings",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 16.0,
                ),
              )
            : Column(
                children: [
                  // Display Image when not in "Account" section
                  Image.asset(
                    'assets/images/OIP.jpg', // Your image path
                    width: 195, // Adjust size of the image as needed
                    height: 100, // Adjust the height accordingly
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            width: 10,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.search, color: Colors.black),
                                hintText: 'Search for Products, Medicines...',
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 10),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          width: 40,
                          child: IconButton(
                            icon: Image.asset(
                              'assets/icons/barcode.png',
                              width: 24,
                              height: 24,
                              color: Colors.black87,
                            ),
                            onPressed: () {
                              // Barcode scanning functionality
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildSectionButton("Categories", "Categories"),
                    const SizedBox(width: 16),
                    _buildSectionButton("Brands", "Brands"),
                  ],
                ),
              ),
            ),
            const Divider(),
            // Show "All Categories" only when "Categories" is selected
            if (_selectedSection == "Categories")
              ListTile(
                title: Text(
                  'All Categories',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 14, 48, 221),
                    fontSize: 18,
                  ),
                ),
                onTap: () {},
              ),
            // Show the rest of the categories only when "Categories" is selected
            _selectedSection == "Categories"
                ? Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        buildCategoryItem("Skin", context),
                        buildCategoryItem("Hair", context),
                        buildCategoryItem("Fragrances", context),
                        buildCategoryItem("Makeup", context),
                        buildCategoryItem("Kid's Fashion", context),
                        buildCategoryItem("Gadgets & Accessories", context),
                        buildCategoryItem(
                            "Home Appliances & Television", context),
                        buildCategoryItem("Skin", context),
                        buildCategoryItem("Hair", context),
                        buildCategoryItem("Fragrances", context),
                        buildCategoryItem("Makeup", context),
                        buildCategoryItem("Kid's Fashion", context),
                        buildCategoryItem("Gadgets & Accessories", context),
                      ],
                    ),
                  )
                : Container(),
            // Show search bar and filter buttons only when "Brands" is selected
            _selectedSection == "Brands"
                ? Expanded(
                    child: Column(
                      children: [
                        // Search bar above filter buttons
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 9,
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.search,
                                          color: Colors.black),
                                      hintText:
                                          'Search for Products, Medicines...',
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 10),
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _searchQuery = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              SizedBox(
                                width: 40,
                                child: IconButton(
                                  icon: Image.asset(
                                    "assets/icons/filter.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Category filter buttons
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildCategoryFilterButton("ALL"),
                              SizedBox(width: 20),
                              _buildCategoryFilterButton("#"),
                              SizedBox(width: 20),
                              _buildCategoryFilterButton("A"),
                              SizedBox(width: 20),
                              _buildCategoryFilterButton("B"),
                              SizedBox(width: 20),
                              _buildCategoryFilterButton("C"),
                              SizedBox(width: 20),
                              _buildCategoryFilterButton("D"),
                            ],
                          ),
                        ),

                        Expanded(
                          child: ListView.builder(
                            itemCount:
                                brandList.length, // Length of the brand list
                            itemBuilder: (context, index) {
                              final brand =
                                  brandList[index]; // Get the brand data
                              return ListTile(
                                leading: Container(
                                  width:
                                      30, // Set a small width for the container
                                  height:
                                      30, // Set a small height for the container
                                  padding: const EdgeInsets.all(
                                      5), // Optional: Add padding inside the container
                                  decoration: BoxDecoration(
                                    shape: BoxShape
                                        .circle, // Optional: Make the container circular
                                    color: Colors.grey[
                                        200], // Optional: Background color for the container
                                  ),
                                  child: Image.asset(
                                    brand[
                                        "imageUrl"]!, // Load the image from assets
                                    width:
                                        20, // Image size inside the container
                                    height:
                                        20, // Image size inside the container
                                    fit: BoxFit
                                        .cover, // Optional: Fit the image to fill the container
                                  ),
                                ),
                                title: Text(
                                    brand["name"]!), // Display the brand name
                                onTap: () {
                                  // Navigate to Fashion Screen when a brand is tapped
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FashionPage(),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),

            // Show nothing if Brands is not selected
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          // Bottom Navigation Background
          Container(
            height: 70,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 80), // Space for the custom button
                navBarItem(
                  iconPath: 'assets/icons/categories.png',
                  label: 'Categories',
                  isSelected: _selectedIndex == 1,
                  onTap: () => _onItemTapped(1),
                ),
                navBarItem(
                  iconPath: 'assets/icons/offer.png',
                  label: 'Offers',
                  isSelected: _selectedIndex == 2,
                  onTap: () => _onItemTapped(2),
                ),
                navBarItem(
                  iconPath: 'assets/icons/account.png',
                  label: 'Account',
                  isSelected: _selectedIndex == 3,
                  onTap: () => _onItemTapped(3),
                ),
              ],
            ),
          ),

          // Custom Circular Button for "V> (Men/Women)"
          Positioned(
            left: 10, // Adjust the horizontal position
            top: -20, // To create the raised circular effect
            child: GestureDetector(
              onTap: () {
                _onItemTapped(0); // Set to Men/Women Screen
                toggleGender(); // Toggle between Men and Women
              },
              child: CustomCircleButton(
                isSelected: _selectedIndex == 0,
                label: _selectedIndex == 0
                    ? (isMenSelected ? 'Men' : 'Women')
                    : 'Home',
                iconColor: _selectedIndex == 0
                    ? (isMenSelected ? Colors.blue : Colors.pink)
                    : Colors.black, // Color of the v.png icon
                showArrow: _selectedIndex == 0,
                showThan: _selectedIndex ==
                    0, // Display 'than.png' only on Men/Women screen
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Bottom navigation item widget
  Widget navBarItem({
    required String iconPath,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon color updated based on selected state
          ImageIcon(
            AssetImage(iconPath),
            size: 24,
            color: isSelected
                ? Colors.blue // Blue when selected
                : Colors.black, // Black when unselected
            // Change to a mixture of cyan and purple when selected
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.black.withOpacity(0.5),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  // Build category item
  Widget buildCategoryItem(String title, BuildContext context) {
    return StatefulCategoryItem(title: title);
  }

  //_buildCategoryFilterButton(String s) {}
}

class StatefulCategoryItem extends StatefulWidget {
  final String title;

  const StatefulCategoryItem({super.key, required this.title});

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
              ? const Color.fromARGB(255, 63, 76, 218)
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
        buildSubCategoryItem("Complete Collection", context),
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

  Widget buildSubCategoryItem(String title, BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SkinPage(),
          ),
        );
      },
    );
  }
}

class ProductPage extends StatelessWidget {
  final String title;

  const ProductPage({super.key, required this.title});

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

class CustomCircleButton extends StatelessWidget {
  final bool isSelected;
  final String label;
  final Color iconColor; // Color for the "v.png" icon
  final bool showArrow; // Flag to determine if the arrow should be shown
  final bool showThan; // Flag to show than.png only on Men/Women screen

  const CustomCircleButton({
    super.key,
    required this.isSelected,
    required this.label,
    required this.iconColor,
    required this.showArrow, // Pass the flag to control arrow visibility
    required this.showThan, // Flag to control visibility of than.png
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white, // Circle background stays constant
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // v.png icon with color logic: black when not on Men/Women screen
                Image.asset(
                  'assets/icons/v.png', // v.png icon
                  width: 40,
                  height: 40,
                  color: iconColor == Colors.black
                      ? Colors.black
                      : iconColor, // Apply dynamic color or black
                ),
                SizedBox(width: 110),
                if (showThan)
                  Positioned(
                    right: 8,
                    child: Image.asset(
                      'assets/icons/than.png', // than.png icon
                      width: 14, // Size of than.png icon
                      height: 14,
                      color: Colors.black, // Fixed black color for than.png
                    ),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: isSelected ? Colors.black : Colors.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
