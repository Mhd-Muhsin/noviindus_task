import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

// import 'my_feeds_screen.dart';

class AddFeedScreen extends StatelessWidget {
  const AddFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            _TopBar(),
            SizedBox(height: 18),
            Expanded(child: _AddFeedForm()),
          ],
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            child: Text('Add Feeds', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Color(0xFF4A1A1A)),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            child: const Text('Share Post'),
          ),
        ],
      ),
    );
  }
}

class _AddFeedForm extends StatelessWidget {
  const _AddFeedForm({super.key});

  Widget _dashedBox({required Widget child, double height = 180}) {
    return DottedBorder(
      color: Colors.white24,
      strokeWidth: 1,
      dashPattern: const [8, 6],
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      child: Container(
        height: height,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Center(child: child),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      children: [
        _dashedBox(
          height: 180,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/upload_video.png'),
              const SizedBox(height: 12),
              const Text('Select a video from Gallery', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
        const SizedBox(height: 18),

        _dashedBox(
          height: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/thumbnail.png'),
              SizedBox(width: 12),
              Text('Add a Thumbnail', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),

        const SizedBox(height: 18),

        const Text('Add Description', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
        const SizedBox(height: 8),
        TextField(
          maxLines: 5,
          style: const TextStyle(color: Colors.white70),
          decoration: InputDecoration(
            hintText:
            'Description',
            hintStyle: const TextStyle(color: Colors.white38, height: 1.4),
            filled: true,
            fillColor: const Color(0xFF0D0D0D),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),

        const SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Categories This Project', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
            Row(
              children: [
                const Text('View All', style: TextStyle(color: Colors.white70, fontSize: 10)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_right,size: 14,))
              ],
            ),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _categoryChip('ARTIFICIAL  INTELLIGENCE'),
            _categoryChip('LINGUISTICS'),
            _categoryChip('SOCIAL STUDIES'),
            _categoryChip('PHYSICS'),
            _categoryChip('ECONOMICS'),
            _categoryChip('LITERATURE'),
            _categoryChip('PHYSICAL EDUCATION'),
            _categoryChip('SOCIOLOGY'),
            _categoryChip('BIOLOGY'),
            _categoryChip('IT'),
            _categoryChip('HUMANITIES'),
            _categoryChip('CHEMISTRY'),
            _categoryChip('GEOGRAPHY'),
            _categoryChip('BUSINESS'),
          ],
        ),

        const SizedBox(height: 36),
      ],
    );
  }

  static Widget _categoryChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF4A1A1A)),
      ),
      child: Text(label, style: const TextStyle(color: Colors.white70, fontSize: 13)),
    );
  }
}
