import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge_1/route.dart';
import 'package:ui_challenge_1/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 17, 32),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
          child: ListView(
            children: [
              const SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white)),
                      child: const Icon(Icons.settings_outlined)),
                  const Text("EXPLORE",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade700),
                      child: const Icon(
                        Icons.notifications_outlined,
                        size: 30,
                      )),
                ],
              ),
              const SizedBox(height: 30),

              // Recently Played Section
              const Text(
                "Recently Played",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 18),
              SizedBox(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            CustomPageRoute(child: const DetailScreen()));
                      },
                      child: const AlbumCard(
                        title: 'Natural Beauty',
                        artist: 'Jamie Gray',
                        imageUrl:
                            'https://i.pinimg.com/564x/bc/04/2f/bc042f9215db19bc71bd0b8ac3980800.jpg',
                      ),
                    ),
                    const AlbumCard(
                      title: 'Acid Rap',
                      artist: 'Chance the Rapper',
                      imageUrl:
                          'https://th.bing.com/th/id/R.da9c3b5f47a2b4ad1f10284e7fed375c?rik=%2f4rcrxQ2Ajpzpw&riu=http%3a%2f%2f4.bp.blogspot.com%2f-9kGM_wZeFd4%2fUZLExzgR53I%2fAAAAAAAAARA%2fCdgwywTsJ0s%2fs1600%2fAcid%2bRap.jpg&ehk=cI1con4wGLuqDTe9m1%2bkbK5uRheZEHt3D%2bepiHmyYP8%3d&risl=&pid=ImgRaw&r=0',
                    ),
                    const AlbumCard(
                      title: 'Pain',
                      artist: 'Ryan Jones',
                      imageUrl:
                          'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/165013201/original/f5254f3673ca718431b1b3f16587dd86a8d333a6/design-a-mixtape-or-album-cover.jpg',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // Your Favorite Artists Section
              const Text(
                "Your Favorite Artists",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ArtistAvatar(
                      name: 'Mercy Chinwo',
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.lvbDeViorsW26baTZekKCgHaHa?rs=1&pid=ImgDetMain',
                    ),
                    ArtistAvatar(
                      name: 'Cobhams',
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.R1whFIB1-_kSMTwrb1FjhAHaHa?rs=1&pid=ImgDetMain',
                    ),
                    ArtistAvatar(
                      name: 'Judikay',
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.diaKO5YmyCjpCC0Y6K-JcgHaHa?rs=1&pid=ImgDetMain',
                    ),
                    ArtistAvatar(
                      name: 'Moses Bliss',
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.qMWscbueCiLB5i9e85nvuAHaFR?rs=1&pid=ImgDetMain',
                    ),
                    ArtistAvatar(
                      name: 'Acid Rap',
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.5d-km9DEpqlbvlydC5MINgHaF-?rs=1&pid=ImgDetMain',
                    ),
                    ArtistAvatar(
                      name: 'Moses Bliss',
                      imageUrl:
                          'https://th.bing.com/th/id/OIP.qMWscbueCiLB5i9e85nvuAHaFR?rs=1&pid=ImgDetMain',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Weekly Explore Section
              SizedBox(
                width: double.infinity,
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        'https://i0.wp.com/www.naijamusic.com.ng/wp-content/uploads/2017/12/Top-20-Nigerian-Gospel-Songs.jpg?resize=1024%2C681&ssl=1',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        // height: 60,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black87,
                              Colors.black45,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.transparent
                            ],
                          ),
                        ),
                        child: const Text(""),
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "WEEKLY EXPLORE",
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 3),
                            const Text(
                              "Hallelujah Worship",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.black,
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.symmetric(vertical: 6),
        borderRadius: 30,
        itemBorderRadius: 30,
        selectedItemColor: Colors.purple,
        selectedBackgroundColor: null,
        onTap: (int val) {
          //returns tab id which is user tapped
        },
        currentIndex: 0,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: null),
          FloatingNavbarItem(icon: Icons.explore, title: null),
          FloatingNavbarItem(icon: Icons.music_note, title: null),
          FloatingNavbarItem(icon: Icons.person, title: null),
        ],
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final String title;
  final String artist;
  final String imageUrl;

  const AlbumCard({
    super.key,
    required this.title,
    required this.artist,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: 140,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            artist,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class ArtistAvatar extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ArtistAvatar({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              color: Colors.grey.shade200,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
