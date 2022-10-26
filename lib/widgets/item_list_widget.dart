import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  Map<String, dynamic> item;

  ItemListWidget({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 9.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
        boxShadow: [
          BoxShadow(
              color: const Color(0xff3D4584).withOpacity(0.11),
              blurRadius: 12.0,
              offset: const Offset(0, 7.0)),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: const Color(0xff3D4584).withOpacity(0.12),
            ),
            child: const Icon(
              Icons.arrow_upward,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["type"],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Text(
                  item["description"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 11.0,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          ),
          const Text(
            "\$150",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
