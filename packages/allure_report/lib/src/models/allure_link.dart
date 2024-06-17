class AllureLink {
  final String type;
  final String name;
  final String link;

  AllureLink({required this.type, required this.name, required this.link});

  factory AllureLink.fromEvent(String event) {
    final [_, type, name, link] = event.split(':');
    return AllureLink(type: type, name: name, link: link);
  }

  @override
  int get hashCode => type.hashCode ^ link.hashCode;

  @override
  bool operator ==(Object other) {
    return other is AllureLink && //
        other.type == type &&
        other.link == link;
  }
}
