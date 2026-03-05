@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'Zzddata_110110'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZZDR_DATA_110110
  as select from ZDATA__110
{
  key booking_uuid as BookingUUID,
  customer_name as CustomerName,
  pickup_location as PickupLocation,
  drop_location as DropLocation,
  driver_id as DriverID,
  vehicle_number as VehicleNumber,
  status as Status,
  booking_date as BookingDate,
  fare_amount as FareAmount,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
