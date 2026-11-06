import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

String formatTelsizDuration(Duration d) {
  String two(int n) => n.toString().padLeft(2, '0');
  final h = d.inHours;
  final m = d.inMinutes.remainder(60);
  final s = d.inSeconds.remainder(60);
  return h > 0 ? '$h:${two(m)}:${two(s)}' : '${two(m)}:${two(s)}';
}

/// Beyaz, 20 px köşeli, hafif gölgeli kart.
class TelsizCard extends StatelessWidget {
  final Widget child;
  const TelsizCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.06), blurRadius: 16, offset: const Offset(0, 6)),
        ],
      ),
      child: child,
    );
  }
}

/// Büyük yuvarlak buton: pasifken yeşil gradyan, aktifken kırmızı + nabız.
class TelsizBigButton extends StatefulWidget {
  final bool active;
  final bool busy;
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final double size;

  const TelsizBigButton({
    super.key,
    required this.active,
    required this.busy,
    required this.icon,
    required this.label,
    required this.onTap,
    this.size = 190,
  });

  @override
  State<TelsizBigButton> createState() => _TelsizBigButtonState();
}

class _TelsizBigButtonState extends State<TelsizBigButton> with SingleTickerProviderStateMixin {
  late final AnimationController _pulse =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 1400));

  @override
  void initState() {
    super.initState();
    _sync();
  }

  @override
  void didUpdateWidget(covariant TelsizBigButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    _sync();
  }

  void _sync() {
    if (widget.active && !widget.busy) {
      if (!_pulse.isAnimating) _pulse.repeat();
    } else {
      _pulse.stop();
      _pulse.value = 0;
    }
  }

  @override
  void dispose() {
    _pulse.dispose();
    super.dispose();
  }

  static const _redGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFEF5350), Color(0xFFC62828)],
  );

  @override
  Widget build(BuildContext context) {
    final size = widget.size;
    final color = widget.active ? AppColors.error : AppColors.primary;
    final outer = size * 1.3;
    return SizedBox(
      width: outer,
      height: outer,
      child: AnimatedBuilder(
        animation: _pulse,
        builder: (context, child) {
          final t = _pulse.value;
          return Stack(
            alignment: Alignment.center,
            children: [
              if (widget.active && !widget.busy)
                for (final offset in const [0.0, 0.5])
                  Builder(builder: (_) {
                    final p = (t + offset) % 1.0;
                    return Container(
                      width: size + (outer - size) * p,
                      height: size + (outer - size) * p,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color.withValues(alpha: 0.28 * (1 - p)),
                      ),
                    );
                  }),
              child!,
            ],
          );
        },
        child: Material(
          color: Colors.transparent,
          shape: const CircleBorder(),
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: widget.onTap,
            child: Ink(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: widget.active ? _redGradient : AppColors.primaryGradient,
                boxShadow: [BoxShadow(color: color.withValues(alpha: 0.4), blurRadius: 24, offset: const Offset(0, 10))],
              ),
              child: Opacity(
                opacity: widget.onTap == null && !widget.busy ? 0.6 : 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.busy)
                      SizedBox(
                        width: size * 0.25,
                        height: size * 0.25,
                        child: const CircularProgressIndicator(color: Colors.white, strokeWidth: 3),
                      )
                    else
                      Icon(widget.icon, color: Colors.white, size: size * 0.32),
                    SizedBox(height: size * 0.05),
                    Text(
                      widget.label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: math.max(14, size * 0.085),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Renkli nokta + metin rozeti; [pulsing] ise nokta yanıp söner.
class TelsizStatusChip extends StatefulWidget {
  final String text;
  final Color color;
  final bool pulsing;
  final bool dense;

  const TelsizStatusChip({
    super.key,
    required this.text,
    required this.color,
    this.pulsing = false,
    this.dense = false,
  });

  @override
  State<TelsizStatusChip> createState() => _TelsizStatusChipState();
}

class _TelsizStatusChipState extends State<TelsizStatusChip> with SingleTickerProviderStateMixin {
  late final AnimationController _blink =
      AnimationController(vsync: this, duration: const Duration(milliseconds: 900), lowerBound: 0.25);

  @override
  void initState() {
    super.initState();
    _sync();
  }

  @override
  void didUpdateWidget(covariant TelsizStatusChip oldWidget) {
    super.didUpdateWidget(oldWidget);
    _sync();
  }

  void _sync() {
    if (widget.pulsing) {
      if (!_blink.isAnimating) _blink.repeat(reverse: true);
    } else {
      _blink.stop();
      _blink.value = 1;
    }
  }

  @override
  void dispose() {
    _blink.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: widget.dense ? 10 : 14, vertical: widget.dense ? 5 : 8),
      decoration: BoxDecoration(
        color: widget.color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeTransition(
            opacity: _blink,
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle),
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              widget.text,
              style: TextStyle(
                color: widget.color,
                fontWeight: FontWeight.w600,
                fontSize: widget.dense ? 11 : 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TelsizStat extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const TelsizStat({super.key, required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 18, color: AppColors.primary),
            const SizedBox(width: 6),
            Text(label, style: const TextStyle(color: AppColors.textMuted, fontSize: 13)),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.text,
            fontFeatures: [FontFeature.tabularFigures()],
          ),
        ),
      ],
    );
  }
}

/// 0..1 ses seviyesi çubukları.
class TelsizLevelMeter extends StatelessWidget {
  final double level;
  final String label;
  static const int _bars = 24;

  const TelsizLevelMeter({super.key, required this.level, required this.label});

  @override
  Widget build(BuildContext context) {
    // Konuşma seviyesi genelde düşük; görünür olsun diye karekök ölçeği.
    final v = math.sqrt(level.clamp(0.0, 1.0));
    final lit = (v * _bars).round();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        const SizedBox(height: 8),
        SizedBox(
          height: 28,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              for (var i = 0; i < _bars; i++)
                Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    margin: const EdgeInsets.symmetric(horizontal: 1.5),
                    height: 8 + 20 * (0.5 + 0.5 * math.sin(i * 0.9)).abs(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: i < lit
                          ? (i > _bars * 0.8 ? AppColors.error : (i > _bars * 0.6 ? AppColors.accent : AppColors.primary))
                          : AppColors.divider,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class TelsizHint extends StatelessWidget {
  final IconData icon;
  final String text;
  const TelsizHint({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.primary, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text, style: const TextStyle(color: AppColors.primaryDark, fontSize: 13, height: 1.4)),
          ),
        ],
      ),
    );
  }
}
