import 'package:flutter/material.dart';

/// 성능 최적화를 위한 유틸리티 클래스
class PerformanceOptimizations {
  /// 위젯을 RepaintBoundary로 감싸서 불필요한 리페인트 방지
  static Widget withRepaintBoundary(Widget child) {
    return RepaintBoundary(child: child);
  }

  /// 위젯을 AutomaticKeepAliveClientMixin으로 감싸서 상태 유지
  static Widget withKeepAlive(Widget child) {
    return KeepAliveWrapper(child: child);
  }

  /// 이미지 프리로딩을 위한 유틸리티
  static Future<void> precacheImage(
      String imageUrl, BuildContext context) async {
    try {
      await precacheImage(NetworkImage(imageUrl) as String, context);
    } catch (e) {
      // 이미지 프리로딩 실패 시 무시
    }
  }

  /// 스크롤 성능 최적화를 위한 ScrollController 설정
  static ScrollController createOptimizedScrollController() {
    return ScrollController(
      keepScrollOffset: true,
      debugLabel: 'optimized_scroll',
    );
  }
}

/// KeepAlive를 위한 래퍼 위젯
class KeepAliveWrapper extends StatefulWidget {
  final Widget child;

  const KeepAliveWrapper({
    super.key,
    required this.child,
  });

  @override
  State<KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}

/// 지연 로딩을 위한 위젯
class LazyLoadWidget extends StatefulWidget {
  final Widget Function() builder;
  final Duration delay;

  const LazyLoadWidget({
    super.key,
    required this.builder,
    this.delay = const Duration(milliseconds: 100),
  });

  @override
  State<LazyLoadWidget> createState() => _LazyLoadWidgetState();
}

class _LazyLoadWidgetState extends State<LazyLoadWidget> {
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadDelayed();
  }

  void _loadDelayed() async {
    await Future.delayed(widget.delay);
    if (mounted) {
      setState(() {
        _isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoaded) {
      return const SizedBox.shrink();
    }
    return widget.builder();
  }
}
