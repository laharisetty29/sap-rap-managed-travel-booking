CLASS zcl_travelbook_3245 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_travelbook_3245 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA itab TYPE STANDARD TABLE OF ztb_travel_book.

    itab = VALUE #(
      ( travel_id = '0000000001' agency_id = '000001' customer_id = '000001'
        begin_date = sy-datum end_date = sy-datum + 5
        booking_fee = '1000.00' currency_code = 'INR'
        description = 'Business Trip' status = 'O' )

      ( travel_id = '0000000002' agency_id = '000002' customer_id = '000002'
        begin_date = sy-datum end_date = sy-datum + 10
        booking_fee = '2500.00' currency_code = 'INR'
        description = 'Vacation' status = 'O' )
    ).

    DELETE FROM ztb_travel_book.
    INSERT ztb_travel_book FROM TABLE @itab.

    out->write( |{ sy-dbcnt } travel records inserted successfully!| ).

  ENDMETHOD.
ENDCLASS.
