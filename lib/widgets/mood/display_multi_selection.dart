import 'package:flutter/material.dart';
import 'package:trial0106/globals/globals.dart';
import 'package:trial0106/models/mood_select.dart';
import 'package:trial0106/models/moods.dart';
import 'package:trial0106/models/one_mood.dart';
import 'package:trial0106/widgets/mood/multi_select_chip2.dart';


class DisplayMultiSelection extends StatefulWidget {
  
  final MoodSelect items;
  final List<String> selectedChoices;

  const DisplayMultiSelection({Key? key, required this.items, required this.selectedChoices}) : super(key: key);

  @override
  _DisplayMultiSelectionState createState() => _DisplayMultiSelectionState();
}

class _DisplayMultiSelectionState extends State<DisplayMultiSelection> {




  @override
  Widget build(BuildContext context) {
    return MultiSelectChip(
      widget.items,
      widget.selectedChoices,

      onSelectionChanged: (selectedList) {
        setState(() {

          selectedDisplayMoods = [...selectedList];

        });
      },

      //TODO: what is our max selection? Do we need one?
      maxSelection: 5,
    );
  }
}
