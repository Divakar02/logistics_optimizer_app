

import 'dart:ui';

import 'package:flutter/material.dart';

const tDefaultSize=30.0;

const tSplashContainerSize=30.0;


// First get the FlutterView.
FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

// Dimensions in physical pixels (px)
Size size = view.physicalSize;
double width = size.width;
double height = size.height;
