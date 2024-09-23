import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 17, 32),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade700),
                      child: const Icon(Icons.keyboard_arrow_down, size: 30),
                    ),
                  ),
                  Container(
                    width: 100,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "SAVED",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white)),
                            child:
                                //  SvgPicture.asset("assets/images/favorite.svg",
                                //   height: 30,
                                //   colorFilter: const ColorFilter.mode(
                                //     Colors.white,
                                //     BlendMode.srcATop,
                                //   ))
                                const Icon(Icons.menu)),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  // Album Art & Favorite Icon
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1623090202496-7e462953d72a?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                            height: 320,
                            width: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.teal,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 12),

                  // Song Title and Artist
                  const Text(
                    "Holy Spirit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Nathaniel Bassey",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Progress bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Slider(
                          value: 80, // Position in seconds
                          min: 0,
                          max: 180, // Total song duration
                          activeColor: Colors.purple,
                          inactiveColor: Colors.grey,
                          onChanged: (value) {},
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1:20",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              "2:40",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Player Controls
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.shuffle, color: Colors.grey.shade500),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.skip_previous,
                            color: Colors.white),
                        onPressed: () {},
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          color: Colors.purple,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.pause,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.skip_next, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.share, color: Colors.grey.shade500),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // Up Next Section
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.black,
        child: Container(
          height: 65,
          decoration: BoxDecoration(
              color: Colors.purple.shade100,
              borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://th.bing.com/th/id/R.da9c3b5f47a2b4ad1f10284e7fed375c?rik=%2f4rcrxQ2Ajpzpw&riu=http%3a%2f%2f4.bp.blogspot.com%2f-9kGM_wZeFd4%2fUZLExzgR53I%2fAAAAAAAAARA%2fCdgwywTsJ0s%2fs1600%2fAcid%2bRap.jpg&ehk=cI1con4wGLuqDTe9m1%2bkbK5uRheZEHt3D%2bepiHmyYP8%3d&risl=&pid=ImgRaw&r=0',
                        ),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Up Next",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    "Miracle",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(left: 15),
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.purple.shade200),
                child: const Icon(Icons.skip_previous,
                    color: Colors.black, size: 30),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    shape: BoxShape.circle,
                    color: Colors.purple[100]),
                child: Icon(
                  Icons.playlist_play_rounded,
                  size: 30,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
