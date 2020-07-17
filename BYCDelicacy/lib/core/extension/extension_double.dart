import 'package:BYCDelicacy/ui/shared/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return BYCSizeFit.setPx(this);
  }
  double get rpx {
    return BYCSizeFit.setRpx(this);
  }
}