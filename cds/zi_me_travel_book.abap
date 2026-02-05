@Metadata.layer: #CORE
@UI: {
  headerInfo: {
    typeName: 'Travel',
    typeNamePlural: 'Travels',
    title: { value: 'Travel_Id' }
  }
}
annotate view ZI_travel_book with
{
  @UI.facet: [
    {
      id: 'General',
      purpose: #STANDARD,
      type: #IDENTIFICATION_REFERENCE,
      label: 'Travel Details',
      position: 10
    }
  ]

  @UI.identification: [{ position: 10, label: 'Travel ID' }]
  @UI.lineItem: [{ position: 10 }]
  Travel_Id;

  @UI.identification: [{ position: 20, label: 'Agency ID' }]
  @UI.lineItem: [{ position: 20 }]
  Agency_Id;

  @UI.identification: [{ position: 30, label: 'Customer ID' }]
  @UI.lineItem: [{ position: 30 }]
  Customer_Id;

  @UI.identification: [{ position: 40, label: 'Begin Date' }]
  @UI.lineItem: [{ position: 40 }]
  Begin_Date;

  @UI.identification: [{ position: 50, label: 'End Date' }]
  @UI.lineItem: [{ position: 50 }]
  End_Date;

  @UI.identification: [{ position: 60, label: 'Booking Fee' }]
  @UI.lineItem: [{ position: 60 }]
  Booking_Fee;

  @UI.identification: [{ position: 70, label: 'Currency' }]
  @UI.lineItem: [{ position: 70 }]
  Currency;

  @UI.identification: [{ position: 80, label: 'Description' }]
  @UI.lineItem: [{ position: 80 }]
  Description;

  @UI.identification: [{ position: 90, label: 'Status' }]
  @UI.lineItem: [{ position: 90 }]
  Status;
}