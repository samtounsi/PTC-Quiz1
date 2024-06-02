class Availability {
  bool online;
  bool inStore;

  Availability(this.online, this.inStore);

  factory Availability.fromJson(Map<String, dynamic> json) {
    return Availability(json['online'], json['inStore']);
  }

  Map<String, dynamic> toJson() {
    return {'online': online, 'inStore': inStore};
  }
}
