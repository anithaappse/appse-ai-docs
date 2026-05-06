---
title: "Dynamics 365 Business Central"
slug: /app-integrations/dynamics-365-business-central
---

Dynamics 365 Business Central is an all-in-one business management solution designed to help organizations streamline their financials, operations, and customer relationships. With appse ai, you can easily connect your Dynamics 365 Business Central account, automate business processes, and integrate data seamlessly across your workflows, enhancing efficiency and accuracy in your operations.

---

## Setup Credential

Follow the steps below to quickly set up your credential.

### Required Fields

You’ll need to provide:

| Field           | Description                                                |
| --------------- | ---------------------------------------------------------- |
| Connection Name | A name to identify the connection                          |
| Tenant ID       | Your Azure Active Directory tenant ID                      |
| Company ID      | The ID of the Business Central company you're working with |

---

### Step-by-Step Guide

#### 1. Add Connection Name

- Enter a user-friendly name to identify this connection (e.g., `BC Finance`, `D365 Europe Instance`).
- This is only for reference within our platform.

---

#### 2. Locate Your Tenant ID

- Go to the [Azure Portal](https://portal.azure.com).
  <img src="/img/credentials/business-central/business-central-cred-azure-dashboard.png" alt="APPSeAI Business Central Azure Dashboard" width="700"/>

- Search for **Microsoft Entra ID** → **Overview**.
  <img src="/img/credentials/business-central/business-central-cred-tenant-id.png" alt="APPSeAI Business Central Tenant ID" width="700"/>

- Copy the **Tenant ID** from the overview page.

> **Example**: `e3f75f41-xxxx-4a70-9b5c-xxxxxxxxxxxx`

---

#### 3. Find Your Company ID

- Log in to your [Business Central](https://www.microsoft.com/en-in/dynamics-365/products/business-central/sign-in) account.

- Click on the **Search** icon → Search "Companies" → Click on Companies.
  <img src="/img/credentials/business-central/business-central-company-id-1.png" alt="APPSeAI Business Central Companies Search" width="700"/>

- Select Your Company Name from the list.
  <img src="/img/credentials/business-central/business-central-company-id-2.png" alt="APPSeAI Business Central Select Company name" width="700"/>

> **Example**: `CRONUS USA, Inc.`

- Press Ctrl+Alt+F1 → A Side Panel titled **Page Inspection** will open → Click on Table Fields → Under **Id (8000, GUID)** field, you will find the **Company ID** → Copy this and paste it in the credential form → Click on Save and Authorize.
  <img src="/img/credentials/business-central/business-central-company-id-3.png" alt="APPSeAI Business Central Find Company ID" width="700"/>

---

#### 4. Log in to your Business Central Account

- You will be showcased a pop-up that prompts you to login to your Business Central account using your Microsoft account credentials.

<img src="/img/credentials/business-central/business-central-cred-microsoft-login.png" alt="APPSeAI Business Central Microsoft Login" width="700"/>

- If you followed all the steps correctly, your Business Central credential should be connected to our platform.

---

### Save Your Credential

Once you've filled in the necessary fields, click **"Save"** to store and verify your setup.

- If successful, your credential will show a "✓" icon. Now you can use this application for your integrations.
- If it fails, you will be displayed a "!" icon. In that case, please recheck your Connection Name, Tenant ID, and Company ID or contact support.

-----------------

## Triggers and Action

## Triggers

### New Customer Created

**New Customer Created** trigger is used to fetch newly created customer records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-NWCSTMRCRTD1.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch new customer records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzIwOzEyMzM5MzI5OTA3ODUyNjg0MjU4MTswMDsn\"",
    "id": "e699e2b8-ced4-f011-8542-6045bde7ef1d",
    "number": "#1303",
    "displayName": "Reyen Behr [B]",
    "type": "Person",
    "addressLine1": "",
    "addressLine2": "",
    "city": "",
    "state": "",
    "country": "IN",
    "postalCode": "",
    "phoneNumber": "",
    "email": "xyz456@gmail.com",
    "website": "",
    "salespersonCode": "",
    "balanceDue": 0,
    "creditLimit": 0,
    "taxLiable": false,
    "taxAreaId": "84e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "taxAreaDisplayName": "Domestic customers and vendors",
    "taxRegistrationNumber": "",
    "currencyId": "00000000-0000-0000-0000-000000000000",
    "currencyCode": "USD",
    "paymentTermsId": "c9dbdcf8-b3d3-ee11-904f-6045bde9c6f5",
    "shipmentMethodId": "00000000-0000-0000-0000-000000000000",
    "paymentMethodId": "12e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "blocked": "_x0020_",
    "lastModifiedDateTime": "2026-05-05T05:55:35.773Z"
  }
]
```
-----------------------

### Customer Update

**Customer Update** trigger is used to fetch updated customer records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-CSTMRUPDT3.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch updated customer records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzIwOzEyMzM5MzI5OTA3ODUyNjg0MjU4MTswMDsn\"",
    "id": "e699e2b8-ced4-f011-8542-6045bde7ef1d",
    "number": "#1303",
    "displayName": "Reyen Behr [B]",
    "type": "Person",
    "addressLine1": "",
    "addressLine2": "",
    "city": "",
    "state": "",
    "country": "IN",
    "postalCode": "",
    "phoneNumber": "",
    "email": "xyz456@gmail.com",
    "website": "",
    "salespersonCode": "",
    "balanceDue": 0,
    "creditLimit": 0,
    "taxLiable": false,
    "taxAreaId": "84e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "taxAreaDisplayName": "Domestic customers and vendors",
    "taxRegistrationNumber": "",
    "currencyId": "00000000-0000-0000-0000-000000000000",
    "currencyCode": "USD",
    "paymentTermsId": "c9dbdcf8-b3d3-ee11-904f-6045bde9c6f5",
    "shipmentMethodId": "00000000-0000-0000-0000-000000000000",
    "paymentMethodId": "12e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "blocked": "_x0020_",
    "lastModifiedDateTime": "2026-05-05T05:55:35.773Z"
  }
]
```
------------------------

### New Contacts Created

**New Contacts Created** trigger is used to fetch newly created contact records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-NWCNTCTCRTD4.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch new contact records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzE5Ozc3ODA5MjE1MjA0MzIwNjA0NTkxOzAwOyc=\"",
    "id": "88bbb6a9-16c6-f011-8542-7c1e520ee21f",
    "number": "+917796636577",
    "type": "Person",
    "displayName": "Chase Whitman",
    "jobTitle": "ocSalesOrServicesRevenues",
    "companyNumber": "CT010494",
    "companyName": "Boston Company",
    "contactBusinessRelation": "Customer",
    "addressLine1": "233 N Michigan Ave",
    "addressLine2": "4501 W 47th Street",
    "city": "Chicago",
    "state": "IL",
    "country": "US",
    "postalCode": "60632",
    "phoneNumber": "9876629031",
    "mobilePhoneNumber": "",
    "email": "chase.whitman67@yopmail.com",
    "website": "",
    "searchName": "WHITMAN",
    "privacyBlocked": false,
    "taxRegistrationNumber": "",
    "lastInteractionDate": "0001-01-01",
    "lastModifiedDateTime": "2025-11-25T12:22:02.18Z"
  }
]
```
-------------------------

### Contacts Updated

**Contacts Updated** trigger is used to fetch updated contact records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-CONTCTUPDT5.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch updated contact records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzE5Ozc3ODA5MjE1MjA0MzIwNjA0NTkxOzAwOyc=\"",
    "id": "88bbb6a9-16c6-f011-8542-7c1e520ee21f",
    "number": "+917796636577",
    "type": "Person",
    "displayName": "Chase Whitman",
    "jobTitle": "ocSalesOrServicesRevenues",
    "companyNumber": "CT010494",
    "companyName": "Boston Company",
    "contactBusinessRelation": "Customer",
    "addressLine1": "233 N Michigan Ave",
    "addressLine2": "4501 W 47th Street",
    "city": "Chicago",
    "state": "IL",
    "country": "US",
    "postalCode": "60632",
    "phoneNumber": "9876629031",
    "mobilePhoneNumber": "",
    "email": "chase.whitman67@yopmail.com",
    "website": "",
    "searchName": "WHITMAN",
    "privacyBlocked": false,
    "taxRegistrationNumber": "",
    "lastInteractionDate": "0001-01-01",
    "lastModifiedDateTime": "2025-11-25T12:22:02.18Z"
  }
]
```
-------------------------

### New Items Created

**New Items Created** trigger is used to fetch newly created item records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-NWITMCRTD6.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch new item records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzE5Ozg5MjIyMzcwMjQ1MTAxNzUwOTcxOzAwOyc=\"",
    "id": "d290ba0b-a47d-f011-8eef-6045bdadacc5",
    "number": "00000062828283",
    "displayName": "Binocular",
    "displayName2": "",
    "type": "Inventory",
    "itemCategoryId": "00000000-0000-0000-0000-000000000000",
    "itemCategoryCode": "",
    "blocked": false,
    "gtin": "",
    "inventory": 0,
    "unitPrice": 0,
    "priceIncludesTax": false,
    "unitCost": 0,
    "taxGroupId": "00000000-0000-0000-0000-000000000000",
    "taxGroupCode": "",
    "baseUnitOfMeasureId": "62dedcf8-b3d3-ee11-904f-6045bde9c6f5",
    "baseUnitOfMeasureCode": "PCS",
    "generalProductPostingGroupId": "f3dfdcf8-b3d3-ee11-904f-6045bde9c6f5",
    "generalProductPostingGroupCode": "RETAIL",
    "inventoryPostingGroupId": "51dedcf8-b3d3-ee11-904f-6045bde9c6f5",
    "inventoryPostingGroupCode": "RESALE",
    "lastModifiedDateTime": "2026-05-05T08:35:26.613Z"
  }
]
```
-------------------------

### Items Updated

**Items Updated** trigger is used to fetch updated item records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-ITMSUPDT7.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch updated item records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzE5Ozg5MjIyMzcwMjQ1MTAxNzUwOTcxOzAwOyc=\"",
    "id": "d290ba0b-a47d-f011-8eef-6045bdadacc5",
    "number": "00000062828283",
    "displayName": "Binocular",
    "displayName2": "",
    "type": "Inventory",
    "itemCategoryId": "00000000-0000-0000-0000-000000000000",
    "itemCategoryCode": "",
    "blocked": false,
    "gtin": "",
    "inventory": 0,
    "unitPrice": 0,
    "priceIncludesTax": false,
    "unitCost": 0,
    "taxGroupId": "00000000-0000-0000-0000-000000000000",
    "taxGroupCode": "",
    "baseUnitOfMeasureId": "62dedcf8-b3d3-ee11-904f-6045bde9c6f5",
    "baseUnitOfMeasureCode": "PCS",
    "generalProductPostingGroupId": "f3dfdcf8-b3d3-ee11-904f-6045bde9c6f5",
    "generalProductPostingGroupCode": "RETAIL",
    "inventoryPostingGroupId": "51dedcf8-b3d3-ee11-904f-6045bde9c6f5",
    "inventoryPostingGroupCode": "RESALE",
    "lastModifiedDateTime": "2026-05-05T08:35:26.613Z"
  }
]
```
----------------------

### Opportunities Created

**Opportunities Created** trigger is used to fetch newly created opportunity records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-OPPRTNTCRTD8.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch new opportunity records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzIwOzE2MTY5MjI1MzI1MTQ5Njk4NDA5MTswMDsn\"",
    "id": "fd15f560-fba1-ef11-8a6b-7c1e520e354b",
    "number": "1",
    "contactNumber": "CT000007",
    "contactName": "Deerfield Graphics Company Update",
    "contactCompanyName": "Deerfield Graphics Company Update",
    "salespersonCode": "",
    "description": "test",
    "status": "Not_x0020_Started",
    "closed": false,
    "creationDate": "2024-11-14",
    "dateClosed": "0001-01-01",
    "calculatedCurrentValue": 0,
    "chancesOfSuccessPrc": 0,
    "completedPrc": 0,
    "estimatedClosingDate": "0001-01-01",
    "estimatedValue": 0,
    "systemCreatedAt": "2024-11-13T20:10:52.043Z",
    "lastModifiedDateTime": "2024-11-13T20:10:52.077Z"
  }
]
```
-------------------------

### New SalesOrders Created

**New SalesOrders Created** trigger is used to fetch newly created sales order records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-NWSLSORDRCRTD9.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch new sales order records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzE5OzE5OTM2MzEzMjA1MTc3OTY4ODkxOzAwOyc=\"",
    "id": "ca1e5de2-8a44-f111-a820-6045bdc66ee1",
    "number": "0048802",
    "externalDocumentNumber": "",
    "orderDate": "2026-03-10",
    "postingDate": "2026-03-10",
    "customerId": "717b026b-7a1c-f111-8340-7ced8d26cf05",
    "customerNumber": "CUS002852",
    "customerName": " Grow Thrive",
    "billToName": " Grow Thrive",
    "billToCustomerId": "717b026b-7a1c-f111-8340-7ced8d26cf05",
    "billToCustomerNumber": "CUS002852",
    "shipToName": "CUS002852",
    "shipToContact": "Grow Thrive",
    "sellToAddressLine1": "421 Hobbs Street",
    "sellToAddressLine2": "",
    "sellToCity": "Tampa",
    "sellToCountry": "US",
    "sellToState": "FL",
    "sellToPostCode": "33619-7880",
    "billToAddressLine1": "421 Hobbs Street",
    "billToAddressLine2": "",
    "billToCity": "Tampa",
    "billToCountry": "US",
    "billToState": "FL",
    "billToPostCode": "33619-7880",
    "shipToAddressLine1": "421 Hobbs Street",
    "shipToAddressLine2": "",
    "shipToCity": "Tampa",
    "shipToCountry": "US",
    "shipToState": "FL",
    "shipToPostCode": "33619-7880",
    "shortcutDimension1Code": "",
    "shortcutDimension2Code": "",
    "currencyId": "00000000-0000-0000-0000-000000000000",
    "currencyCode": "USD",
    "pricesIncludeTax": false,
    "paymentTermsId": "c2dbdcf8-b3d3-ee11-904f-6045bde9c6f5",
    "shipmentMethodId": "00000000-0000-0000-0000-000000000000",
    "salesperson": "",
    "partialShipping": true,
    "requestedDeliveryDate": "0001-01-01",
    "discountAmount": 0,
    "discountAppliedBeforeTax": true,
    "totalAmountExcludingTax": 140240,
    "totalTaxAmount": 0,
    "totalAmountIncludingTax": 140240,
    "fullyShipped": false,
    "status": "Draft",
    "lastModifiedDateTime": "2026-05-05T06:50:28.203Z",
    "phoneNumber": "(813) 684-1782",
    "email": "grow45@yopmail.com",
    "salesOrderLines": [
      {
        "@odata.etag": "W/\"JzIwOzE2NjczMTY2NDA2NDg0NDg3MDMxMTswMDsn\"",
        "id": "d41e5de2-8a44-f111-a820-6045bdc66ee1",
        "documentId": "ca1e5de2-8a44-f111-a820-6045bdc66ee1",
        "sequence": 10000,
        "itemId": "9d650f62-a331-f111-bec2-6045bdc674ec",
        "accountId": "00000000-0000-0000-0000-000000000000",
        "lineType": "Item",
        "lineObjectNumber": "1811",
        "description": "Jabra headphone",
        "description2": "",
        "unitOfMeasureId": "62dedcf8-b3d3-ee11-904f-6045bde9c6f5",
        "unitOfMeasureCode": "PCS",
        "quantity": 2,
        "unitPrice": 120,
        "discountAmount": 0,
        "discountPercent": 0,
        "discountAppliedBeforeTax": false,
        "amountExcludingTax": 240,
        "taxCode": "STANDARD",
        "taxPercent": 0,
        "totalTaxAmount": 0,
        "amountIncludingTax": 240,
        "invoiceDiscountAllocation": 0,
        "netAmount": 240,
        "netTaxAmount": 0,
        "netAmountIncludingTax": 240,
        "shipmentDate": "2026-04-30",
        "shippedQuantity": 0,
        "invoicedQuantity": 0,
        "invoiceQuantity": 2,
        "shipQuantity": 2,
        "itemVariantId": "00000000-0000-0000-0000-000000000000",
        "locationId": "00000000-0000-0000-0000-000000000000"
      },
      {
        "@odata.etag": "W/\"JzIwOzE0OTE2NjE3ODEwODczNzg1NzM0MTswMDsn\"",
        "id": "181f5de2-8a44-f111-a820-6045bdc66ee1",
        "documentId": "ca1e5de2-8a44-f111-a820-6045bdc66ee1",
        "sequence": 20000,
        "itemId": "65279004-590d-f111-8405-7ced8d26cf05",
        "accountId": "00000000-0000-0000-0000-000000000000",
        "lineType": "Item",
        "lineObjectNumber": "1781",
        "description": "One Plus 13",
        "description2": "",
        "unitOfMeasureId": "62dedcf8-b3d3-ee11-904f-6045bde9c6f5",
        "unitOfMeasureCode": "PCS",
        "quantity": 2,
        "unitPrice": 70000,
        "discountAmount": 0,
        "discountPercent": 0,
        "discountAppliedBeforeTax": false,
        "amountExcludingTax": 140000,
        "taxCode": "STANDARD",
        "taxPercent": 0,
        "totalTaxAmount": 0,
        "amountIncludingTax": 140000,
        "invoiceDiscountAllocation": 0,
        "netAmount": 140000,
        "netTaxAmount": 0,
        "netAmountIncludingTax": 140000,
        "shipmentDate": "2026-04-30",
        "shippedQuantity": 0,
        "invoicedQuantity": 0,
        "invoiceQuantity": 2,
        "shipQuantity": 2,
        "itemVariantId": "00000000-0000-0000-0000-000000000000",
        "locationId": "00000000-0000-0000-0000-000000000000"
      },
      {
        "@odata.etag": "W/\"JzIwOzE2MjYwMTM5NDk1MDY3OTIyMDc0MTswMDsn\"",
        "id": "3332c5ae-4e48-f111-a820-7ced8d9feb00",
        "documentId": "ca1e5de2-8a44-f111-a820-6045bdc66ee1",
        "sequence": 30000,
        "itemId": "00000000-0000-0000-0000-000000000000",
        "accountId": "dedddcf8-b3d3-ee11-904f-6045bde9c6f5",
        "lineType": "Account",
        "lineObjectNumber": "9510",
        "description": "Corporate Tax",
        "description2": "",
        "unitOfMeasureId": "00000000-0000-0000-0000-000000000000",
        "unitOfMeasureCode": "",
        "quantity": 0,
        "unitPrice": 0,
        "discountAmount": 0,
        "discountPercent": 0,
        "discountAppliedBeforeTax": false,
        "amountExcludingTax": 0,
        "taxCode": "",
        "taxPercent": 0,
        "totalTaxAmount": 0,
        "amountIncludingTax": 0,
        "invoiceDiscountAllocation": 0,
        "netAmount": 0,
        "netTaxAmount": 0,
        "netAmountIncludingTax": 0,
        "shipmentDate": "2026-04-30",
        "shippedQuantity": 0,
        "invoicedQuantity": 0,
        "invoiceQuantity": 0,
        "shipQuantity": 0,
        "itemVariantId": "00000000-0000-0000-0000-000000000000",
        "locationId": "00000000-0000-0000-0000-000000000000"
      }
    ]
  }
]
```
--------------------------

### New Sales Invoices Created

**New Sales Invoices Created** trigger is used to fetch newly created sales invoice records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\NWSLSINVCCRTD10.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch new sales invoice records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzE5OzQzMDQzOTYxMjA4OTAyNDMxOTUxOzAwOyc=\"",
    "id": "748010cf-1265-ef11-a673-6045bde80bc6",
    "number": "103219",
    "externalDocumentNumber": "",
    "invoiceDate": "2024-04-02",
    "postingDate": "2024-04-02",
    "dueDate": "2024-05-02",
    "promisedPayDate": "0001-01-01",
    "customerPurchaseOrderReference": "OPEN",
    "customerId": "e0dddcf8-b3d3-ee11-904f-6045bde9c6f5",
    "customerNumber": "10000",
    "customerName": "The Cannon Group PLC",
    "billToName": "The Cannon Group PLC",
    "billToCustomerId": "e0dddcf8-b3d3-ee11-904f-6045bde9c6f5",
    "billToCustomerNumber": "10000",
    "shipToName": "The Cannon Group PLC",
    "shipToContact": "Robert Townes",
    "sellToAddressLine1": "Station Road, 21",
    "sellToAddressLine2": "",
    "sellToCity": "New Delhi",
    "sellToCountry": "IN",
    "sellToState": "",
    "sellToPostCode": "110002",
    "billToAddressLine1": "Station Road, 21",
    "billToAddressLine2": "",
    "billToCity": "New Delhi",
    "billToCountry": "IN",
    "billToState": "",
    "billToPostCode": "110002",
    "shipToAddressLine1": "Station Road, 21",
    "shipToAddressLine2": "",
    "shipToCity": "New Delhi",
    "shipToCountry": "IN",
    "shipToState": "",
    "shipToPostCode": "110002",
    "currencyId": "00000000-0000-0000-0000-000000000000",
    "shortcutDimension1Code": "",
    "shortcutDimension2Code": "MEDIUM",
    "currencyCode": "USD",
    "orderId": "3ee2d404-b4d3-ee11-904f-6045bde9c6f5",
    "orderNumber": "101001",
    "paymentTermsId": "c2dbdcf8-b3d3-ee11-904f-6045bde9c6f5",
    "shipmentMethodId": "00000000-0000-0000-0000-000000000000",
    "salesperson": "JO",
    "disputeStatusId": "00000000-0000-0000-0000-000000000000",
    "disputeStatus": "",
    "pricesIncludeTax": false,
    "remainingAmount": 944400,
    "discountAmount": 0,
    "discountAppliedBeforeTax": true,
    "totalAmountExcludingTax": 755520,
    "totalTaxAmount": 188880,
    "totalAmountIncludingTax": 944400,
    "status": "Open",
    "lastModifiedDateTime": "2024-08-28T07:55:03.447Z",
    "phoneNumber": "",
    "email": "mr.andy.teal@contoso.com",
    "salesInvoiceLines": [
      {
        "@odata.etag": "W/\"JzE5OzYyNzAxMjg1MjU0NzYzMjY5NTExOzAwOyc=\"",
        "id": "6ef7bd1f-b4d3-ee11-904f-6045bde9c6f5",
        "documentId": "748010cf-1265-ef11-a673-6045bde80bc6",
        "sequence": 10000,
        "itemId": "fcdddcf8-b3d3-ee11-904f-6045bde9c6f5",
        "accountId": "00000000-0000-0000-0000-000000000000",
        "lineType": "Item",
        "lineObjectNumber": "1996-S",
        "description": "ATLANTA Whiteboard, base",
        "description2": "",
        "unitOfMeasureId": "62dedcf8-b3d3-ee11-904f-6045bde9c6f5",
        "unitOfMeasureCode": "PCS",
        "quantity": 12,
        "unitPrice": 62960,
        "discountAmount": 0,
        "discountPercent": 0,
        "discountAppliedBeforeTax": false,
        "amountExcludingTax": 755520,
        "taxCode": "STANDARD",
        "taxPercent": 25,
        "totalTaxAmount": 188880,
        "amountIncludingTax": 944400,
        "invoiceDiscountAllocation": 0,
        "netAmount": 755520,
        "netTaxAmount": 188880,
        "netAmountIncludingTax": 944400,
        "shipmentDate": "2024-04-02",
        "itemVariantId": "00000000-0000-0000-0000-000000000000",
        "locationId": "8bdcdcf8-b3d3-ee11-904f-6045bde9c6f5"
      }
    ]
  }
]
```
---------------------

### New Sales Shipment Created

**New Sales Shipment Created** trigger is used to fetch newly created sales shipment records from Shopify based on a specified time and limit.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-NWSLSSHPMNTCRTD11.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to fetch new sales shipment records. (e.g., "01/05/2024 09:32") |
| Limit | Define the number of records to retrieve. (e.g., "10" or "1") |

> **Note:** Fetch Data Since is mandatory. Limit can be adjusted based on how many records you want to retrieve.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCSTMRCRTD2.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzIwOzEyMDYyNjY2MTU1MTEyNjI4ODcyMTswMDsn\"",
    "id": "7ca10696-2765-ef11-a673-7c1e52326720",
    "number": "102217",
    "externalDocumentNumber": "1131",
    "invoiceDate": "2024-08-27",
    "postingDate": "2024-08-27",
    "dueDate": "2024-08-27",
    "customerPurchaseOrderReference": "",
    "customerId": "86ebeaf9-5664-ef11-a672-6045bde80bc6",
    "customerNumber": "C00080",
    "customerName": "Rakhaeeb Hosh",
    "billToCustomerId": "86ebeaf9-5664-ef11-a672-6045bde80bc6",
    "billToName": "Rakhaeeb Hosh",
    "billToCustomerNumber": "C00080",
    "shipToName": "Rakhaeeb Hosh",
    "shipToContact": "",
    "sellToAddressLine1": "10/7 park avenue",
    "sellToAddressLine2": "10/7 park avenue",
    "sellToCity": "Florida",
    "sellToCountry": "US",
    "sellToState": "",
    "sellToPostCode": "32008",
    "billToAddressLine1": "10/7 park avenue",
    "billToAddressLine2": "10/7 park avenue",
    "billToCity": "Florida",
    "billToCountry": "US",
    "billToState": "FL",
    "billToPostCode": "32008",
    "shipToAddressLine1": "10/7 park avenue",
    "shipToAddressLine2": "10/7 park avenue",
    "shipToCity": "Florida",
    "shipToCountry": "US",
    "shipToState": "FL",
    "shipToPostCode": "32008",
    "currencyCode": "USD",
    "orderNumber": "101005",
    "paymentTermsCode": "",
    "shipmentMethodCode": "",
    "salesperson": "",
    "pricesIncludeTax": false,
    "lastModifiedDateTime": "2024-08-28T10:23:46.64Z",
    "phoneNumber": "",
    "email": "hosh@yopmail.com",
    "customer": {
      "@odata.etag": "W/\"JzE5OzkzMjA3NTMyMTI5Mjk0NjQ1MDYxOzAwOyc=\"",
      "id": "86ebeaf9-5664-ef11-a672-6045bde80bc6",
      "number": "C00080",
      "displayName": "Rakhaeeb Hosh",
      "type": "Company",
      "addressLine1": "10/7 park avenue",
      "addressLine2": "10/7 park avenue",
      "city": "Florida",
      "state": "",
      "country": "US",
      "postalCode": "32008",
      "phoneNumber": "",
      "email": "hosh@yopmail.com",
      "website": "",
      "salespersonCode": "",
      "balanceDue": 9.17,
      "creditLimit": 0,
      "taxLiable": false,
      "taxAreaId": "84e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
      "taxAreaDisplayName": "Domestic customers and vendors",
      "taxRegistrationNumber": "",
      "currencyId": "00000000-0000-0000-0000-000000000000",
      "currencyCode": "USD",
      "paymentTermsId": "00000000-0000-0000-0000-000000000000",
      "shipmentMethodId": "00000000-0000-0000-0000-000000000000",
      "paymentMethodId": "00000000-0000-0000-0000-000000000000",
      "blocked": "_x0020_",
      "lastModifiedDateTime": "2024-10-29T04:57:02.617Z"
    },
    "salesShipmentLines": [
      {
        "@odata.etag": "W/\"JzE5OzExODQ5MjUwMDcwMzMwOTM5MzAxOzAwOyc=\"",
        "id": "92cdfe9b-2765-ef11-a673-7c1e52326720",
        "documentId": "7ca10696-2765-ef11-a673-7c1e52326720",
        "documentNo": "102217",
        "sequence": 10000,
        "lineType": "Item",
        "lineObjectNumber": "GEL101",
        "description": "Pink Cap",
        "description2": "",
        "unitOfMeasureCode": "PCS",
        "unitPrice": 1.11,
        "quantity": 1,
        "discountPercent": 0,
        "taxPercent": 25,
        "shipmentDate": "2024-08-27"
      }
    ]
  }
]
```
--------------------


## Actions

## Customer Action

### Create a New Customer

**Create a New Customer** action is used to create a new customer record with personal and contact details.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-AC-CRTNWCSTMR1.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Customer Number | Enter the unique customer number. (e.g., "DEMO-888") |
| Customer Name | Enter the customer name. (e.g., "Denna Josh") |
| Customer Type | Specify the customer type. (e.g., "Person") |
| Optional Fields | Additional customer details that can be configured. |
| Address Line 1 | Primary address line. (e.g., "Volks Colony") |
| Address Line 2 | Secondary address line. (e.g., "Near Cafe Valley Road") |
| City | City name. (e.g., "Hyderabad") |
| State | State code. (e.g., "TS") |
| Country | Country code. (e.g., "IN") |
| Postal Code | ZIP / Postal code. (e.g., "500036") |
| Phone Number | Contact number. (e.g., "7654890789") |
| Email | Customer email address. (e.g., "denna.josh3@yopmail.com") |
| Tax Liable | Specify tax applicability. (e.g., "True") |

> **Note:** Customer Number, Customer Name, and Customer Type are mandatory. Other fields are optional and can be configured based on requirements.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\C-AC-CRTNWCSTMR2.jpg" width="700" />
<img src="\img\credentials\business-central\C-AC-CRTNWCSTMR3.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.context": "https://api.businesscentral.dynamics.com/v2.0/cba9a7a6-9a96-4d39-929f-d285ffa3b5b6/Production/api/v2.0/$metadata#companies(7ace90d9-b3d3-ee11-904f-6045bde9c6f5)/customers/$entity",
    "@odata.etag": "W/\"JzE5OzU5NjUxNjkwNTY5MTY0OTk1NTQxOzAwOyc=\"",
    "id": "a99e63e6-6b48-f111-a820-7ced8d9feb00",
    "number": "DEMO-888",
    "displayName": "Denna Josh",
    "type": "Person",
    "addressLine1": "Volks Colony",
    "addressLine2": "Near Cafe Valley Road",
    "city": "Hyderabad",
    "state": "TS",
    "country": "IN",
    "postalCode": "500036",
    "phoneNumber": "7654890789",
    "email": "denna.josh3@yopmail.com",
    "website": "",
    "salespersonCode": "",
    "balanceDue": 0,
    "creditLimit": 0,
    "taxLiable": true,
    "taxAreaId": "84e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "taxAreaDisplayName": "Domestic customers and vendors",
    "taxRegistrationNumber": "",
    "currencyId": "00000000-0000-0000-0000-000000000000",
    "currencyCode": "USD",
    "paymentTermsId": "c9dbdcf8-b3d3-ee11-904f-6045bde9c6f5",
    "shipmentMethodId": "00000000-0000-0000-0000-000000000000",
    "paymentMethodId": "12e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "blocked": "_x0020_",
    "lastModifiedDateTime": "2026-05-05T10:19:30.287Z"
  }
]
```
---------------------

### Update a Customer

**Update a Customer** action is used to modify an existing customer record with updated personal and contact details.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-AC-UPDTCSTMR4.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Customer Id (Identifier) | Enter the unique customer identifier. (e.g., "a99e63e6-6b48-f111-a820-7ced8d9feb00") |
| Customer Type | Specify the customer type. (e.g., "Company") |
| Optional Fields | Additional customer details that can be updated. |
| Customer Name | Customer name. (e.g., "Frankle") |
| Address Line 1 | Primary address line. (e.g., "Wave Rock Lane") |
| Address Line 2 | Secondary address line. (e.g., "Jubilee Hills") |
| City | City name. (e.g., "Hyderabad") |
| State | State code. (e.g., "TS") |
| Phone Number | Contact number. (e.g., "9098787653") |

> **Note:** Customer Id and Customer Type are mandatory. Only the provided optional fields will be updated.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-UPDTCSTMR5.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.context": "https://api.businesscentral.dynamics.com/v2.0/cba9a7a6-9a96-4d39-929f-d285ffa3b5b6/Production/api/v2.0/$metadata#companies(7ace90d9-b3d3-ee11-904f-6045bde9c6f5)/customers/$entity",
    "@odata.etag": "W/\"JzE5Ozg5MzgyNTI4Nzc4ODUxNTQwMTkxOzAwOyc=\"",
    "id": "a99e63e6-6b48-f111-a820-7ced8d9feb00",
    "number": "DEMO-888",
    "displayName": "Frankle",
    "type": "Person",
    "addressLine1": "Wave Rock Lane",
    "addressLine2": "Jubilee Hills",
    "city": "Hyderabad",
    "state": "TS",
    "country": "IN",
    "postalCode": "500036",
    "phoneNumber": "9098787653",
    "email": "denna.josh3@yopmail.com",
    "website": "",
    "salespersonCode": "",
    "balanceDue": 0,
    "creditLimit": 0,
    "taxLiable": true,
    "taxAreaId": "84e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "taxAreaDisplayName": "Domestic customers and vendors",
    "taxRegistrationNumber": "",
    "currencyId": "00000000-0000-0000-0000-000000000000",
    "currencyCode": "USD",
    "paymentTermsId": "c9dbdcf8-b3d3-ee11-904f-6045bde9c6f5",
    "shipmentMethodId": "00000000-0000-0000-0000-000000000000",
    "paymentMethodId": "12e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "blocked": "_x0020_",
    "lastModifiedDateTime": "2026-05-05T11:08:01.993Z"
  }
]
```
------------------- 

### Get Customer by Email

**Get Customer by Email** action is used to retrieve customer details using the customer's email address.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-AC-GTCSTMRbyEML6.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Email | Enter the customer email address. (e.g., "denna.josh3@yopmail.com") |

> **Note:** Email is mandatory. The action returns matching customer details for the specified email.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-GTCSTMRbyEML7.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.etag": "W/\"JzE5Ozg5MzgyNTI4Nzc4ODUxNTQwMTkxOzAwOyc=\"",
    "id": "a99e63e6-6b48-f111-a820-7ced8d9feb00",
    "number": "DEMO-888",
    "displayName": "Frankle",
    "type": "Person",
    "addressLine1": "Wave Rock Lane",
    "addressLine2": "Jubilee Hills",
    "city": "Hyderabad",
    "state": "TS",
    "country": "IN",
    "postalCode": "500036",
    "phoneNumber": "9098787653",
    "email": "denna.josh3@yopmail.com",
    "website": "",
    "salespersonCode": "",
    "balanceDue": 0,
    "creditLimit": 0,
    "taxLiable": true,
    "taxAreaId": "84e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "taxAreaDisplayName": "Domestic customers and vendors",
    "taxRegistrationNumber": "",
    "currencyId": "00000000-0000-0000-0000-000000000000",
    "currencyCode": "USD",
    "paymentTermsId": "c9dbdcf8-b3d3-ee11-904f-6045bde9c6f5",
    "shipmentMethodId": "00000000-0000-0000-0000-000000000000",
    "paymentMethodId": "12e0dcf8-b3d3-ee11-904f-6045bde9c6f5",
    "blocked": "_x0020_",
    "lastModifiedDateTime": "2026-05-05T11:08:01.993Z"
  }
]
```
---------------------

## Contact Actions

### Create a New Contact

**Create a New Contact** action is used to create a new contact record with personal, company, and communication details.

#### Select Credentials and Action Events
<img src="\img\credentials\business-central\C-AC-NWCMPNYCRTD9.jpg" width="700" />

Click on **Continue** button.

---------------------------

#### Configuration

| Field | Description |
|------|-------------|
| Full Name | Enter the full name of the contact. (e.g., "Merrie Josh") |
| Optional Fields | Additional contact details that can be configured. |
| Contact Number | Primary contact number. (e.g., "8767890987") |
| Search Name | Short or searchable name. (e.g., "Merrie") |
| Company Name | Associated company name. (e.g., "Tech Co") |
| Address Line 1 | Primary address line. (e.g., "ICP Awfis 800") |
| Address Line 2 | Secondary address line. (e.g., "Jubilee Hills") |
| City | City name. (e.g., "Hyderabad") |
| State | State code. (e.g., "TS") |
| Country | Country code. (e.g., "IN") |
| Postal Code | ZIP / Postal code. (e.g., "500038") |
| Email | Contact email address. (e.g., "merrie.josh3@yopmail.com") |
| Phone Number | Phone number. (e.g., "7658903456") |
| Mobile Phone Number | Mobile number. (e.g., "8790987890") |
| Job Title | Contact job role. (e.g., "Sales Marketing") |
| Type | Contact type. (e.g., "Person") |

> **Note:** Full Name is mandatory. Other fields are optional and can be configured based on requirements.

Click on **Continue**, then **Run** node.

-------------------------

#### Example Configuration
<img src="\img\credentials\business-central\AC-NWCMPNYCRTD10.jpg" width="700" />
<img src="\img\credentials\business-central\AC-NWCMPNYCRTD11.jpg" width="700" />

-------------------------

#### Result

```json
[
  {
    "@odata.context": "https://api.businesscentral.dynamics.com/v2.0/cba9a7a6-9a96-4d39-929f-d285ffa3b5b6/Production/api/v2.0/$metadata#companies(7ace90d9-b3d3-ee11-904f-6045bde9c6f5)/contacts/$entity",
    "@odata.etag": "W/\"JzIwOzExODAyMDgyNzQ5ODc0OTI4MjcwMTswMDsn\"",
    "id": "27423461-7648-f111-a820-7ced8d9feb00",
    "number": "8767890987",
    "type": "Person",
    "displayName": "Merrie Josh",
    "jobTitle": "Sales Marketing",
    "companyNumber": "CT012194",
    "companyName": "AZTECH COMPANY",
    "contactBusinessRelation": "Customer",
    "addressLine1": "ICP Awfis 800",
    "addressLine2": "Jubilee Hills",
    "city": "Hyderabad",
    "state": "",
    "country": "IN",
    "postalCode": "500038",
    "phoneNumber": "7658903456",
    "mobilePhoneNumber": "8790987890",
    "email": "merrie.josh3@yopmail.com",
    "website": "",
    "searchName": "MERRIE",
    "privacyBlocked": false,
    "taxRegistrationNumber": "",
    "lastInteractionDate": "0001-01-01",
    "lastModifiedDateTime": "2026-05-05T11:34:36.21Z"
  }
]
```
-------------------------



















































## Support

Need help? Contact our support team at hello@appse.ai
