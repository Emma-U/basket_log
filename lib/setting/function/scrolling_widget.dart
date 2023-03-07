import 'package:basket_log/setting/function/model.dart';
import 'package:basket_log/setting/utilies/constant.dart';
import 'package:flutter/material.dart';

class ScrollingWidget extends StatefulWidget {
  const ScrollingWidget({
    super.key,
  });

  @override
  State<ScrollingWidget> createState() => _ScrollingWidgetState();
}

class _ScrollingWidgetState extends State<ScrollingWidget> {
  bool isExpanded = true;

  String? selectedIndex = 'Choose your team';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isExpanded ? kColor6 : kColor4,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: ExpansionTile(
        onExpansionChanged: (value) {
          isExpanded = value;
          setState(() {
            isExpanded ? selectedIndex! : value;
          });
        },
        title: Text(
          selectedIndex!,
          style: TextStyle(
            color: isExpanded ? kColor4 : kColor1,
            fontSize: 20,
          ),
        ),
        trailing: isExpanded
            ? const Icon(
                Icons.arrow_drop_down_circle,
                color: kColor4,
              )
            : const Icon(Icons.arrow_drop_down),
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(color: kColor4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScrollbarTheme(
                data: const ScrollbarThemeData(
                    thumbColor: MaterialStatePropertyAll(kColor6)),
                child: Scrollbar(
                  scrollbarOrientation: ScrollbarOrientation.right,
                  thumbVisibility: true,
                  thickness: 10,
                  radius: const Radius.circular(100),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final teams = team[index];
                        return ListTile(
                          visualDensity: VisualDensity.adaptivePlatformDensity,
                          title: Text(teams.name),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(teams.image),
                          ),
                          onTap: () {
                            setState(() {
                              String typesTeam = teams.name;
                              selectedIndex = typesTeam;
                            });
                          },
                        );
                      },
                      itemCount: team.length),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
