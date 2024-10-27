// import 'package:flutter/material.dart';
//
// class MenuOption extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final String detailContent; // محتوى التفاصيل
//   final Function(String) onSelect; // Callback لتحديث المحتوى
//
//   const MenuOption({
//     super.key,
//     required this.icon,
//     required this.label,
//     required this.detailContent,
//     required this.onSelect, // إضافة Callback
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         onSelect(detailContent); // استدعاء الـ Callback مع المحتوى
//       },
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.purple[400],
//           borderRadius: BorderRadius.circular(15),
//         ),
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Icon(
//               icon,
//               color: Colors.white,
//               size: 32,
//             ),
//             const SizedBox(height: 4),
//             Text(
//               label,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 12,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
