import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class MyFeedsScreen extends StatelessWidget {
  const MyFeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).maybePop(),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white24),
                      ),
                      child: const Icon(Icons.arrow_back, size: 20),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text('My Feed', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            const Expanded(child: _FeedList()),
          ],
        ),
      )
    );
  }
}

class _FeedList extends StatelessWidget {
  const _FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: _FeedCard(
            authorName: 'No Name',
            timeAgo: timeago.format(DateTime.parse("2025-10-15T05:07:12.714088Z")),
            imageProvider: const NetworkImage('https://i.ibb.co/wrzL7vr/Screenshot-2024-11-04-at-2-43-45-PM.png'),
            description:
            'teat one',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: _FeedCard(
            authorName: 'No Name',
            timeAgo: timeago.format(DateTime.parse("2025-10-15T04:05:59.355942Z")),
            imageProvider: const NetworkImage('https://i.ibb.co/wrzL7vr/Screenshot-2024-11-04-at-2-43-45-PM.png'),
            description:
            "test",
          ),
        ),Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: _FeedCard(
            authorName: 'Frijo',
            timeAgo: timeago.format(DateTime.parse("2025-10-15T04:00:14.686657Z")),
            imageProvider: const NetworkImage('https://i.ibb.co/wrzL7vr/Screenshot-2024-11-04-at-2-43-45-PM.png'),
            description:
            "LITERATURE\r\nBUSINESS\r\nDEVELOPMENT ASSOCIATE",
          ),
        )
      ],
    );
    // return ListView.builder(
    //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    //   itemCount: 4,
    //   itemBuilder: (context, index) {
    //     final isFirst = index % 2 == 0;
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 18),
    //       child: _FeedCard(
    //         authorName: isFirst ? 'Anagha Krishna' : 'Gokul Krishna',
    //         timeAgo: '5 days ago',
    //         // Replace with: Image.file(File('/mnt/data/fb7edbb6-9cf2-446b-b39b-0d21b23950ae.png'))
    //         // or use AssetImage('assets/teacher1.png') after adding the image to pubspec.yaml
    //         imageProvider: const AssetImage('assets/teacher_placeholder.png'),
    //         description:
    //         'Lorem ipsum dolor sit amet consectetur. Leo ac lorem faucib us facilisis tellus. At vitae dis commodo nunc sollicitudin elementum suspendisse...',
    //       ),
    //     );
    //   },
    // );
  }
}

class _FeedCard extends StatelessWidget {
  final String authorName;
  final String timeAgo;
  final ImageProvider imageProvider;
  final String description;

  const _FeedCard({
    required this.authorName,
    required this.timeAgo,
    required this.imageProvider,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(radius: 18, backgroundImage: imageProvider),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(authorName, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                  const SizedBox(height: 2),
                  Text(timeAgo, style: const TextStyle(fontSize: 10, color: Colors.white60)),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
              color: Colors.white70,
            ),
          ],
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.play_arrow, size: 36, color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: const TextStyle(color: Colors.white70, fontSize: 12.5, height: 1.4),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
