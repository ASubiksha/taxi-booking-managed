@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'Zzddata_110110'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZDC_DATA_110110
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZDR_DATA_110110
  association [1..1] to ZZDR_DATA_110110 as _BaseEntity on $projection.BOOKINGUUID = _BaseEntity.BOOKINGUUID
{
  key BookingUUID,
  CustomerName,
  PickupLocation,
  DropLocation,
  DriverID,
  VehicleNumber,
  Status,
  BookingDate,
  FareAmount,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
