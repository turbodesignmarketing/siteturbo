import 'package:flutter/material.dart';
import 'package:siteturbo/constans/image_constants.dart';
import 'package:siteturbo/theme/app_colors.dart';

class MetricsWidget extends StatefulWidget {
  final int playCount;
  final int heartCount;
  final int commentCount;
  final int sendCount;
  final int saveCount;
  const MetricsWidget({
    super.key,
    this.playCount = 0,
    this.heartCount = 0,
    this.commentCount = 0,
    this.sendCount = 0,
    this.saveCount = 0,
  });

  @override
  State<MetricsWidget> createState() => _MetricsWidgetState();
}

class _MetricsWidgetState extends State<MetricsWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late final Animation<int> playCountAnimation;
  late final Animation<int> heartCountAnimation;
  late final Animation<int> commentCountAnimation;
  late final Animation<int> sendCountAnimation;
  late final Animation<int> saveCountAnimation;

  @override
  initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 5,
      ),
    );

    _animationController.addListener(
      () {
        setState(() {});
      },
    );

    playCountAnimation = IntTween(begin: 0, end: widget.playCount).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(
          0,
          1,
          curve: Curves.easeInOutCubic,
        ),
      ),
    );

    heartCountAnimation = IntTween(begin: 0, end: widget.heartCount).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(
          0,
          1,
          curve: Curves.easeInOutCubic,
        ),
      ),
    );

    commentCountAnimation =
        IntTween(begin: 0, end: widget.commentCount).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(
          0,
          1,
          curve: Curves.easeInOutCubic,
        ),
      ),
    );

    sendCountAnimation = IntTween(begin: 0, end: widget.sendCount).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(
          0,
          1,
          curve: Curves.easeInOutCubic,
        ),
      ),
    );

    saveCountAnimation = IntTween(begin: 0, end: widget.saveCount).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: const Interval(
          0,
          1,
          curve: Curves.easeInOutCubic,
        ),
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _animationController.forward();
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      ImageConstans.play,
      ImageConstans.coracao,
      ImageConstans.chat,
      ImageConstans.send,
      ImageConstans.save,
    ];

    final List<int> numberList = [
      playCountAnimation.value,
      heartCountAnimation.value,
      commentCountAnimation.value,
      sendCountAnimation.value,
      saveCountAnimation.value,
    ];

    return Container(
      height: 77,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.turbogreen,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: imageList.map(
            (e) {
              int index = imageList.indexOf(e);
              return _buildIndicator(
                image: e,
                number: numberList[index],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

Widget _buildIndicator({required String image, required int number}) {
  return SizedBox(
    width: 60,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 16,
          height: 16,
          color: AppColors.turboWhite,
          filterQuality: FilterQuality.high,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          number.toString(),
          style: const TextStyle(
            color: AppColors.turboWhite,
            fontSize: 12,
            fontWeight: FontWeight.normal,
            fontFamily: 'SF Pro',
          ),
        )
      ],
    ),
  );
}
