import 'package:deriv_chart/src/deriv_chart/chart/x_axis/viewing_modes/viewing_mode_state.dart';
import 'package:deriv_chart/src/deriv_chart/chart/x_axis/x_axis_model.dart';

/// State for following the current tick.
class FollowCurrentTickState extends ViewingModeState {
  @override
  void onNewFrame(XAxisModel xAxisModel, int elapsedMs) {
    xAxisModel.scrollTo(xAxisModel.rightBoundEpoch + elapsedMs);
  }
}
