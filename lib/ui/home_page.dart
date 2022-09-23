import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_app/color_schemes.g.dart';
import 'package:theme_app/ui/widgets/svg_icon.dart';
import 'package:theme_app/utils/assets.dart';
import 'package:theme_app/utils/labels.dart';

import 'widgets/task_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final style = theme.textTheme;
    return Scaffold(
      backgroundColor: scheme.surfaceVariant,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (v) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(Assets.oneFourth),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Home",
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Labels.welcomeBack,
                          style: TextStyle(color: scheme.outline),
                        ),
                        Text(
                          Labels.carolinaTerner,
                          style: style.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(Assets.photo),
                      ),
                      Transform.translate(
                        offset: Offset(-20, 20),
                        child: CircleAvatar(
                          backgroundColor: scheme.surfaceVariant,
                          radius: 12,
                          child: CircleAvatar(
                            backgroundColor: scheme.onSurface,
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 12),
                            ),
                            foregroundColor: scheme.surface,
                            radius: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: ListView(
                      children: [
                        const SizedBox(height: 16 + 28),
                        Padding(
                          padding: const EdgeInsets.all(24),
                          child: Text(
                            Labels.taskBasedExplanation,
                            style: style.headlineSmall,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: {
                              Labels.addTask: Labels.creatives,
                              Labels.review: Labels.verificationProcess,
                              Labels.flowList: Labels.creatives,
                            }
                                .entries
                                .map(
                                  (e) => e.key == Labels.addTask
                                      ? Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: DottedBorder(
                                            color: scheme.outline,
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(16),
                                            dashPattern: [4],
                                            child: TaskCard(e: e),
                                          ),
                                        )
                                      : TaskCard(e: e),
                                )
                                .toList(),
                          ),
                        ),
                        SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 8),
                              child: Text(
                                Labels.flowList,
                                style: style.headlineSmall,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: CupertinoButton(
                                onPressed: () {},
                                child: Text(Labels.seeAll),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: {
                            Labels.documentVerification: Labels.minutesAgo(3),
                            Labels.newbieOnboarding: Labels.daysAgo(5),
                            Labels.addTask: Labels.daysAgo(5),
                            Labels.carolinaTerner: Labels.daysAgo(5),
                            Labels.getStarted: Labels.daysAgo(5),
                          }
                              .entries
                              .map(
                                (e) => Column(
                                  children: [
                                    ListTile(
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 24),
                                      title: Text(
                                        e.key,
                                      ),
                                      subtitle: Text(e.value),
                                    ),
                                    Divider(thickness: 1, indent: 24)
                                  ],
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: scheme.surface,
                      shadows: [
                        BoxShadow(blurRadius: 16, color: theme.shadowColor),
                      ],
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: Labels.tryToFind,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
