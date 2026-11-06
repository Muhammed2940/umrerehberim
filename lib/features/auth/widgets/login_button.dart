import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/locale_provider.dart';
import '../providers/login_provider.dart';

/// Giriş butonu. Yüklenirken devre dışı kalır ve gösterge gösterir.
class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? label;

  const LoginButton({super.key, required this.onPressed, this.label});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (context, login, _) => SizedBox(
        width: double.infinity,
        height: 54,
        child: ElevatedButton(
          onPressed: login.isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
          ),
          child: login.isLoading
              ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2.5, color: Colors.white),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(label ?? context.l10n.authLoginButton),
                    const SizedBox(width: 8),
                    const Icon(Icons.arrow_forward_rounded),
                  ],
                ),
        ),
      ),
    );
  }
}
