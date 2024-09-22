import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 17, 32),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Songs",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Artists",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "Albums",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 5,
                        color: Colors.grey[700],
                      ),
                      Container(
                        height: 5,
                        width: 80,
                        color: Colors.purple,
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Play All Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.purpleAccent),
                    child: const Icon(
                      Icons.play_arrow,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(width: 16),
                  const Text(
                    "Play All",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Spacer(),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "300 songs",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // List of Songs
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with your song count
                itemBuilder: (context, index) {
                  return const SongListItem();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SongListItem extends StatelessWidget {
  const SongListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 16.0),
      child: Row(
        children: [
          // Album Art
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/165013201/original/f5254f3673ca718431b1b3f16587dd86a8d333a6/design-a-mixtape-or-album-cover.jpg', // Replace with actual image URL
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),

          // Song Title and Artist
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pain",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Ryan Jones",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Spacer(),

          // Menu Icon
          Container(
            height: 30,
            width: 30,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[700]),
            child: const Icon(
              Icons.more_vert,
              // size: ,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
