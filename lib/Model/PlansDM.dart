class PlansDM {
  late String duration;
  late double price;
  late double currentPrice =
      discount != null ? (price * (1 - discount!)) : price;
  double? discount;

  PlansDM(this.duration, this.price, {this.discount});
}
