import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_app/ui/home_page.dart';
import 'package:theme_app/ui/widgets/svg_icon.dart';
import 'package:theme_app/utils/assets.dart';
import 'package:theme_app/utils/labels.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final style = theme.textTheme;
    return Scaffold(
      backgroundColor: scheme.primaryContainer,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CircleAvatar(
            backgroundColor: scheme.surface,
            child: const ImageIcon(
              AssetImage(Assets.dashboard),
              size: 16,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              const AssetImage(Assets.menuIcon),
              color: scheme.onSurface,
            ),
            color: scheme.onPrimaryContainer,
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: Labels.market,
                  style: style.displayMedium!
                      .copyWith(color: scheme.onPrimaryContainer),
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                        child: CircleAvatar(
                          backgroundColor: scheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: Labels.yourGrowth,
                    )
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  margin: EdgeInsets.all(24),
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: scheme.surface,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(EdgeInsets.only(left: 20))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(Labels.getStarted),
                    Padding(
                      padding: const EdgeInsets.all(8.0).copyWith(left: 20),
                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: scheme.surface,
                        child: Icon(
                          Icons.arrow_forward,
                          color: scheme.onSurface,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
