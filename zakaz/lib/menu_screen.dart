import 'package:flutter/material.dart';
import 'widgets/category.dart';
import 'widgets/item_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 15,
            ),
            const SizedBox(width: 8),
            const Text(
              "ZAKAZ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Grid of category buttons
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2.5,
              children: [
                CategoryButton(
                  title: "All",
                  isActive: true,
                  icon: Icons.grid_4x4,
                ),
                CategoryButton(
                  title: "",
                  isActive: false,
                  icon: Icons.add,
                  outlined: true,
                ),
              ],
            ),
          ),

          // Scrollable item grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 0.8,
                mainAxisSpacing: 16,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ItemCard(
                  title: "Item_Name",
                  price: "$index",
                  image: "assets/images/placeholder.jpg",
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final IconData icon;
  final bool outlined;

  const CategoryButton({
    Key? key,
    required this.title,
    required this.isActive,
    required this.icon,
    this.outlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: outlined ? Colors.transparent : Colors.black,
        border: outlined ? Border.all(color: Colors.grey) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: outlined ? Colors.black : Colors.white,
            ),
            if (title.isNotEmpty) ...[
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  color: outlined ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
