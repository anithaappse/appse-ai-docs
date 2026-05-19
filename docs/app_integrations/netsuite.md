---
title: "Netsuite"
slug : /app-integrations/netsuite
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Netsuite is a cloud-based ERP platform that helps businesses manage finance, inventory, CRM, and operations in one unified system. With appse ai, you can connect Netsuite to your workflows to automate record synchronization and key business operations, reducing manual effort and improving process reliability.

---

## Setup Credential

Follow the steps below to quickly set up your Netsuite credential.

### Required Fields

You’ll be asked to fill in the following details:

| Field | Description |
|------|-------------|
| Connection Name | A name to help you identify this connection. |
| NetSuite Account ID | Your NetSuite account ID. |
| Client ID | Client ID from your NetSuite integration record. |
| Client Secret | Client Secret from your NetSuite integration record. |
| API Access Scope | OAuth scopes required for this connection. Use `rest_webservices restlets`. |
| Callback API URL | Redirect URL used during authorization. |

### Step-by-Step Guide

#### 1. Add Connection Name

Provide a name for your credential in the `Connection Name` field. This helps identify the connection in the credential listing page.

#### 2. Find Your NetSuite Account ID

- Log in to your Netsuite account.
- You can also find the account ID directly in the NetSuite URL after login.
- Navigate to `Setup` -> `Company` -> `Company Information`.
- Copy the `Account ID` and use it in appse ai.

> `Note`: Use the account ID exactly as shown in Netsuite.

#### 3. Create a New Integration Record

- In Netsuite, go to `Setup` -> `Integrations` -> `Manage Integrations`.
- Create a new integration record.
- Enter an integration name such as `appse ai integration`.
- Save the integration record.

After saving, copy:

- `Client ID`
- `Client Secret`

#### 4. Set the API Access Scope

- In the `API Access Scope` field, enter:

`rest_webservices restlets`

- Make sure the NetSuite user has the following permissions assigned:
	- `restlets`
	- `REST Web Services`

> `Note`: Both permissions are required for the connection to authorize successfully.

#### 5. Add the Callback API URL

- Copy the callback URL shown in appse ai.
- Use this exact URL in your NetSuite app as an `Authorized Redirect URI`.

Callback URL:

`https://embedded-ui.appse.ai/oauth-callback.html`

#### 6. Add the Fields to appse ai

Add the following in appse ai:

- `Connection Name`
- `NetSuite Account ID`
- `Client ID`
- `Client Secret`
- `API Access Scope`
- `Callback API URL`

Then click on `Save & Authorize`.

### Save Your Credential

Once you've filled in the necessary fields, click `Save & Authorize` to store and authorize your setup.

- If successful, your Netsuite credential will show a connected status and can be used in workflows.
- If it fails, verify the Client ID, Client Secret, Account ID, scopes, callback URL, and required user permissions.

---

## Triggers and Actions

Every application has a pre-defined set of triggers and actions that allow users to perform application-specific activities within the platform. Here is the current Netsuite action set available in the platform.

<Tabs>

<TabItem value="triggers" label="Triggers" default>

### Inventory Item Created

**Inventory Item Created** trigger is activated whenever a new inventory item is created in the system. It is used to automatically capture newly added item details for further processing in workflows.

#### Select Credentials and Trigger Event

<img src="" width="700" />

Click on **Continue** button

----------------------

#### Configuration Fields

| Field | Description |
|------|-------------|
| Fetch Data Since | Specify the date and time to start fetching newly created items. (e.g., "2026-04-01T00:00:00") |
| Limit | Define the maximum number of records to retrieve. (e.g., "10") |

> **Note:** The trigger returns newly created inventory items based on the provided time range and limit. Ensure the correct timestamp is configured to avoid missing records.

------------

#### Example Configuration

<img src="" width="700" />

-------------

#### Result

```json

```

-----------------------

</TabItem>

<TabItem value="actions" label="Actions">

## Customer Action

### Jump to an Action

- [Create a new Customer](#create-a-new-customer)
- [Get customer by mail](#get-customer-by-mail)
- [Get Customer by External Id](#get-customer-by-external-id)
- [Get a item by SKU in itemnumber or itemid](#get-a-item-by-sku-in-itemnumber-or-itemid)
- [Create a new sales order](#create-a-new-sales-order)
- [Get a Order by WebId in phonenumber or externalid](#get-a-order-by-webid-in-phonenumber-or-externalid)

### Create a new Customer

**Create a New Customer** action is used to create a new business partner (customer) in the system with mandatory and optional details such as contact information and addresses.

#### Select Credentials and Action Event

<img src="" width="700" />

Click on **Continue** button

-----------------

#### Configuration Fields

| Field | Description |
|------|-------------|
| CardCode | Unique identifier for the customer. (e.g., "CUST-001") |

#### Optional Fields

| Field | Description |
|------|-------------|
| Customer Name | Name of the customer. (e.g., "ABC Pvt Ltd") |
| Phone1 | Primary contact number. (e.g., "9876543210") |
| Email Address | Customer email address. (e.g., "abc@test.com") |

#### BPA Addresses (Optional)

| Field | Description |
|------|-------------|
| Address Name | Name of the address. (e.g., "Head Office") |
| Address Type | Type of address (**Ship To** or **Bill To**). (e.g., "Ship To") |

#### Address Optional Fields

| Field | Description |
|------|-------------|
| Street | Street name. (e.g., "MG Road") |
| Block or Sector | Area or sector. (e.g., "Sector 5") |
| Zip Code | Postal code. (e.g., "500001") |
| City | City name. (e.g., "Hyderabad") |
| Country | Country name. (e.g., "India") |
| State | State name. (e.g., "Telangana") |

#### Contact Employees (Optional)

| Field | Description |
|------|-------------|
| Name | Contact person name. (e.g., "Ravi Kumar") |

#### Contact Employee Optional Fields

| Field | Description |
|------|-------------|
| First Name | First name of contact person. (e.g., "Ravi") |
| Last Name | Last name of contact person. (e.g., "Kumar") |
| Phone1 | Contact number. (e.g., "9123456789") |
| Email Address | Contact email. (e.g., "ravi@test.com") |

> **Note:** CardCode is mandatory. All other fields are optional and can be configured based on business requirements.

Click on **Continue**, then **Run** node

---------------

#### Example Configuration

<img src="" width="700" />

-------------------

#### Result

```json

```

-----------------------

### Get customer by mail

**Get customer by mail** action is used to fetch customer details from the system using the customer email address.

#### Select Credentials and Action Event

<img src="" width="700" />

Click on **Continue** button

-----------------

#### Configuration Fields

| Field | Description |
|------|-------------|
| Email Address | Email address used to fetch the customer. (e.g., "abc@test.com") |

> **Note:** Email Address is mandatory. All other fields are optional and can be configured based on business requirements.

Click on **Continue**, then **Run** node

---------------

#### Example Configuration

<img src="" width="700" />

-------------------

#### Result

```json

```

-----------------------

### Get Customer by External Id

**Get Customer by External Id** action is used to fetch customer details from the system using the customer external ID.

#### Select Credentials and Action Event

<img src="" width="700" />

Click on **Continue** button

-----------------

#### Configuration Fields

| Field | Description |
|------|-------------|
| External Id | External identifier used to fetch the customer. (e.g., "EXT-CUST-001") |

> **Note:** External Id is mandatory. All other fields are optional and can be configured based on business requirements.

Click on **Continue**, then **Run** node

---------------

#### Example Configuration

<img src="" width="700" />

-------------------

#### Result

```json

```

-----------------------

## Item Action

### Get a item by SKU in itemnumber or itemid

**Get a item by SKU in itemnumber or itemid** action is used to fetch item details from the system using the item SKU, item number, or item ID.

#### Select Credentials and Action Event

<img src="" width="700" />

Click on **Continue** button

-----------------

#### Configuration Fields

| Field | Description |
|------|-------------|
| Item Number | Item number used to fetch the item. (e.g., "ITEM-001") |
| Item ID | Item ID used to fetch the item. (e.g., "12345") |
| SKU | Stock Keeping Unit used to fetch the item. (e.g., "SKU-PROD-789") |

> **Note:** At least one of Item Number, Item ID, or SKU is mandatory. All other fields are optional and can be configured based on business requirements.

Click on **Continue**, then **Run** node

---------------

#### Example Configuration

<img src="" width="700" />

-------------------

#### Result

```json

```

-----------------------

## Sales Order Action

### Create a new sales order

**Create a new sales order** action is used to create a sales order in the system with customer details, order dates, and item line information.

#### Select Credentials and Action Event

<img src="" width="700" />

Click on **Continue** button

-----------------

#### Configuration Fields

| Field | Description |
|------|-------------|
| Customer External Id | External identifier of the customer for whom the sales order is created. (e.g., "EXT-CUST-001") |
| Transaction Date | Sales order transaction date. (e.g., "2026-04-22") |

#### Optional Fields

| Field | Description |
|------|-------------|
| Memo | Internal note or description for the sales order. (e.g., "Created from appse ai workflow") |
| External Id | External identifier for the sales order record. (e.g., "SO-EXT-001") |
| Due Date | Due date for the sales order. (e.g., "2026-04-30") |

#### Item Lines

| Field | Description |
|------|-------------|
| Item Id | Item identifier to add to the sales order. (e.g., "12345") |
| Quantity | Quantity of the item to order. (e.g., "2") |

#### Item Line Optional Fields

| Field | Description |
|------|-------------|
| Rate | Price or rate for the item line. (e.g., "1500") |
| Amount | Total amount for the item line. (e.g., "3000") |
| Description | Description for the line item. (e.g., "Laptop order") |

> **Note:** Customer External Id, Transaction Date, and at least one item line are mandatory. All other fields are optional and can be configured based on business requirements.

Click on **Continue**, then **Run** node

---------------

#### Example Configuration

<img src="" width="700" />

-------------------

#### Result

```json

```

-----------------------

### Get a Order by WebId in phonenumber or externalid

**Get a Order by WebId in phonenumber or externalid** action is used to fetch sales order details from the system using the web ID, phone number, or external ID.

#### Select Credentials and Action Event

<img src="" width="700" />

Click on **Continue** button

-----------------

#### Configuration Fields

| Field | Description |
|------|-------------|
| Web Id | Web identifier used to fetch the sales order. (e.g., "WEB-ORDER-001") |
| Phone Number | Customer phone number associated with the sales order. (e.g., "9876543210") |
| External Id | External identifier used to fetch the sales order. (e.g., "SO-EXT-001") |

> **Note:** At least one of Web Id, Phone Number, or External Id is mandatory. All other fields are optional and can be configured based on business requirements.

Click on **Continue**, then **Run** node

---------------

#### Example Configuration

<img src="" width="700" />

-------------------

#### Result

```json

```

-----------------------

</TabItem>

</Tabs>


## Need Help?

If you’re unsure about any field or face connection issues, reach out to our support team at hello@appse.ai
