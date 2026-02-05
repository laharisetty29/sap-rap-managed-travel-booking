# SAP RAP Managed Scenario – Booking App

This repository contains a **basic SAP RAP Managed Scenario** implemented using **ABAP Development Tools (ADT) in Eclipse** on **SAP BTP – ABAP Environment**.

The project demonstrates how a single database table can be exposed as an **OData service** and automatically rendered as a **Fiori Elements application** using the **ABAP RESTful Application Programming Model (RAP)**.

This example is based on a **Travel Booking business object** and is intended as a **step-by-step learning project for beginners**.

---

## 📌 Project Overview

This implementation showcases:

- RAP Managed Scenario (no custom save logic)
- OData service creation using RAP
- Automatic Fiori Elements UI generation
- CRUD operations without UI coding
- Clean and simple RAP architecture for learning

---

## 🧩 Business Scenario

The application represents a **Travel Booking system** with the following fields:

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

## 🛠 Development Environment

- ABAP Development Tools (ADT) in Eclipse  
- SAP BTP – ABAP Environment  

All repository objects were **manually created in Eclipse**.

---

## ⚙️ Implementation Flow

### 1️⃣ Database Table
**Table:** `ZJP_RAP_BOOK`

- Stores booking data
- Initial demo records copied from `/DMO/BOOKING`

---

### 2️⃣ Data Provider Class
**Class:** `ZJP_BOOK_DATA`

- Deletes existing records
- Inserts sample booking data from `/DMO/BOOKING`
- Used only for demo and testing purposes

📌 Execute the class once to populate the table.

---

### 3️⃣ Root CDS View Entity
**Entity:** `ZI_RAP_BOOK`

- Root RAP entity
- Exposes booking data
- Acts as the source for OData service generation

---

### 4️⃣ Metadata Extension (UI Annotations)

- Defines list report columns
- Object page layout
- Selection fields
- Header information  

The **Fiori Elements UI is fully driven by CDS annotations**, without writing UI code.

---

### 5️⃣ Behavior Definition (Managed)

CRUD operations are handled automatically by SAP in the managed scenario.

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
---
### 6️⃣ Service Definition

Service: ZUI_RAP_BOOK

Exposes the root CDS entity
---
### 7️⃣ Service Binding

- Binding Type: OData V2 – UI
- Service is activated and published
- Fiori Elements preview application is launched directly from ADT
---
### 🚀 Application Capabilities

- View booking list
- Create new booking records
- Edit existing bookings
- Delete booking records

All operations are available directly in the generated Fiori UI.
---
### 🎓 Learning Outcomes

- This project helps understand:
- RAP managed scenario architecture
- How CDS entities are exposed as OData services
- Automatic UI generation with Fiori Elements
- Role of metadata extensions in UI behavior
- Conceptual differences between managed and unmanaged RAP
---
### ⚠️ Common Issues & Notes

- If the preview does not load, re-activate the service definition and service binding
- Missing fields in the UI usually indicate issues in metadata extensions
- Authorization checks are skipped for learning purposes
---
### 🔮 Next Steps for Enhancement

- Add authorization objects
- Implement validations and determinations
- Explore unmanaged RAP scenarios
- Introduce associations and compositions

###👩‍💻 Author

Lahari Gadamsetty
Created as a hands-on SAP RAP tutorial project using ADT in Eclipse.
