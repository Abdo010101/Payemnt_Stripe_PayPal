class AssociatedObject {
  String? id;
  String? type;

  AssociatedObject({this.id, this.type});

  factory AssociatedObject.fromIdEphkey1Pt6vl2NEwbDlKsOqIIlLlJqObjectEphemeralKeyAssociatedObjectsIdCusQhoCwQbQ0El8KpTypeCustomerCreated1718735937Expires1718739537LivemodeFalseSecretEkTestYwNjdF8xUef4MkIyTkV3YkRms3NpleJodkFSdWfOaDFpblplRwnvwUsxdkhrSGxJdDlLsWo00wnHx1hRg(
      Map<String, dynamic> json) {
    return AssociatedObject(
      id: json['id']?.toString(),
      type: json['type']?.toString(),
    );
  }

  Map<String, dynamic>
      toIdEphkey1Pt6vl2NEwbDlKsOqIIlLlJqObjectEphemeralKeyAssociatedObjectsIdCusQhoCwQbQ0El8KpTypeCustomerCreated1718735937Expires1718739537LivemodeFalseSecretEkTestYwNjdF8xUef4MkIyTkV3YkRms3NpleJodkFSdWfOaDFpblplRwnvwUsxdkhrSGxJdDlLsWo00wnHx1hRg() {
    return {
      if (id != null) 'id': id,
      if (type != null) 'type': type,
    };
  }
}
