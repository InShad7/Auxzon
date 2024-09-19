import 'package:flutter/material.dart';

import '../../utils/font_style.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text:
            'This beef burger uses 100% quality beef with sliced tomatoues, cucumbers, vegetables and onions...',
        style: AppFontStyle.font15Grey,
        children: [
          TextSpan(
            text: 'Read more',
            style: AppFontStyle.font14RedW400Poppins,
          ),
        ],
      ),
    );
  }
}
