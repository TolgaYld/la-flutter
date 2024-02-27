enum LocationServiceStatus {
  enabled,
  disabled,
  notAvailable,
}

class LocationStatus {
  const LocationStatus(this.status);

  factory LocationStatus.empty() =>
      const LocationStatus(LocationServiceStatus.enabled);
  final LocationServiceStatus status;
}
