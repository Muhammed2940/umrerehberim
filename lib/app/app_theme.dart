import 'package:flutter/material.dart';

/// Kartlarda kullanılan ortak gölgeli kutu.
BoxDecoration get cardDecoration => BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: const [BoxShadow(color: Color(0x14000000), blurRadius: 12, offset: Offset(0, 4))],
    );
