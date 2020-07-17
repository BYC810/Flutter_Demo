import 'package:BYCDelicacy/ui/shared/size_fit.dart';

extension IntFit on int {
  double get px {
    return BYCSizeFit.setPx(this.toDouble());
  }
  double get rpx {
    return BYCSizeFit.setRpx(this.toDouble());
  }
}