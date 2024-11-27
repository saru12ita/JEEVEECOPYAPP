import 'package:flutter/material.dart';
import 'package:jeeveeapp/components/my_account_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool isMenSelected = true; // Flag to toggle between Men and Women

  final List<Widget> _pages = [
    Center(child: Text("Men/Women Screen")),
    Center(child: Text("Categories Screen")),
    Center(child: Text("Offers Screen")),
    Center(child: Text("Account Screen")),
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

  // Helper function to get icon color
  Color getIconColor(int index) {
    if (_selectedIndex == index) {
      // Mixing cyan and purple when selected
      return Color.lerp(Colors.cyan, Colors.purple, 0.5) ?? Colors.cyan;
    }
    return Colors.black; // Default color for unselected icons
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140, // Increased height to fit all elements
        backgroundColor: Colors.white, // Customize background color if needed
        leading: Builder(
          builder: (context) => IconButton(
            icon: Transform.rotate(
              angle: 3.1416, // 180 degrees in radians
              child: Transform.scale(
                scaleX: -1, // Flip horizontally
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
        title: Column(
          children: [
            // Existing Image
            Image.asset(
              'assets/images/OIP.jpg', // Replace with your image path
              width: 170, // Adjust size of the image as needed
              height: 90, // Adjust the height accordingly
            ),
            const SizedBox(height: 10),
             // Space between image and search bar
             // Replace the existing search bar Row code with this updated version
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8), // Padding around the row
          child: Row(
            children: [
              // Expanded search bar to take more width
              Expanded(
                flex: 9, // Increase the flex value for the search bar
                child: Container(
                  width: 10,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      hintText: 'Search for Products, Medicines...',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 10), // Adjust for alignment
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8), // Spacing between the search bar and the barcode icon
              // Barcode icon with a fixed width to allow more space for the search bar
              SizedBox(
                width: 40, // Fixed width for the barcode icon
                child: IconButton(
                  icon: Image.asset(
                    'assets/icons/barcode.png', // Replace with your barcode icon path
                    width: 24,
                    height: 24,
                    color: Colors.black87, // Set color for the icon
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
        centerTitle: true, // Center the content of the AppBar
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
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>MyAccountTile()),
                    );
                  },
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
                ? Color.lerp(Colors.cyan, Colors.purple, 0.5) ?? Colors.cyan
                : Colors
                    .black, // Change to a mixture of cyan and purple when selected
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

  const CustomCircleButton({super.key, 
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
