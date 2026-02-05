# SAP RAP Managed Scenario – Booking App

This repository provides a **basic SAP RAP Managed Scenario** example created using **ABAP Development Tools (ADT) in Eclipse**.

The project demonstrates how to expose a **single database table** as an **OData service** and automatically generate a **Fiori Elements application** using the **ABAP RESTful Application Programming Model (RAP)**.

This example is based on a **Booking** business object and is designed to help beginners understand the RAP flow step by step.

---

## Project Overview

This implementation includes:

- RAP Managed Scenario (no custom save logic)
- OData service creation using RAP
- Automatic Fiori Elements UI generation
- CRUD operations without UI coding
- Clean RAP structure suitable for learning

---

## Business Scenario

The application is a simple **Travel Booking** system with the following fields:

- Travel ID  
- Booking ID  
- Booking Date  
- Customer ID  
- Carrier ID  
- Connection ID  
- Flight Date  
- Flight Price  
- Currency Code  

---

## Development Environment

- ABAP Development Tools (ADT) in Eclipse  
- SAP BTP – ABAP Environment  

All repository objects were **manually created in Eclipse**.

---

## Implementation Steps

### 1. Database Table
**Table:** `ZJP_RAP_BOOK`

Stores booking data, with initial sample records copied from `/DMO/BOOKING`.

---

### 2. Data Provider Class
**Class:** `ZJP_BOOK_DATA`

- Deletes existing data
- Inserts sample records from `/DMO/BOOKING`
- Used only for demo/testing

Execute the class once to populate the table.

---

### 3. Root CDS View Entity
**Entity:** `ZI_RAP_BOOK`

- Root RAP entity
- Exposes booking data
- Used for OData service generation

---

### 4. Metadata Extension (UI Annotations)
Defines list report columns, object page layout, selection fields, and header information. The Fiori UI is driven entirely by annotations.

---

### 5. Behavior Definition (Managed)
CRUD operations are automatically managed by SAP.

```abap
managed;

define behavior for zi_rap_book
persistent table ZJP_RAP_BOOK
lock master
{
  create;
  update;
  delete;
}
```

No behavior implementation class is required.

---

### 6. Service Definition
**Service:** `ZUI_RAP_BOOK`

Exposes the root CDS entity.

---

### 7. Service Binding
- Binding Type: **OData V2 – UI**
- Service is activated and published.
- A preview launches a Fiori Elements application.

---

## Application Capabilities

- View booking list
- Create new bookings
- Edit existing bookings
- Delete booking records

All actions work directly in the preview application.

---

## Learning Outcome

This project introduces the following concepts:

- RAP managed scenario flow
- How CDS entities become OData services
- Automatic UI generation with Fiori Elements
- Importance of metadata extensions
- Conceptual differences between managed and unmanaged RAP

---

## Common Issues & Notes

- If the preview fails, re-activate the service definition and binding.
- Missing UI fields usually indicate issues in metadata extensions.
- Authorization checks are skipped for this learning scenario.

---

## Next Steps for Enhancement

- Add authorization objects
- Incorporate validations
- Implement unmanaged RAP scenario
- Introduce associations and compositions

---

## Author

Lahari Gadamsetty

Created as a hands-on RAP tutorial project using ADT in Eclipse.
