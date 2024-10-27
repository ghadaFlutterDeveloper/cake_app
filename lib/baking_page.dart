import 'package:flutter/material.dart';

class CakeOption extends StatelessWidget {
  final Image image;
  final String title;
  final String subtitle;
  final String details;
  final String price;

  const CakeOption({
    super.key,
    required this.title,
    required this.subtitle,
    required this.details,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
          Text(
            details,
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
          Text(
            price,
            style: TextStyle(
              color: Colors.purple[400],
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class BakingPage extends StatefulWidget {
  static String routeName = 'bake_page';

  @override
  State<BakingPage> createState() => _BakingPageState();
}

class _BakingPageState extends State<BakingPage> {
  final String cakePrice = 'SAR 190';
  String selectedOption = '';
  bool isDetailVisible = false;

  final List<Map<String, dynamic>> cakes = [
    {
      'title': 'Mini Standard',
      'subtitle': 'Good for 5 people',
      'details': '1 kg | 6x6x3',
      'price': '190 SAR',
      'image': 'assets/images/images.jpg', // استخدم المسار كنص
    },
    {
      'title': 'Mini Heart',
      'subtitle': 'Good for 5 people',
      'details': '1 kg | 6x6x3',
      'price': '190 SAR',
      'image': 'assets/images/images.jpg',
    },
    {
      'title': 'Standard Cake',
      'subtitle': 'Good for 12 people',
      'details': '1.6 kg | 6x6x6',
      'price': '240 SAR',
      'image': 'assets/images/images.jpg',
    },
    {
      'title': 'Heart Cake',
      'subtitle': 'Good for 10 people',
      'details': '1.4 kg | 6x6x3',
      'price': '230 SAR',
      'image': 'assets/images/images.jpg',
    },
  ];

  Widget _buildShapeContent() {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: cakes.length,
      itemBuilder: (context, index) {
        return CakeOption(
          title: cakes[index]['title'] ?? '',
          subtitle: cakes[index]['subtitle'] ?? '',
          details: cakes[index]['details'] ?? '',
          price: cakes[index]['price'] ?? '',
          image: Image.asset(cakes[index]['image']), // قم بإنشاء كائن صورة هنا
        );
      },
    );
  }

  Widget _buildFlavorContent() {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        List<String> flavors = [
          'Vanilla',
          'Chocolate',
          'Red Velvet',
          'Strawberry',
          'Caramel',
          'Coffee'
        ];
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.cake, size: 40),
              SizedBox(height: 8),
              Text(flavors[index]),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSelectedContent() {
    switch (selectedOption) {
      case 'Shape':
        return _buildShapeContent();
      case 'Flavor':
        return _buildFlavorContent();
      case 'Color':
        return Center(child: Text('Color options coming soon...'));
      case 'Toppings':
        return Center(child: Text('Toppings options coming soon...'));
      case 'Write & Print':
        return Center(child: Text('Writing options coming soon...'));
      default:
        return Center(child: Text('Select an option from the menu'));
    }
  }

  Widget _buildMenuItem(IconData icon, String label) {
    bool isSelected = selectedOption == label;

    return InkWell(
      onTap: () {
        setState(() {
          selectedOption = label;
          isDetailVisible = true;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.purple[300] : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.white, size: 25),
            SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
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
        title: Text("Customize"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              cakePrice,
              style: TextStyle(color: Colors.purple[400]),
            ),
          ),
        ],
      ),
      body:
      Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 80,
            child: Container(
              width: 80,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.4,
              decoration: BoxDecoration(
                color: Colors.purple[400],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    children: [
                      _buildMenuItem(Icons.cake, 'Shape'),
                      _buildMenuItem(Icons.restaurant, 'Flavor'),
                      _buildMenuItem(Icons.palette, 'Color'),
                      _buildMenuItem(Icons.icecream, 'Toppings'),
                      _buildMenuItem(Icons.edit, 'Write & Print'),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            left: 100,
            right: 16,
            bottom: 80,
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.4,
              child: AnimatedOpacity(
                opacity: isDetailVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 300),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 5),
                    ],
                  ),
                  child: _buildSelectedContent(),
                ),
              ),
            ),
          ),

          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[400],
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
