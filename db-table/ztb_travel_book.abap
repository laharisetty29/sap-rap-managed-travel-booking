@EndUserText.label : 'Travel Table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table ztb_travel_book {

  key client    : abap.clnt not null;
  key travel_id : abap.numc(10) not null;
  agency_id     : abap.numc(6);
  customer_id   : abap.numc(6);
  begin_date    : abap.dats;
  end_date      : abap.dats;
  @Semantics.amount.currencyCode : 'ztb_travel_book.currency_code'
  booking_fee   : abap.curr(15,2);
  currency_code : abap.cuky;
  description   : abap.char(50);
  status        : abap.char(1);

}