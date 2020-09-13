import 'package:flutter/material.dart';

class MyColors {
  Color color;
  String colorCode;
  String colorNum;
  bool isLight;

  MyColors({
    this.color,
    this.colorCode,
    this.colorNum,
    this.isLight,
  });

  //Color names
  List<String> getColorNames() {
    return <String>[
      "RED",
      "PINK",
      "PURPLE",
      "DEEP PURPLE",
      "INDIGO",
      "BLUE",
      "LIGHT BLUE",
      "CYAN",
      "TEAL",
      "GREEN",
      "LIGHT GREEN",
      "LIME",
      "YELLOW",
      "AMBER",
      "ORANGE",
      "DEEP ORANGE",
      "BROWN",
      "GREY",
      "BLUE GREY",
    ];
  }

  //red
  getRedColor() {
    return <MyColors>[
      MyColors(
          color: Colors.red[50],
          colorNum: "50",
          colorCode: "#FFEBEE",
          isLight: true),
      MyColors(
          color: Colors.red[100],
          colorNum: "100",
          colorCode: "#FFCDD2",
          isLight: true),
      MyColors(
          color: Colors.red[200],
          colorNum: "200",
          colorCode: "#EF9A9A",
          isLight: true),
      MyColors(
          color: Colors.red[300],
          colorNum: "300",
          colorCode: "#E573730",
          isLight: true),
      MyColors(
          color: Colors.red[400],
          colorNum: "400",
          colorCode: "#EF5350",
          isLight: false),
      MyColors(
          color: Colors.red[500],
          colorNum: "500",
          colorCode: "#F44336",
          isLight: false),
      MyColors(
          color: Colors.red[600],
          colorNum: "600",
          colorCode: "#E53935",
          isLight: false),
      MyColors(
          color: Colors.red[700],
          colorNum: "700",
          colorCode: "#D32F2F",
          isLight: false),
      MyColors(
          color: Colors.red[800],
          colorNum: "800",
          colorCode: "#C62828",
          isLight: false),
      MyColors(
          color: Colors.red[900],
          colorNum: "900",
          colorCode: "#B71C1C",
          isLight: false),
      MyColors(
          color: Colors.redAccent[100],
          colorNum: "A100",
          colorCode: "#FF8A80",
          isLight: true),
      MyColors(
          color: Colors.redAccent,
          colorNum: "A200",
          colorCode: "#FF5252",
          isLight: false),
      MyColors(
          color: Colors.redAccent[400],
          colorNum: "A400",
          colorCode: "#FF1744",
          isLight: false),
      MyColors(
          color: Colors.redAccent[700],
          colorNum: "A700",
          colorCode: "#D50000",
          isLight: false),
    ];
  }

  //pink
  getPinkColor() {
    return [
      MyColors(
          color: Colors.pink[50],
          colorNum: "50",
          colorCode: "#FCE4EC",
          isLight: true),
      MyColors(
          color: Colors.pink[100],
          colorNum: "100",
          colorCode: "#F8BBD0",
          isLight: true),
      MyColors(
          color: Colors.pink[200],
          colorNum: "200",
          colorCode: "#F48FB1",
          isLight: true),
      MyColors(
          color: Colors.pink[300],
          colorNum: "300",
          colorCode: "#F06292",
          isLight: true),
      MyColors(
          color: Colors.pink[400],
          colorNum: "400",
          colorCode: "#EC407A",
          isLight: false),
      MyColors(
          color: Colors.pink[500],
          colorNum: "500",
          colorCode: "#E91E63",
          isLight: false),
      MyColors(
          color: Colors.pink[600],
          colorNum: "600",
          colorCode: "#D81B60",
          isLight: false),
      MyColors(
          color: Colors.pink[700],
          colorNum: "700",
          colorCode: "#C2185B",
          isLight: false),
      MyColors(
          color: Colors.pink[800],
          colorNum: "800",
          colorCode: "#AD1457",
          isLight: false),
      MyColors(
          color: Colors.pink[900],
          colorNum: "900",
          colorCode: "#880E4F",
          isLight: false),
      MyColors(
          color: Colors.pinkAccent[100],
          colorNum: "A100",
          colorCode: "#FF80AB",
          isLight: true),
      MyColors(
          color: Colors.pinkAccent,
          colorNum: "A200",
          colorCode: "#FF4081",
          isLight: false),
      MyColors(
          color: Colors.pinkAccent[400],
          colorNum: "A400",
          colorCode: "#F50057",
          isLight: false),
      MyColors(
          color: Colors.pinkAccent[700],
          colorNum: "A700",
          colorCode: "#C51162",
          isLight: false),
    ];
  }

  //purple
  getPurpleColor() {
    return [
      MyColors(
          color: Colors.purple[50],
          colorNum: "50",
          colorCode: "#F3E5F5",
          isLight: true),
      MyColors(
          color: Colors.purple[100],
          colorNum: "100",
          colorCode: "#E1BEE7",
          isLight: true),
      MyColors(
          color: Colors.purple[200],
          colorNum: "200",
          colorCode: "#CE93D8",
          isLight: true),
      MyColors(
          color: Colors.purple[300],
          colorNum: "300",
          colorCode: "#BA68C8",
          isLight: false),
      MyColors(
          color: Colors.purple[400],
          colorNum: "400",
          colorCode: "#AB47BC",
          isLight: false),
      MyColors(
          color: Colors.purple[500],
          colorNum: "500",
          colorCode: "#9C27B0",
          isLight: false),
      MyColors(
          color: Colors.purple[600],
          colorNum: "600",
          colorCode: "#8E24AA",
          isLight: false),
      MyColors(
          color: Colors.purple[700],
          colorNum: "700",
          colorCode: "#7B1FA2",
          isLight: false),
      MyColors(
          color: Colors.purple[800],
          colorNum: "800",
          colorCode: "#6A1B9A",
          isLight: false),
      MyColors(
          color: Colors.purple[900],
          colorNum: "900",
          colorCode: "#4A148C",
          isLight: false),
      MyColors(
          color: Colors.purpleAccent[100],
          colorNum: "A100",
          colorCode: "#EA80FC",
          isLight: true),
      MyColors(
          color: Colors.purpleAccent,
          colorNum: "A200",
          colorCode: "#E040FB",
          isLight: false),
      MyColors(
          color: Colors.purpleAccent[400],
          colorNum: "A400",
          colorCode: "#D500F9",
          isLight: false),
      MyColors(
          color: Colors.purpleAccent[700],
          colorNum: "A700",
          colorCode: "#AA00FF",
          isLight: false),
    ];
  }

  //deeppurple
  getDeepPurpleColor() {
    return [
      MyColors(
          color: Colors.deepPurple[50],
          colorNum: "50",
          colorCode: "#EDE7F6",
          isLight: true),
      MyColors(
          color: Colors.deepPurple[100],
          colorNum: "100",
          colorCode: "#D1C4E9",
          isLight: true),
      MyColors(
          color: Colors.deepPurple[200],
          colorNum: "200",
          colorCode: "#B39DDB",
          isLight: true),
      MyColors(
          color: Colors.deepPurple[300],
          colorNum: "300",
          colorCode: "#9575CD",
          isLight: false),
      MyColors(
          color: Colors.deepPurple[400],
          colorNum: "400",
          colorCode: "#7E57C2",
          isLight: false),
      MyColors(
          color: Colors.deepPurple[500],
          colorNum: "500",
          colorCode: "#673AB7",
          isLight: false),
      MyColors(
          color: Colors.deepPurple[600],
          colorNum: "600",
          colorCode: "#5E35B1",
          isLight: false),
      MyColors(
          color: Colors.deepPurple[700],
          colorNum: "700",
          colorCode: "#512DA8",
          isLight: false),
      MyColors(
          color: Colors.deepPurple[800],
          colorNum: "800",
          colorCode: "#4527A0",
          isLight: false),
      MyColors(
          color: Colors.deepPurple[900],
          colorNum: "900",
          colorCode: "#311B92",
          isLight: false),
      MyColors(
          color: Colors.deepPurpleAccent[100],
          colorNum: "A100",
          colorCode: "#B388FF",
          isLight: true),
      MyColors(
          color: Colors.deepPurpleAccent,
          colorNum: "A200",
          colorCode: "#7C4DFF",
          isLight: false),
      MyColors(
          color: Colors.deepPurpleAccent[400],
          colorNum: "A400",
          colorCode: "#651FFF",
          isLight: false),
      MyColors(
          color: Colors.deepPurpleAccent[700],
          colorNum: "A700",
          colorCode: "#6200EA",
          isLight: false),
    ];
  }

  //indigo
  getIndigo() {
    return [
      MyColors(
          color: Colors.indigo[50],
          colorNum: "50",
          colorCode: "#E8EAF6",
          isLight: true),
      MyColors(
          color: Colors.indigo[100],
          colorNum: "100",
          colorCode: "#C5CAE9",
          isLight: true),
      MyColors(
          color: Colors.indigo[200],
          colorNum: "200",
          colorCode: "#9FA8DA",
          isLight: true),
      MyColors(
          color: Colors.indigo[300],
          colorNum: "300",
          colorCode: "#7986CB",
          isLight: false),
      MyColors(
          color: Colors.indigo[400],
          colorNum: "400",
          colorCode: "#5C6BC0",
          isLight: false),
      MyColors(
          color: Colors.indigo[500],
          colorNum: "500",
          colorCode: "#3F51B5",
          isLight: false),
      MyColors(
          color: Colors.indigo[600],
          colorNum: "600",
          colorCode: "#3949AB",
          isLight: false),
      MyColors(
          color: Colors.indigo[700],
          colorNum: "700",
          colorCode: "#303F9F",
          isLight: false),
      MyColors(
          color: Colors.indigo[800],
          colorNum: "800",
          colorCode: "#283593",
          isLight: false),
      MyColors(
          color: Colors.indigo[900],
          colorNum: "900",
          colorCode: "#1A237E",
          isLight: false),
      MyColors(
          color: Colors.indigoAccent[100],
          colorNum: "A100",
          colorCode: "#8C9EFF",
          isLight: true),
      MyColors(
          color: Colors.indigoAccent,
          colorNum: "A200",
          colorCode: "#536DFE",
          isLight: false),
      MyColors(
          color: Colors.indigoAccent[400],
          colorNum: "A400",
          colorCode: "#3D5AFE",
          isLight: false),
      MyColors(
          color: Colors.indigoAccent[700],
          colorNum: "A700",
          colorCode: "#304FFE",
          isLight: false),
    ];
  }

  //blue
  getBlue() {
    return [
      MyColors(
          color: Colors.blue[50],
          colorNum: "50",
          colorCode: "#E3F2FD",
          isLight: true),
      MyColors(
          color: Colors.blue[100],
          colorNum: "100",
          colorCode: "#BBDEFB",
          isLight: true),
      MyColors(
          color: Colors.blue[200],
          colorNum: "200",
          colorCode: "#90CAF9",
          isLight: true),
      MyColors(
          color: Colors.blue[300],
          colorNum: "300",
          colorCode: "#64B5F6",
          isLight: true),
      MyColors(
          color: Colors.blue[400],
          colorNum: "400",
          colorCode: "#42A5F5",
          isLight: true),
      MyColors(
          color: Colors.blue[500],
          colorNum: "500",
          colorCode: "#2196F3",
          isLight: true),
      MyColors(
          color: Colors.blue[600],
          colorNum: "600",
          colorCode: "#1E88E5",
          isLight: false),
      MyColors(
          color: Colors.blue[700],
          colorNum: "700",
          colorCode: "#1976D2",
          isLight: false),
      MyColors(
          color: Colors.blue[800],
          colorNum: "800",
          colorCode: "#1565C0",
          isLight: false),
      MyColors(
          color: Colors.blue[900],
          colorNum: "900",
          colorCode: "#0D47A1",
          isLight: false),
      MyColors(
          color: Colors.blue[100],
          colorNum: "A100",
          colorCode: "#82B1FF",
          isLight: true),
      MyColors(
        color: Colors.blue,
        colorNum: "A200",
        colorCode: "#448AFF",
        isLight: false,
      ),
      MyColors(
          color: Colors.blue[400],
          colorNum: "A400",
          colorCode: "#2979FF",
          isLight: false),
      MyColors(
          color: Colors.blue[700],
          colorNum: "A700",
          colorCode: "#2962FF",
          isLight: false),
    ];
  }

  //lightblue
  getLightBlue() {
    return [
      MyColors(
          color: Colors.lightBlue[50],
          colorNum: "50",
          colorCode: "#E1F5FE",
          isLight: true),
      MyColors(
          color: Colors.lightBlue[100],
          colorNum: "100",
          colorCode: "#B3E5FC",
          isLight: true),
      MyColors(
          color: Colors.lightBlue[200],
          colorNum: "200",
          colorCode: "#81D4fA",
          isLight: true),
      MyColors(
          color: Colors.lightBlue[300],
          colorNum: "300",
          colorCode: "#4fC3F7",
          isLight: true),
      MyColors(
          color: Colors.lightBlue[400],
          colorNum: "400",
          colorCode: "#29B6FC",
          isLight: true),
      MyColors(
          color: Colors.lightBlue[500],
          colorNum: "500",
          colorCode: "#03A9F4",
          isLight: true),
      MyColors(
          color: Colors.lightBlue[600],
          colorNum: "600",
          colorCode: "#039BE5",
          isLight: true),
      MyColors(
          color: Colors.lightBlue[700],
          colorNum: "700",
          colorCode: "#0288D1",
          isLight: false),
      MyColors(
          color: Colors.lightBlue[800],
          colorNum: "800",
          colorCode: "#0277BD",
          isLight: false),
      MyColors(
          color: Colors.lightBlue[900],
          colorNum: "900",
          colorCode: "#01579B",
          isLight: false),
      MyColors(
          color: Colors.lightBlueAccent[100],
          colorNum: "A100",
          colorCode: "#80D8FF",
          isLight: true),
      MyColors(
          color: Colors.lightBlueAccent,
          colorNum: "A200",
          colorCode: "#40C4FF",
          isLight: false),
      MyColors(
          color: Colors.lightBlueAccent[400],
          colorNum: "A400",
          colorCode: "#00B0FF",
          isLight: false),
      MyColors(
          color: Colors.lightBlueAccent[700],
          colorNum: "A700",
          colorCode: "#0091EA",
          isLight: false),
    ];
  }

  //cyan
  getCyan() {
    return [
      MyColors(
          color: Colors.cyan[50],
          colorNum: "50",
          colorCode: "#E0F7FA",
          isLight: true),
      MyColors(
          color: Colors.cyan[100],
          colorNum: "100",
          colorCode: "#B2EBF2",
          isLight: true),
      MyColors(
          color: Colors.cyan[200],
          colorNum: "200",
          colorCode: "#80DEEA",
          isLight: true),
      MyColors(
          color: Colors.cyan[300],
          colorNum: "300",
          colorCode: "#4DD0E1",
          isLight: true),
      MyColors(
          color: Colors.cyan[400],
          colorNum: "400",
          colorCode: "#26C6DA",
          isLight: true),
      MyColors(
          color: Colors.cyan[500],
          colorNum: "500",
          colorCode: "#00BCD4",
          isLight: true),
      MyColors(
          color: Colors.cyan[600],
          colorNum: "600",
          colorCode: "#00ACC1",
          isLight: true),
      MyColors(
          color: Colors.cyan[700],
          colorNum: "700",
          colorCode: "#0097A7",
          isLight: false),
      MyColors(
          color: Colors.cyan[800],
          colorNum: "800",
          colorCode: "#00838F",
          isLight: false),
      MyColors(
          color: Colors.cyan[900],
          colorNum: "900",
          colorCode: "#006064",
          isLight: false),
      MyColors(
          color: Colors.cyanAccent[100],
          colorNum: "A100",
          colorCode: "#84FFFF",
          isLight: true),
      MyColors(
          color: Colors.cyanAccent,
          colorNum: "A200",
          colorCode: "#18FFFF",
          isLight: true),
      MyColors(
          color: Colors.cyanAccent[400],
          colorNum: "A400",
          colorCode: "#00E5FF",
          isLight: true),
      MyColors(
          color: Colors.cyanAccent[700],
          colorNum: "A700",
          colorCode: "#00B8D4",
          isLight: true),
    ];
  }

  //teal
  getTeal() {
    return [
      MyColors(
          color: Colors.teal[50],
          colorNum: "50",
          colorCode: "#E0F2F1",
          isLight: true),
      MyColors(
          color: Colors.teal[100],
          colorNum: "100",
          colorCode: "#B2DFDB",
          isLight: true),
      MyColors(
          color: Colors.teal[200],
          colorNum: "200",
          colorCode: "#80CBC4",
          isLight: true),
      MyColors(
          color: Colors.teal[300],
          colorNum: "300",
          colorCode: "#4DB6AC",
          isLight: true),
      MyColors(
          color: Colors.teal[400],
          colorNum: "400",
          colorCode: "#26A69A",
          isLight: true),
      MyColors(
          color: Colors.teal[500],
          colorNum: "500",
          colorCode: "#009688",
          isLight: false),
      MyColors(
          color: Colors.teal[600],
          colorNum: "600",
          colorCode: "#00897B",
          isLight: false),
      MyColors(
          color: Colors.teal[700],
          colorNum: "700",
          colorCode: "#00796B",
          isLight: false),
      MyColors(
          color: Colors.teal[800],
          colorNum: "800",
          colorCode: "#00695C",
          isLight: false),
      MyColors(
          color: Colors.teal[900],
          colorNum: "900",
          colorCode: "#004D40",
          isLight: false),
      MyColors(
          color: Colors.tealAccent[100],
          colorNum: "A100",
          colorCode: "#A7FFEB",
          isLight: true),
      MyColors(
          color: Colors.tealAccent,
          colorNum: "A200",
          colorCode: "#64FFDA",
          isLight: true),
      MyColors(
          color: Colors.tealAccent[400],
          colorNum: "A400",
          colorCode: "#1DE9B6",
          isLight: true),
      MyColors(
          color: Colors.tealAccent[700],
          colorNum: "A700",
          colorCode: "#00BFA5",
          isLight: true),
    ];
  }

  //green
  getGreen() {
    return [
      MyColors(
          color: Colors.green[50],
          colorNum: "50",
          colorCode: "#E8F5E9",
          isLight: true),
      MyColors(
          color: Colors.green[100],
          colorNum: "100",
          colorCode: "#C8E6C9",
          isLight: true),
      MyColors(
          color: Colors.green[200],
          colorNum: "200",
          colorCode: "#A5D6A7",
          isLight: true),
      MyColors(
          color: Colors.green[300],
          colorNum: "300",
          colorCode: "#81C784",
          isLight: true),
      MyColors(
          color: Colors.green[400],
          colorNum: "400",
          colorCode: "#66BB6A",
          isLight: true),
      MyColors(
          color: Colors.green[500],
          colorNum: "500",
          colorCode: "#4CAF50",
          isLight: true),
      MyColors(
          color: Colors.green[600],
          colorNum: "600",
          colorCode: "#43A047",
          isLight: false),
      MyColors(
          color: Colors.green[700],
          colorNum: "700",
          colorCode: "#388E3C",
          isLight: false),
      MyColors(
          color: Colors.green[800],
          colorNum: "800",
          colorCode: "#2E7D32",
          isLight: false),
      MyColors(
          color: Colors.green[900],
          colorNum: "900",
          colorCode: "#1B5E20",
          isLight: false),
      MyColors(
          color: Colors.greenAccent[100],
          colorNum: "A100",
          colorCode: "#B9F6CA",
          isLight: true),
      MyColors(
          color: Colors.greenAccent,
          colorNum: "A200",
          colorCode: "#69F0AE",
          isLight: true),
      MyColors(
          color: Colors.greenAccent[400],
          colorNum: "A400",
          colorCode: "#00E676",
          isLight: true),
      MyColors(
          color: Colors.greenAccent[700],
          colorNum: "A700",
          colorCode: "#00C853",
          isLight: true),
    ];
  }

  //lightgreen
  getLightGreen() {
    return [
      MyColors(
          color: Colors.lightGreen[50],
          colorNum: "50",
          colorCode: "#F1F8E9",
          isLight: true),
      MyColors(
          color: Colors.lightGreen[100],
          colorNum: "100",
          colorCode: "#DCEDC8",
          isLight: true),
      MyColors(
          color: Colors.lightGreen[200],
          colorNum: "200",
          colorCode: "#C5E1A5",
          isLight: true),
      MyColors(
          color: Colors.lightGreen[300],
          colorNum: "300",
          colorCode: "#AED581",
          isLight: true),
      MyColors(
          color: Colors.lightGreen[400],
          colorNum: "400",
          colorCode: "#9CCC65",
          isLight: true),
      MyColors(
          color: Colors.lightGreen[500],
          colorNum: "500",
          colorCode: "#8BC34A",
          isLight: true),
      MyColors(
          color: Colors.lightGreen[600],
          colorNum: "600",
          colorCode: "#7CB342",
          isLight: true),
      MyColors(
          color: Colors.lightGreen[700],
          colorNum: "700",
          colorCode: "#689F38",
          isLight: true),
      MyColors(
          color: Colors.lightGreen[800],
          colorNum: "800",
          colorCode: "#558B2F",
          isLight: false),
      MyColors(
          color: Colors.lightGreen[900],
          colorNum: "900",
          colorCode: "#33691E",
          isLight: false),
      MyColors(
          color: Colors.lightGreenAccent[100],
          colorNum: "A100",
          colorCode: "#CCFF90",
          isLight: false),
      MyColors(
        color: Colors.lightGreenAccent,
        colorNum: "A200",
        colorCode: "#B2FF59",
        isLight: true,
      ),
      MyColors(
          color: Colors.lightGreenAccent[400],
          colorNum: "A400",
          colorCode: "#76FF03",
          isLight: true),
      MyColors(
          color: Colors.lightGreenAccent[700],
          colorNum: "A700",
          colorCode: "#64DD17",
          isLight: true),
    ];
  }

  //lime
  getLime() {
    return [
      MyColors(
          color: Colors.lime[50],
          colorNum: "50",
          colorCode: "#F9FBE7",
          isLight: true),
      MyColors(
          color: Colors.lime[100],
          colorNum: "100",
          colorCode: "#F0F4C3",
          isLight: true),
      MyColors(
          color: Colors.lime[200],
          colorNum: "200",
          colorCode: "#E6EE9C",
          isLight: true),
      MyColors(
          color: Colors.lime[300],
          colorNum: "300",
          colorCode: "#DCE775",
          isLight: true),
      MyColors(
          color: Colors.lime[400],
          colorNum: "400",
          colorCode: "#D4E157",
          isLight: true),
      MyColors(
          color: Colors.lime[500],
          colorNum: "500",
          colorCode: "#CDDC39",
          isLight: true),
      MyColors(
          color: Colors.lime[600],
          colorNum: "600",
          colorCode: "#C0CA33",
          isLight: true),
      MyColors(
          color: Colors.lime[700],
          colorNum: "700",
          colorCode: "#A4B42B",
          isLight: true),
      MyColors(
          color: Colors.lime[800],
          colorNum: "800",
          colorCode: "#9E9D24",
          isLight: true),
      MyColors(
          color: Colors.lime[900],
          colorNum: "900",
          colorCode: "#827717",
          isLight: false),
      MyColors(
          color: Colors.limeAccent[100],
          colorNum: "A100",
          colorCode: "#F4FF81",
          isLight: true),
      MyColors(
          color: Colors.limeAccent,
          colorNum: "A200",
          colorCode: "#EEFF41",
          isLight: true),
      MyColors(
          color: Colors.limeAccent[400],
          colorNum: "A400",
          colorCode: "#C6FF00",
          isLight: true),
      MyColors(
          color: Colors.limeAccent[700],
          colorNum: "A700",
          colorCode: "#AEEA00",
          isLight: true),
    ];
  }

  //yellow
  getYellow() {
    return [
      MyColors(
          color: Colors.yellow[50],
          colorNum: "50",
          colorCode: "#FFFDE7",
          isLight: true),
      MyColors(
          color: Colors.yellow[100],
          colorNum: "100",
          colorCode: "#FFF9C4",
          isLight: true),
      MyColors(
          color: Colors.yellow[200],
          colorNum: "200",
          colorCode: "#FFF590",
          isLight: true),
      MyColors(
          color: Colors.yellow[300],
          colorNum: "300",
          colorCode: "#FFF176",
          isLight: true),
      MyColors(
          color: Colors.yellow[400],
          colorNum: "400",
          colorCode: "#FFEE58",
          isLight: true),
      MyColors(
          color: Colors.yellow[500],
          colorNum: "500",
          colorCode: "#FFEB3B",
          isLight: true),
      MyColors(
          color: Colors.yellow[600],
          colorNum: "600",
          colorCode: "#FDD835",
          isLight: true),
      MyColors(
          color: Colors.yellow[700],
          colorNum: "700",
          colorCode: "#FBC02D",
          isLight: true),
      MyColors(
          color: Colors.yellow[800],
          colorNum: "800",
          colorCode: "#F9A825",
          isLight: true),
      MyColors(
          color: Colors.yellow[900],
          colorNum: "900",
          colorCode: "#F57F17",
          isLight: true),
      MyColors(
          color: Colors.yellowAccent[100],
          colorNum: "A100",
          colorCode: "#FFFF82",
          isLight: true),
      MyColors(
          color: Colors.yellowAccent,
          colorNum: "A200",
          colorCode: "#FFFF00",
          isLight: true),
      MyColors(
          color: Colors.yellowAccent[400],
          colorNum: "A400",
          colorCode: "#FFEA00",
          isLight: true),
      MyColors(
          color: Colors.yellowAccent[700],
          colorNum: "A700",
          colorCode: "#FFD600",
          isLight: true),
    ];
  }

  //CONTINUE FROM HERE
  //amber
  getAmber() {
    return [
      MyColors(
          color: Colors.amber[50],
          colorNum: "50",
          colorCode: "#FFF8E1",
          isLight: true),
      MyColors(
          color: Colors.amber[100],
          colorNum: "100",
          colorCode: "#FFECB3",
          isLight: true),
      MyColors(
          color: Colors.amber[200],
          colorNum: "200",
          colorCode: "#FFE082",
          isLight: true),
      MyColors(
          color: Colors.amber[300],
          colorNum: "300",
          colorCode: "#FFD54F",
          isLight: true),
      MyColors(
          color: Colors.amber[400],
          colorNum: "400",
          colorCode: "#FFCA28",
          isLight: true),
      MyColors(
          color: Colors.amber[500],
          colorNum: "500",
          colorCode: "#FFC107",
          isLight: true),
      MyColors(
          color: Colors.amber[600],
          colorNum: "600",
          colorCode: "#FFB300",
          isLight: true),
      MyColors(
          color: Colors.amber[700],
          colorNum: "700",
          colorCode: "#FFA000",
          isLight: true),
      MyColors(
          color: Colors.amber[800],
          colorNum: "800",
          colorCode: "#FF8F00",
          isLight: true),
      MyColors(
          color: Colors.amber[900],
          colorNum: "900",
          colorCode: "#FF6F00",
          isLight: true),
      MyColors(
          color: Colors.amberAccent[100],
          colorNum: "A100",
          colorCode: "#FFE57F",
          isLight: true),
      MyColors(
          color: Colors.amberAccent,
          colorNum: "A200",
          colorCode: "#FFD740",
          isLight: true),
      MyColors(
          color: Colors.amberAccent[400],
          colorNum: "A400",
          colorCode: "#FFC400",
          isLight: true),
      MyColors(
          color: Colors.amberAccent[700],
          colorNum: "A700",
          colorCode: "#FFAB00",
          isLight: true),
    ];
  }

  //orange
  getOrange() {
    return [
      MyColors(
          color: Colors.orange[50],
          colorNum: "50",
          colorCode: "#FFF3E0",
          isLight: true),
      MyColors(
          color: Colors.orange[100],
          colorNum: "100",
          colorCode: "#FFE0B2",
          isLight: true),
      MyColors(
          color: Colors.orange[200],
          colorNum: "200",
          colorCode: "#FFCC80",
          isLight: true),
      MyColors(
          color: Colors.orange[300],
          colorNum: "300",
          colorCode: "#FFB74D",
          isLight: true),
      MyColors(
          color: Colors.orange[400],
          colorNum: "400",
          colorCode: "#FFA726",
          isLight: true),
      MyColors(
          color: Colors.orange[500],
          colorNum: "500",
          colorCode: "#FF9800",
          isLight: true),
      MyColors(
          color: Colors.orange[600],
          colorNum: "600",
          colorCode: "#FB8C00",
          isLight: true),
      MyColors(
          color: Colors.orange[700],
          colorNum: "700",
          colorCode: "#F57C00",
          isLight: true),
      MyColors(
          color: Colors.orange[800],
          colorNum: "800",
          colorCode: "#EF6C00",
          isLight: true),
      MyColors(
          color: Colors.orange[900],
          colorNum: "900",
          colorCode: "#E65100",
          isLight: true),
      MyColors(
          color: Colors.orangeAccent[100],
          colorNum: "A100",
          colorCode: "#FFD180",
          isLight: true),
      MyColors(
          color: Colors.orangeAccent,
          colorNum: "A200",
          colorCode: "#FFAB40",
          isLight: true),
      MyColors(
          color: Colors.orangeAccent[400],
          colorNum: "A400",
          colorCode: "#FF9100",
          isLight: true),
      MyColors(
          color: Colors.orangeAccent[700],
          colorNum: "A700",
          colorCode: "#FF6D00",
          isLight: true),
    ];
  }

  //deeporange
  getDeepOrange() {
    return [
      MyColors(
          color: Colors.deepOrange[50],
          colorNum: "50",
          colorCode: "#FBE9E7",
          isLight: true),
      MyColors(
          color: Colors.deepOrange[100],
          colorNum: "100",
          colorCode: "#FFCCBC",
          isLight: true),
      MyColors(
          color: Colors.deepOrange[200],
          colorNum: "200",
          colorCode: "#FFAB91",
          isLight: true),
      MyColors(
          color: Colors.deepOrange[300],
          colorNum: "300",
          colorCode: "#FF8A65",
          isLight: true),
      MyColors(
          color: Colors.deepOrange[400],
          colorNum: "400",
          colorCode: "#FF7043",
          isLight: true),
      MyColors(
          color: Colors.deepOrange[500],
          colorNum: "500",
          colorCode: "#FF5722",
          isLight: true),
      MyColors(
          color: Colors.deepOrange[600],
          colorNum: "600",
          colorCode: "#F4511E",
          isLight: false),
      MyColors(
          color: Colors.deepOrange[700],
          colorNum: "700",
          colorCode: "#E64A19",
          isLight: false),
      MyColors(
          color: Colors.deepOrange[800],
          colorNum: "800",
          colorCode: "#D84315",
          isLight: false),
      MyColors(
          color: Colors.deepOrange[900],
          colorNum: "900",
          colorCode: "#BF360C",
          isLight: false),
      MyColors(
          color: Colors.deepOrangeAccent[100],
          colorNum: "A100",
          colorCode: "#FF9E80",
          isLight: true),
      MyColors(
          color: Colors.deepOrangeAccent,
          colorNum: "A200",
          colorCode: "#FF6E40",
          isLight: true),
      MyColors(
          color: Colors.deepOrangeAccent[400],
          colorNum: "A400",
          colorCode: "#FF3D00",
          isLight: false),
      MyColors(
          color: Colors.deepOrangeAccent[400],
          colorNum: "A700",
          colorCode: "#DD2600",
          isLight: false),
    ];
  }

  //brown
  getBrown() {
    return [
      MyColors(
          color: Colors.brown[50],
          colorNum: "50",
          colorCode: "#EFEBE9",
          isLight: true),
      MyColors(
          color: Colors.brown[100],
          colorNum: "100",
          colorCode: "#D7CCC8",
          isLight: true),
      MyColors(
          color: Colors.brown[200],
          colorNum: "200",
          colorCode: "#BCAAA4",
          isLight: true),
      MyColors(
          color: Colors.brown[300],
          colorNum: "300",
          colorCode: "#A1887F",
          isLight: false),
      MyColors(
          color: Colors.brown[400],
          colorNum: "400",
          colorCode: "#8D6E63",
          isLight: false),
      MyColors(
          color: Colors.brown[500],
          colorNum: "500",
          colorCode: "#795548",
          isLight: false),
      MyColors(
          color: Colors.brown[600],
          colorNum: "600",
          colorCode: "#6D4C41",
          isLight: false),
      MyColors(
          color: Colors.brown[700],
          colorNum: "700",
          colorCode: "#5D4037",
          isLight: false),
      MyColors(
          color: Colors.brown[800],
          colorNum: "800",
          colorCode: "#4E342E",
          isLight: false),
      MyColors(
          color: Colors.brown[900],
          colorNum: "900",
          colorCode: "#3E2723",
          isLight: false),
    ];
  }

  //grey
  getGrey() {
    return [
      MyColors(
          color: Colors.grey[50],
          colorNum: "50",
          colorCode: "#FAFAFA",
          isLight: true),
      MyColors(
          color: Colors.grey[100],
          colorNum: "100",
          colorCode: "#F5F5F5",
          isLight: true),
      MyColors(
          color: Colors.grey[200],
          colorNum: "200",
          colorCode: "#EEEEEE",
          isLight: true),
      MyColors(
          color: Colors.grey[300],
          colorNum: "300",
          colorCode: "#E0E0E0",
          isLight: true),
      MyColors(
          color: Colors.grey[400],
          colorNum: "400",
          colorCode: "#BDBDBD",
          isLight: true),
      MyColors(
          color: Colors.grey[500],
          colorNum: "500",
          colorCode: "#9E9E9E",
          isLight: true),
      MyColors(
          color: Colors.grey[600],
          colorNum: "600",
          colorCode: "#757575",
          isLight: false),
      MyColors(
          color: Colors.grey[700],
          colorNum: "700",
          colorCode: "#616161",
          isLight: false),
      MyColors(
          color: Colors.grey[800],
          colorNum: "800",
          colorCode: "#424242",
          isLight: false),
      MyColors(
          color: Colors.grey[900],
          colorNum: "900",
          colorCode: "#212121",
          isLight: false),
    ];
  }

  //blue grey
  getBlueGrey() {
    return [
      MyColors(
          color: Colors.blueGrey[50],
          colorNum: "50",
          colorCode: "#ECEFF1",
          isLight: true),
      MyColors(
          color: Colors.blueGrey[100],
          colorNum: "100",
          colorCode: "#CFD8DC",
          isLight: true),
      MyColors(
          color: Colors.blueGrey[200],
          colorNum: "200",
          colorCode: "#B0BBC5",
          isLight: true),
      MyColors(
          color: Colors.blueGrey[300],
          colorNum: "300",
          colorCode: "#90A4AE",
          isLight: true),
      MyColors(
          color: Colors.blueGrey[400],
          colorNum: "400",
          colorCode: "#78909C",
          isLight: false),
      MyColors(
          color: Colors.blueGrey[500],
          colorNum: "500",
          colorCode: "#607D8B",
          isLight: false),
      MyColors(
          color: Colors.blueGrey[600],
          colorNum: "600",
          colorCode: "#546E7A",
          isLight: false),
      MyColors(
          color: Colors.blueGrey[700],
          colorNum: "700",
          colorCode: "#455A64",
          isLight: false),
      MyColors(
          color: Colors.blueGrey[800],
          colorNum: "800",
          colorCode: "#37474F",
          isLight: false),
      MyColors(
          color: Colors.blueGrey[900],
          colorNum: "900",
          colorCode: "#263238",
          isLight: false),
    ];
  }
}
