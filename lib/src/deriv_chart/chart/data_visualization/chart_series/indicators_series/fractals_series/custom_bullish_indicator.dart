import 'package:deriv_chart/src/models/tick.dart';
import 'package:deriv_technical_analysis/deriv_technical_analysis.dart';

/// A version of Bullish indicator specifically to be suitable for
/// `AbstractSingleIndicatorSeries`.
///
/// In `AbstractSingleIndicatorSeries` for better performance, when a new tick
/// is added or the last tick gets updated, we don't recalculate indicator's
/// result for all indices and just for the last tick.
/// But in BullishIndicator we need to recalculate the previous two values
/// after we receive a new tick.
class CustomBullishIndicator extends BullishIndicator<Tick> {
  /// Initializes Bullish indicator.
  CustomBullishIndicator(IndicatorDataInput input) : super(input);

  @override
  void copyValuesFrom(covariant CustomBullishIndicator other) {
    super.copyValuesFrom(other);
    if (entries.length > other.entries.length) {
      final int index = entries.length - 3;
      results[index] = super.calculate(index);
    }
  }
}
