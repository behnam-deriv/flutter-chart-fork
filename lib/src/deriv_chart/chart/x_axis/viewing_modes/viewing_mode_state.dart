import 'package:deriv_chart/src/deriv_chart/chart/x_axis/x_axis_model.dart';

/// The base class for a viewing mode state.
abstract class ViewingModeState {
  /// Called on each frame.
  void onNewFrame(XAxisModel xAxisModel, int elapsedMs);
}
