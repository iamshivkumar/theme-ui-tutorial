import 'dart:math';

import 'package:flutter/material.dart';
import 'package:morphable_shape/morphable_shape.dart';
import 'package:theme_app/utils/assets.dart';

import 'widgets/app_polygon.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final style = theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Overview"),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (context) => [],
            onSelected: (value) {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: AppPolygon(
                      radius: 240,
                      child: AppPolygon(
                        radius: 180,
                        child: AppPolygon(
                          radius: 120,
                          child: Container(
                            height: 140,
                            width: 140,
                            decoration: ShapeDecoration(
                              color: Colors.green.shade100,
                              shape: PolygonShapeBorder(
                                sides: 6,
                                cornerRadius: 40.toPercentLength,
                                cornerStyle: CornerStyle.rounded,
                              ),
                              image: const DecorationImage(
                                image: AssetImage(Assets.photo),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 2,
                            child: Row(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(24),
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: scheme.primaryContainer,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  "Performance",
                                                  style: TextStyle(
                                                      color: scheme
                                                          .onPrimaryContainer),
                                                ),
                                                const SizedBox(height: 4),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: List.generate(
                                                    8,
                                                    (index) => Container(
                                                      margin: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 4),
                                                      height: 28,
                                                      width: 4,
                                                      decoration:
                                                          ShapeDecoration(
                                                        shape:
                                                            const StadiumBorder(),
                                                        color: scheme
                                                            .onPrimaryContainer
                                                            .withOpacity(0.2),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                ShapeDecoration(
                                                              shape:
                                                                  const StadiumBorder(),
                                                              color: scheme
                                                                  .onPrimaryContainer,
                                                            ),
                                                            height: Random()
                                                                .nextInt(28)
                                                                .toDouble(),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Center(
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: scheme.secondary,
                                      foregroundColor: scheme.onSecondary,
                                      child: const Icon(Icons.analytics),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AspectRatio(
                            aspectRatio: 2,
                            child: Row(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Center(
                                    child: CircleAvatar(
                                      radius: 24,
                                      backgroundColor: scheme.secondary,
                                      foregroundColor: scheme.onSecondary,
                                      child: Icon(Icons.group),
                                    ),
                                  ),
                                ),
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(24),
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: scheme.primaryContainer,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      "23",
                                                      style: style.titleMedium!.copyWith(
                                                        color: scheme
                                                            .onPrimaryContainer,
                                                        
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Transform.rotate(
                                                      angle: -pi/4,
                                                      child: const Icon(
                                                        Icons.arrow_forward,
                                                        size: 20,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  "Better results",
                                                  style: TextStyle(
                                                    color: scheme.onPrimaryContainer.withOpacity(0.8)
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24).copyWith(top: 28),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: scheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(24).copyWith(top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Great results so far!",
                            style: style.titleLarge!
                                .copyWith(color: scheme.onSecondary),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Do you want to full history or send the message to this member",
                            style: style.bodyLarge!.copyWith(
                                color: scheme.onSecondary.withOpacity(0.5)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  child: SizedBox(
                    height: 56,
                    width: 56,
                    child: RawMaterialButton(
                      shape: const CircleBorder(),
                      fillColor: scheme.primaryContainer,
                      onPressed: () {},
                      child: const Icon(
                        Icons.star_rounded,
                        size: 32,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 36,
                  right: 24,
                  child: IconButton(
                    color: scheme.surface,
                    onPressed: () {},
                    icon: Icon(Icons.close),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
