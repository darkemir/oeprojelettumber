import 'package:flutter/material.dart';
import 'package:lettumber/input_page_cucumber.dart';
import 'package:lettumber/input_page_lettuce.dart';

class CalculatingTime {
  final PlantStyle selectedplantStyle;
  final CucumberType selectedcucumberType;
  final NutrientPercentage selectednutrientPercentage;
  final VcPercentage selectedvcPercentage;
  CalculatingTime(
      {this.selectedplantStyle,
      this.selectedcucumberType,
      this.selectednutrientPercentage,
      this.selectedvcPercentage});

  String cucumberCalculate() {
    if (selectedplantStyle == PlantStyle.soil &&
        selectedcucumberType == CucumberType.armenian) {
      return 'According to our model your cucumber\'s height will be 85.5 mm';
    } else if (selectedplantStyle == PlantStyle.hydroponic &&
        selectedcucumberType == CucumberType.armenian) {
      return 'According to our model your cucumber\'s height will be 163.5 mm';
    } else if (selectedplantStyle == PlantStyle.soil &&
        selectedcucumberType == CucumberType.normal) {
      return 'According to our model your cucumber\'s height will be 99.5 mm';
    } else if (selectedplantStyle == PlantStyle.hydroponic &&
        selectedcucumberType == CucumberType.normal) {
      return 'According to our model your cucumber\'s height will be 168 mm';
    }
    return null;
  }

  String lettuceCalculate() {
    if (selectedvcPercentage == VcPercentage.onedotsixPercent &&
        selectednutrientPercentage == NutrientPercentage.twentyfivePercent) {
      return 'According to our model your lettuce\'s yield will be 220 grams';
    } else if (selectedvcPercentage == VcPercentage.onedotsixPercent &&
        selectednutrientPercentage == NutrientPercentage.fiftyPercent) {
      return 'According to our model your lettuce\'s yield will be 270 grams';
    } else if (selectedvcPercentage == VcPercentage.threedottwoPercent &&
        selectednutrientPercentage == NutrientPercentage.twentyfivePercent) {
      return 'According to our model your lettuce\'s yield will be 290 grams';
    } else if (selectedvcPercentage == VcPercentage.threedottwoPercent &&
        selectednutrientPercentage == NutrientPercentage.fiftyPercent) {
      return 'According to our model your lettuce\'s yield will be 280 grams';
    }
    return null;
  }
}
