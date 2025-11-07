import 'package:deriv_chart/src/deriv_chart/chart/x_axis/viewing_modes/viewing_mode_state.dart';
import 'package:deriv_chart/src/deriv_chart/chart/x_axis/x_axis_model.dart';

/// State for scrolling with a constant speed.
class ConstantScrollSpeedState extends ViewingModeState {
  @override
  void onNewFrame(XAxisModel xAxisModel, int elapsedMs) {
    xAxisModel.scrollBy(xAxisModel.panSpeed * elapsedMs);
  }
}
