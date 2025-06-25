import 'package:flutter/material.dart';

class PhotoGalleryScreen extends StatelessWidget {
  const PhotoGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(4),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemCount: 42,
                itemBuilder:
                    (context, index) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://picsum.photos/id/${index + 10}/200/200',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Text(
                  'Recent Days',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 16),
                  children: [
                    _buildRecentCard(
                      'Mar 15',
                      'https://picsum.photos/id/1011/200/200',
                    ),
                    _buildRecentCard(
                      'Feb 20',
                      'https://picsum.photos/id/1012/200/200',
                    ),
                    _buildRecentCard(
                      'Jan 05',
                      'https://picsum.photos/id/1013/200/200',
                    ),
                    _buildRecentCard(
                      'Dec 22',
                      'https://picsum.photos/id/1015/200/200',
                    ),
                       _buildRecentCard(
                      'Dec 22',
                      'https://picsum.photos/id/1015/200/200',
                    ),
                       _buildRecentCard(
                      'Dec 22',
                      'https://picsum.photos/id/1015/200/200',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecentCard(String date, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 6),
          Text(date, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
