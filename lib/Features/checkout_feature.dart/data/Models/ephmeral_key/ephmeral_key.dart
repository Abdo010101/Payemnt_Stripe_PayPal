import 'associated_object.dart';

class EphmeralKeyModel {
  String? id;
  String? object;
  List<AssociatedObject>? associatedObjects;
  num? created;
  num? expires;
  bool? livemode;
  String? secret;

  EphmeralKeyModel({
    this.id,
    this.object,
    this.associatedObjects,
    this.created,
    this.expires,
    this.livemode,
    this.secret,
  });

  factory EphmeralKeyModel.fromjson(Map<String, dynamic> json) {
    return EphmeralKeyModel(
      id: json['id']?.toString(),
      object: json['object']?.toString(),
      associatedObjects: (json['associated_objects'] as List<dynamic>?)
          ?.map((e) => AssociatedObject
              .fromIdEphkey1Pt6vl2NEwbDlKsOqIIlLlJqObjectEphemeralKeyAssociatedObjectsIdCusQhoCwQbQ0El8KpTypeCustomerCreated1718735937Expires1718739537LivemodeFalseSecretEkTestYwNjdF8xUef4MkIyTkV3YkRms3NpleJodkFSdWfOaDFpblplRwnvwUsxdkhrSGxJdDlLsWo00wnHx1hRg(
                  Map<String, dynamic>.from(e)))
          .toList(),
      created: num.tryParse(json['created'].toString()),
      expires: num.tryParse(json['expires'].toString()),
      livemode: json['livemode']?.toString().contains("true"),
      secret: json['secret']?.toString(),
    );
  }

  Map<String, dynamic>
      toIdEphkey1Pt6vl2NEwbDlKsOqIIlLlJqObjectEphemeralKeyAssociatedObjectsIdCusQhoCwQbQ0El8KpTypeCustomerCreated1718735937Expires1718739537LivemodeFalseSecretEkTestYwNjdF8xUef4MkIyTkV3YkRms3NpleJodkFSdWfOaDFpblplRwnvwUsxdkhrSGxJdDlLsWo00wnHx1hRg() {
    return {
      if (id != null) 'id': id,
      if (object != null) 'object': object,
      if (associatedObjects != null)
        'associated_objects': associatedObjects
            ?.map((e) => e
                .toIdEphkey1Pt6vl2NEwbDlKsOqIIlLlJqObjectEphemeralKeyAssociatedObjectsIdCusQhoCwQbQ0El8KpTypeCustomerCreated1718735937Expires1718739537LivemodeFalseSecretEkTestYwNjdF8xUef4MkIyTkV3YkRms3NpleJodkFSdWfOaDFpblplRwnvwUsxdkhrSGxJdDlLsWo00wnHx1hRg())
            .toList(),
      if (created != null) 'created': created,
      if (expires != null) 'expires': expires,
      if (livemode != null) 'livemode': livemode,
      if (secret != null) 'secret': secret,
    };
  }
}
