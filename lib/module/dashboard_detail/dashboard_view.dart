import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: const Color(0xff393e48), // Primary color for the AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Welcome Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0), // Rounded corners
                ),
                color: const Color(0xfff4f6f9), // Lighter background
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome, Muhammad!",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff393e48), // Primary color for text
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Your upcoming flight is on June 18, 2024.",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xffaeb2b4),
                            ),
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: Color(0xff393e48), // Primary color for avatar background
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Shopping Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Featured Products",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff393e48), // Primary color for text
                    ),
                  ),
                  const SizedBox(height: 15.0),

                  // Grid of Products
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      childAspectRatio: 0.75, // Adjusted for product images
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Handle product selection
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          color: const Color(0xfff4f6f9), // Lighter background for product cards
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1593642532973-d31b6557fa68?crop=entropy&cs=tinysrgb&fit=max&ixid=MXwyMDg4N3wwfDF8c2VhcmNofDIwOHx8cHJvZHVjdHxlbnwwfHx8fDE2NjkzNjM3Nzg&ixlib=rb-1.2.1&q=80&w=1080', 
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Product Title",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff393e48), // Primary color for text
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    const Text(
                                      "\$29.99",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfffdc620), // Accent color for price
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
