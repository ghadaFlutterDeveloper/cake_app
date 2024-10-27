// import 'package:flutter/material.dart';
//
// class CakeOption extends StatelessWidget {
//   final Image image ;
//   final String title;
//   final String subtitle;
//   final String details;
//   final String price;
//
//   const CakeOption({
//     super.key,
//     required this.title,
//     required this.subtitle,
//     required this.details,
//     required this.price,
//     required this.image
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.pink[50],
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset('assets/images/images.jpg', height: 80),
//           const SizedBox(height: 8),
//           Text(
//             title,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16,
//             ),
//           ),
//           Text(
//             subtitle,
//             style: TextStyle(color: Colors.grey[600], fontSize: 14),
//           ),
//           Text(
//             details,
//             style: TextStyle(color: Colors.grey[600], fontSize: 14),
//           ),
//           Text(
//             price,
//             style: TextStyle(
//               color: Colors.purple[400],
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
