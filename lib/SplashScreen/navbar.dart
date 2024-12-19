import 'package:flutter/material.dart';
import 'package:jeeveeapp/pages/my_account_tile.dart';

class screenb extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  final VoidCallback toggleGender;
  final bool isMenSelected;

  const screenb({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    required this.toggleGender,
    required this.isMenSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              _navBarItem(
                iconPath: 'assets/icons/categories.png',
                label: 'Categories',
                isSelected: selectedIndex == 1,
                onTap: () => onItemTapped(1),
              ),
              _navBarItem(
                iconPath: 'assets/icons/offer.png',
                label: 'Offers',
                isSelected: selectedIndex == 2,
                onTap: () => onItemTapped(2),
              ),
              _navBarItem(
                iconPath: 'assets/icons/account.png',
                label: 'Account',
                isSelected: selectedIndex == 3,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyAccountTile()),
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
              onItemTapped(0); // Set to Men/Women Screen
              toggleGender(); // Toggle between Men and Women
            },
            child: CustomCircleButton(
              isSelected: selectedIndex == 0,
              label: selectedIndex == 0
                  ? (isMenSelected ? 'Men' : 'Women')
                  : 'Home',
              iconColor: selectedIndex == 0
                  ? (isMenSelected ? Colors.blue : Colors.pink)
                  : Colors.black,
              showArrow: selectedIndex == 0,
              showThan: selectedIndex == 0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _navBarItem({
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
          ImageIcon(
            AssetImage(iconPath),
            size: 24,
            color: isSelected
                ? Color.lerp(Colors.cyan, Colors.purple, 0.5) ?? Colors.cyan
                : Colors.black,
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
}

class CustomCircleButton extends StatelessWidget {
  final bool isSelected;
  final String label;
  final Color iconColor;
  final bool showArrow;
  final bool showThan;

  const CustomCircleButton({
    super.key,
    required this.isSelected,
    required this.label,
    required this.iconColor,
    required this.showArrow,
    required this.showThan,
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
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/icons/v.png',
                  width: 40,
                  height: 40,
                  color: iconColor == Colors.black ? Colors.black : iconColor,
                ),
                if (showThan)
                  Positioned(
                    right: 8,
                    child: Image.asset(
                      'assets/icons/than.png',
                      width: 14,
                      height: 14,
                      color: Colors.black,
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
