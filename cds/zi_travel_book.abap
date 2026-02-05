@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Root View Travel'
@Metadata.allowExtensions: true
define root view entity ZI_travel_book
  as select from ztb_travel_book
{
  key travel_id     as Travel_Id,
      agency_id     as Agency_Id,
      customer_id   as Customer_Id,
      begin_date    as Begin_Date,
      end_date      as End_Date,
      booking_fee   as Booking_Fee,
      currency_code as Currency,
      description   as Description,
      status        as Status
}
