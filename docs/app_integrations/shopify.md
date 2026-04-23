---
title: "Shopify"
slug : /app-integrations/shopify/
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

Shopify is a powerful e-commerce platform that enables businesses to build, customize, and manage their online stores with ease. With appse ai, you can connect your Shopify account to automate key operations such as order management, customer data synchronization, and product updates. This integration helps streamline your e-commerce workflows, reduce manual effort, and ensure that your online store runs efficiently across all connected systems.

---

## Setup Credential

Follow the steps below to quickly set up your Shopify credential.

### Required Fields

You’ll be asked to fill in the following details:

| Field       | Description                                  |
|-------------|----------------------------------------------|
| Connection name   | A name to help you identify this connection.  |
| Store Subdomain        | Your shopify store ID |
| Admin API Access Token    | Create a custom app in order to obtain this.  |

First things first - Log in to your [Shopify account](https://accounts.shopify.com/select?rid=539d146c-195f-4011-97ab-fe776d9c0e58). Then follow the Step-by-step guide.

## Step-by-Step Guide

### Find your Store Subdomain

<img src="\img\credentials\shopify\settings.png" alt="appse ai Shopify Settings" width="700"/>

Go to settings, and under your store name, you will find your Shopify store subdomain.


<img src="\img\credentials\shopify\store-id.png" alt="appse ai shopify store id" width="700"/>

> `For example`: If your Shopify Subdomain looks like “5bazzn-ja.myshopify.com”, you only need to paste 5bazzn-ja in the credential form.

### Find your Admin API access token

<img src="\img\credentials\shopify\develop-apps.png" alt="appse ai shopify develop apps" width="700"/>

In the settings section, navigate to “Apps and Sales Channels” and then “Develop Apps”.

#### Enable Custom Legacy app button

<img src="\img\credentials\shopify\allow-legacy-custom-app-development.png" alt="appse ai allow custom legacy apps shopify" width="400"/>

<img src="\img\credentials\shopify\allow-legacy-custom-app-development-2.png" alt="appse ai allow custom legacy app development shopify 2" width="400"/>

Click on “Allow custom legacy app development” then click on “Allow custom app development”.

<img src="\img\credentials\shopify\allow-legacy-custom-app-development-3.png" alt="appse ai allow custom legacy app development shopify 3" width="400"/>

<img src="\img\credentials\shopify\create-legacy-app.png" alt="appse ai shopify create legacy app" width="400"/>

You should see a “Create a custom legacy app” button, click on it.

### Create app

<img src="\img\credentials\shopify\create-app-name.png" alt="appse ai shopify create app name" width="700"/>

Set up a name for your custom app and click on the “Create app button”.

### Configure Scopes

<img src="\img\credentials\shopify\choose-scopes-button.png" alt="appse ai shopify choose scopes button" width="700"/>

Click on Configure Admin API scopes and tick off the scopes mentioned below:

`read_all_orders`  `read_customers`  `write_customers`  `read_fulfillments`  `write_fulfillments`  `read_inventory`  `write_inventory`  `read_locations`  `write_locations`  `read_orders`  `write_orders`  `read_products`  `write_products`  `read_publications`  `write_publications`  `read_discounts`  `write_discounts`  `read_shipping`  `write_shipping`

<img src="\img\credentials\shopify\choose-scopes.png" alt="appse ai shopify choose scopes" width="700"/>

Once you have all the scopes selected, click “Save”.

### Install App

<img src="\img\credentials\shopify\install-app.png" alt="appse ai shopify install app" width="700"/>

Return to the Overview tab and click on the “Install” button.

### Find Admin API Access token

<img src="\img\credentials\shopify\admin-api-access-token.png" alt="appse ai shopify admin api access token" width="700"/>

In the API credentials tab, you will have your Admin API Access Token.

Click on the “reveal token once button”. Copy the token and store it somewhere secure; you will not be able to see it again.

> `Note`: The Admin API access token is shown only once. If you lost, you will have to create a custom app again.

### Add the fields to appse ai

<img src="\img\credentials\shopify\Configuration.jpg" width="700" />

Add Store Subdomain and Admin API access token in appse ai. And click on the “save” button.

If you followed all the steps correctly, your credential should be connected.

### Save Your Credential

Once you've filled in the necessary fields, click `Save` to store and verify your setup.
If successful, your Shopify credential will show a "✓" icon. Now you can use this application for your integrations.

If it fails, you will be displayed a "!" icon. In that case, please recheck your Store Subdomain and Admin API Access Token or contact support.

---

## Triggers and Actions

Every application has a pre-defined set of triggers and actions that allow users to perform application-specific activities within the platform. Here is the current Shopify action set available in the platform.

<Tabs>

<TabItem value="triggers" label="Triggers" default>

### Trigger Events

- [New Company Created](#new-company-created)
- [New Customer Created](#new-customer-created)
- [Customer Updated](#customer-updated)
- [New Company Location Created](#new-company-location-created)
- [New Product Created](#new-product-created)
- [Products Updated](#products-updated)
- [New Order Created](#new-order-created)
- [Orders Cancelled](#orders-cancelled)
- [New Refund Created](#new-refund-created)
- [New Return Created](#new-return-created)
- [New Abandoned Checkout](#new-abandoned-checkout)

### New Company Created

**New Company Created** trigger is activated whenever a new company is created in the Shopify. It helps capture newly added company records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-NCMPNYC1.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch newly created items from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "id": "gid://shopify/Company/733937836",
    "name": "WinterFell",
    "note": null,
    "createdAt": "2024-12-27T06:15:31Z",
    "updatedAt": "2024-12-27T06:15:32Z",
    "customerSince": "2024-12-27T06:15:31Z",
    "externalId": null,
    "contactRoles": {
      "nodes": [
        {
          "id": "gid://shopify/CompanyContactRole/1404371116",
          "name": "Location admin",
          "note": "System-defined Location admin role"
        },
        {
          "id": "gid://shopify/CompanyContactRole/1404403884",
          "name": "Ordering only",
          "note": "System-defined Ordering only role"
        }
      ]
    },
    "contacts": {
      "nodes": [
        {
          "id": "gid://shopify/CompanyContact/502857900",
          "title": null,
          "customer": {
            "id": "gid://shopify/Customer/8221165420716",
            "email": "aryastrk@yopmail.com",
            "firstName": "Aryaa",
            "lastName": "Staark Staark Staark Staark Staark Staark Staark Staar"
          },
          "createdAt": "2024-12-27T06:15:31Z",
          "updatedAt": "2024-12-27T06:15:32Z",
          "__typename": "CompanyContact"
        }
      ]
    },
    "contactsCount": {
      "count": 1,
      "precision": "EXACT"
    },
    "defaultRole": {
      "id": "gid://shopify/CompanyContactRole/1404403884",
      "name": "Ordering only",
      "note": "System-defined Ordering only role"
    },
    "locations": {
      "nodes": [
        {
          "billingAddress": {
            "id": "gid://shopify/CompanyAddress/955318444",
            "address1": "Begumpet",
            "address2": "AecCompany",
            "city": "Hyderabad",
            "zip": "500038",
            "companyName": "WinterFell",
            "country": "India",
            "countryCode": "IN",
            "createdAt": "2024-12-27T06:15:31Z",
            "phone": "+919191919191",
            "province": "Telangana",
            "zoneCode": "TS",
            "updatedAt": "2024-12-27T06:15:31Z",
            "formattedAddress": [
              "WinterFell",
              "Begumpet",
              "AecCompany",
              "500038 Hyderabad TS",
              "India"
            ],
            "firstName": "Arya",
            "lastName": "Stark",
            "formattedArea": "Hyderabad TG, India",
            "recipient": "WinterFell "
          },
          "shippingAddress": {
            "id": "gid://shopify/CompanyAddress/955285676",
            "address1": "Begumpet",
            "address2": "AecCompany",
            "city": "Hyderabad",
            "companyName": "WinterFell",
            "zip": "500038",
            "phone": "+919191919191",
            "province": "Telangana",
            "lastName": "Stark",
            "firstName": "Arya",
            "formattedAddress": [
              "WinterFell",
              "Begumpet",
              "AecCompany",
              "500038 Hyderabad TS",
              "India"
            ],
            "formattedArea": "Hyderabad TG, India",
            "country": "India",
            "countryCode": "IN",
            "zoneCode": "TS",
            "createdAt": "2024-12-27T06:15:31Z",
            "updatedAt": "2024-12-27T06:15:31Z",
            "recipient": "WinterFell "
          },
          "taxSettings": {
            "taxExempt": false,
            "taxExemptions": []
          },
          "catalogs": {
            "nodes": []
          }
        }
      ]
    },
    "orders": {
      "nodes": []
    },
    "ordersCount": {
      "__typename": "Count",
      "count": 0,
      "precision": "EXACT"
    },
    "metafields": {
      "nodes": []
    }
  }
]
```
----------------

### New Customer Created

**New Customer Created** trigger is activated whenever a new customer is created in the Shopify. It helps capture newly added customer records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-NCUSTMRC3.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch newly created items from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "id": "gid://shopify/Customer/7703263445164",
    "firstName": "Don",
    "lastName": "Max",
    "defaultEmailAddress": {
      "emailAddress": "shawn.michel@yopmail.com",
      "marketingState": "NOT_SUBSCRIBED"
    },
    "metafields": {
      "nodes": []
    },
    "defaultPhoneNumber": {
      "phoneNumber": "+919988779898",
      "marketingState": "NOT_SUBSCRIBED",
      "marketingCollectedFrom": null
    },
    "smsMarketingConsent": {
      "marketingState": "NOT_SUBSCRIBED",
      "marketingOptInLevel": "SINGLE_OPT_IN",
      "consentUpdatedAt": null
    },
    "createdAt": "2024-05-27T05:54:24Z",
    "updatedAt": "2025-11-25T12:56:53Z",
    "numberOfOrders": "2",
    "state": "DISABLED",
    "amountSpent": {
      "amount": "0.0",
      "currencyCode": "USD"
    },
    "verifiedEmail": true,
    "taxExempt": false,
    "tags": [],
    "addresses": [
      {
        "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
        "firstName": "Shawn",
        "lastName": "Michel",
        "company": "",
        "address1": "New Street",
        "city": "Los Angeles",
        "province": "California",
        "country": "United States",
        "zip": "90001",
        "phone": "+11234512345",
        "name": "Shawn Michel",
        "provinceCode": "CA",
        "countryCodeV2": "US"
      }
    ],
    "defaultAddress": {
      "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
      "address1": "New Street",
      "city": "Los Angeles",
      "province": "California",
      "country": "United States",
      "zip": "90001",
      "phone": "+11234512345",
      "provinceCode": "CA",
      "countryCodeV2": "US"
    }
  }
]
```
----------------

### Customer Updated

**Customer Updated** trigger is activated whenever a customer is updated in the Shopify. It helps capture modified customer records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-CUSTMRU4.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch updated items from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "id": "gid://shopify/Customer/7703263445164",
    "firstName": "Don",
    "lastName": "Max",
    "defaultEmailAddress": {
      "emailAddress": "shawn.michel@yopmail.com",
      "marketingState": "NOT_SUBSCRIBED"
    },
    "metafields": {
      "nodes": []
    },
    "defaultPhoneNumber": {
      "phoneNumber": "+919988779898",
      "marketingState": "NOT_SUBSCRIBED",
      "marketingCollectedFrom": null
    },
    "smsMarketingConsent": {
      "marketingState": "NOT_SUBSCRIBED",
      "marketingOptInLevel": "SINGLE_OPT_IN",
      "consentUpdatedAt": null
    },
    "createdAt": "2024-05-27T05:54:24Z",
    "updatedAt": "2025-11-25T12:56:53Z",
    "numberOfOrders": "2",
    "state": "DISABLED",
    "amountSpent": {
      "amount": "0.0",
      "currencyCode": "USD"
    },
    "verifiedEmail": true,
    "taxExempt": false,
    "tags": [],
    "addresses": [
      {
        "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
        "firstName": "Shawn",
        "lastName": "Michel",
        "company": "",
        "address1": "New Street",
        "city": "Los Angeles",
        "province": "California",
        "country": "United States",
        "zip": "90001",
        "phone": "+11234512345",
        "name": "Shawn Michel",
        "provinceCode": "CA",
        "countryCodeV2": "US"
      }
    ],
    "defaultAddress": {
      "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
      "address1": "New Street",
      "city": "Los Angeles",
      "province": "California",
      "country": "United States",
      "zip": "90001",
      "phone": "+11234512345",
      "provinceCode": "CA",
      "countryCodeV2": "US"
    }
  }
]
```
----------------


### New Company Location Created

**New Company Location Created** trigger is activated whenever a new company location is created in the Shopify. It helps capture newly added company location records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-CMPNYLOCTINC5.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch newly created items from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "id": "gid://shopify/CompanyLocation/769884332",
    "createdAt": "2024-12-27T06:15:31Z",
    "updatedAt": "2024-12-27T06:15:32Z",
    "name": "WinterFell",
    "note": null,
    "billingAddress": {
      "id": "gid://shopify/CompanyAddress/955318444",
      "city": "Hyderabad",
      "companyName": "WinterFell",
      "firstName": "Arya",
      "lastName": "Stark",
      "zip": "500038",
      "phone": "+919191919191",
      "province": "Telangana",
      "zoneCode": "TS",
      "countryCode": "IN",
      "country": "India",
      "__typename": "CompanyAddress",
      "createdAt": "2024-12-27T06:15:31Z",
      "updatedAt": "2024-12-27T06:15:31Z"
    },
    "shippingAddress": {
      "id": "gid://shopify/CompanyAddress/955285676",
      "city": "Hyderabad",
      "companyName": "WinterFell",
      "firstName": "Arya",
      "lastName": "Stark",
      "zip": "500038",
      "phone": "+919191919191",
      "province": "Telangana",
      "zoneCode": "TS",
      "countryCode": "IN",
      "country": "India",
      "__typename": "CompanyAddress",
      "createdAt": "2024-12-27T06:15:31Z",
      "updatedAt": "2024-12-27T06:15:31Z"
    },
    "buyerExperienceConfiguration": {
      "checkoutToDraft": false,
      "editableShippingAddress": false,
      "paymentTermsTemplate": null
    },
    "company": {
      "id": "gid://shopify/Company/733937836",
      "name": "WinterFell",
      "note": null,
      "contacts": {
        "nodes": [
          {
            "id": "gid://shopify/CompanyContact/502857900",
            "isMainContact": true,
            "title": null
          }
        ]
      }
    },
    "orders": {
      "nodes": []
    },
    "taxSettings": {
      "taxExempt": false,
      "taxExemptions": []
    }
  }
]
```
----------------

### New Product Created

**New Product Created** trigger is activated whenever a new product is created in the Shopify. It helps capture newly added product records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-NPRDTC6.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch newly created items from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "id": "gid://shopify/Product/7947306008748",
    "title": "TEST1",
    "description": "TEST1",
    "productType": "Simple",
    "handle": "test1",
    "totalInventory": 2000,
    "tags": [],
    "createdAt": "2024-05-27T09:57:09Z",
    "updatedAt": "2026-03-22T06:24:36Z",
    "status": "ACTIVE",
    "unpublishedPublications": {
      "nodes": [
        {
          "id": "gid://shopify/Publication/123613937836"
        },
        {
          "id": "gid://shopify/Publication/124182200492"
        }
      ]
    },
    "metafields": {
      "nodes": []
    },
    "variants": {
      "nodes": [
        {
          "sku": "QASY0002",
          "id": "gid://shopify/ProductVariant/43504611917996",
          "title": "Default Title",
          "price": "100.00",
          "displayName": "TEST1 - Default Title",
          "inventoryItem": {
            "id": "gid://shopify/InventoryItem/45577551904940",
            "sku": "QASY0002",
            "inventoryLevels": {
              "nodes": [
                {
                  "location": {
                    "id": "gid://shopify/Location/71018905772",
                    "name": "Shop location",
                    "address": {
                      "address1": "California",
                      "address2": "APT",
                      "city": "California",
                      "province": "California",
                      "country": "United States",
                      "zip": "00029"
                    }
                  }
                },
                {
                  "location": {
                    "id": "gid://shopify/Location/71027851436",
                    "name": "Hyderabad Warehouse",
                    "address": {
                      "address1": "Hyderabad",
                      "address2": "Near Metro Pillar N0 1034, Kauveri Apartmets",
                      "city": "Hyderabad",
                      "province": "Telangana",
                      "country": "India",
                      "zip": "500038"
                    }
                  }
                }
              ]
            }
          }
        }
      ]
    }
  }
]
```
----------------

### Products Updated

**Products Updated** trigger is activated whenever a product is updated in the Shopify. It helps capture modified product records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-PRDCTU7.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch updated items from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "id": "gid://shopify/Product/7947306008748",
    "title": "TEST1",
    "description": "TEST1",
    "productType": "Simple",
    "handle": "test1",
    "totalInventory": 2000,
    "tags": [],
    "createdAt": "2024-05-27T09:57:09Z",
    "updatedAt": "2026-03-22T06:24:36Z",
    "status": "ACTIVE",
    "unpublishedPublications": {
      "nodes": [
        {
          "id": "gid://shopify/Publication/123613937836"
        },
        {
          "id": "gid://shopify/Publication/124182200492"
        }
      ]
    },
    "metafields": {
      "nodes": []
    },
    "variants": {
      "nodes": [
        {
          "sku": "QASY0002",
          "id": "gid://shopify/ProductVariant/43504611917996",
          "title": "Default Title",
          "price": "100.00",
          "displayName": "TEST1 - Default Title",
          "inventoryItem": {
            "id": "gid://shopify/InventoryItem/45577551904940",
            "sku": "QASY0002",
            "inventoryLevels": {
              "nodes": [
                {
                  "location": {
                    "id": "gid://shopify/Location/71018905772",
                    "name": "Shop location",
                    "address": {
                      "address1": "California",
                      "address2": "APT",
                      "city": "California",
                      "province": "California",
                      "country": "United States",
                      "zip": "00029"
                    }
                  }
                },
                {
                  "location": {
                    "id": "gid://shopify/Location/71027851436",
                    "name": "Hyderabad Warehouse",
                    "address": {
                      "address1": "Hyderabad",
                      "address2": "Near Metro Pillar N0 1034, Kauveri Apartmets",
                      "city": "Hyderabad",
                      "province": "Telangana",
                      "country": "India",
                      "zip": "500038"
                    }
                  }
                }
              ]
            }
          }
        }
      ]
    }
  }
]
```
----------------

### New Order Created

**New Order Created** trigger is activated whenever a new order is created in the Shopify. It helps capture newly added order records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-NORDC8.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch newly created items from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "billingAddress": {
      "id": "gid://shopify/MailingAddress/12566611820716?model_name=Address",
      "firstName": "Shawn",
      "lastName": "Michel",
      "company": null,
      "address1": "New Street",
      "address2": "New APT 01",
      "city": "New Town",
      "country": "India",
      "countryCodeV2": "IN",
      "zip": "700156",
      "province": "West Bengal",
      "provinceCode": "WB"
    },
    "shippingAddress": {
      "id": "gid://shopify/MailingAddress/12566611787948?model_name=Address",
      "firstName": "Shawn",
      "lastName": "Michel",
      "company": null,
      "address1": "New Street",
      "address2": "New APT 01",
      "city": "New Town",
      "country": "India",
      "countryCodeV2": "IN",
      "zip": "700156",
      "province": "West Bengal",
      "provinceCode": "WB"
    },
    "tags": [],
    "metafields": {
      "nodes": []
    },
    "customer": {
      "id": "gid://shopify/Customer/7703263445164",
      "firstName": "Don",
      "lastName": "Max",
      "displayName": "Don Max",
      "phone": "+919988779898",
      "email": "shawn.michel@yopmail.com",
      "addresses": [
        {
          "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
          "address1": "New Street",
          "address2": "New APT 01",
          "city": "Los Angeles",
          "country": "United States",
          "countryCodeV2": "US",
          "firstName": "Shawn",
          "lastName": "Michel",
          "name": "Shawn Michel",
          "phone": "+11234512345",
          "province": "California",
          "provinceCode": "CA",
          "zip": "90001"
        }
      ],
      "defaultAddress": {
        "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
        "address1": "New Street",
        "address2": "New APT 01",
        "city": "Los Angeles",
        "country": "United States",
        "countryCodeV2": "US",
        "firstName": "Shawn",
        "lastName": "Michel",
        "name": "Shawn Michel",
        "phone": "+11234512345",
        "province": "California",
        "provinceCode": "CA",
        "zip": "90001"
      }
    },
    "id": "gid://shopify/Order/6012594225324",
    "name": "#1001",
    "createdAt": "2024-05-27T06:01:08Z",
    "currencyCode": "USD",
    "displayFinancialStatus": "REFUNDED",
    "email": "shawn.michel@yopmail.com",
    "fullyPaid": true,
    "updatedAt": "2024-07-08T12:53:40Z",
    "paymentTerms": null,
    "currentSubtotalPriceSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "transactions": [
      {
        "id": "gid://shopify/OrderTransaction/7215226421420",
        "gateway": "manual",
        "paymentIcon": {
          "altText": "other"
        },
        "accountNumber": "",
        "amountSet": {
          "presentmentMoney": {
            "amount": "100.0"
          }
        }
      },
      {
        "id": "gid://shopify/OrderTransaction/7325794861228",
        "gateway": "manual",
        "paymentIcon": {
          "altText": "unknown"
        },
        "accountNumber": "",
        "amountSet": {
          "presentmentMoney": {
            "amount": "100.0"
          }
        }
      }
    ],
    "totalDiscountsSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "discountApplications": {
      "nodes": []
    },
    "lineItems": {
      "nodes": [
        {
          "id": "gid://shopify/LineItem/14588819210412",
          "sku": "AM-A-01",
          "quantity": 1,
          "title": "SM Anchor 10A",
          "name": "SM Anchor 10A",
          "originalUnitPriceSet": {
            "presentmentMoney": {
              "amount": "100.0"
            }
          },
          "taxLines": []
        }
      ]
    },
    "fulfillmentOrders": {
      "nodes": [
        {
          "id": "gid://shopify/FulfillmentOrder/6961387962540",
          "lineItems": {
            "nodes": [
              {
                "id": "gid://shopify/FulfillmentOrderLineItem/14723974693036"
              }
            ]
          }
        }
      ]
    },
    "taxLines": [],
    "currentTotalTaxSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "shippingLines": {
      "nodes": []
    }
  }
]
```
----------------

### Orders Cancelled

**Orders Cancelled** trigger is activated whenever an order is cancelled in the Shopify. It helps capture cancelled order records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-ORDCANCLD9.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch cancelled items from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "billingAddress": {
      "id": "gid://shopify/MailingAddress/12566611820716?model_name=Address",
      "firstName": "Shawn",
      "lastName": "Michel",
      "company": null,
      "address1": "New Street",
      "address2": "New APT 01",
      "city": "New Town",
      "country": "India",
      "countryCodeV2": "IN",
      "zip": "700156",
      "province": "West Bengal",
      "provinceCode": "WB"
    },
    "shippingAddress": {
      "id": "gid://shopify/MailingAddress/12566611787948?model_name=Address",
      "firstName": "Shawn",
      "lastName": "Michel",
      "company": null,
      "address1": "New Street",
      "address2": "New APT 01",
      "city": "New Town",
      "country": "India",
      "countryCodeV2": "IN",
      "zip": "700156",
      "province": "West Bengal",
      "provinceCode": "WB"
    },
    "tags": [],
    "cancelledAt": "2024-07-08T12:53:40Z",
    "refunds": [
      {
        "id": "gid://shopify/Refund/904384315564",
        "note": "Order canceled",
        "refundLineItems": {
          "edges": [
            {
              "node": {
                "id": "gid://shopify/RefundLineItem/416966934700",
                "lineItem": {
                  "id": "gid://shopify/LineItem/14588819210412",
                  "currentQuantity": 0
                }
              }
            }
          ]
        }
      }
    ],
    "returns": {
      "edges": []
    },
    "returnStatus": "NO_RETURN",
    "metafields": {
      "edges": []
    },
    "customer": {
      "id": "gid://shopify/Customer/7703263445164",
      "firstName": "Don",
      "lastName": "Max",
      "displayName": "Don Max",
      "phone": "+919988779898",
      "email": "shawn.michel@yopmail.com",
      "addresses": [
        {
          "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
          "address1": "New Street",
          "address2": "New APT 01",
          "city": "Los Angeles",
          "country": "United States",
          "countryCodeV2": "US",
          "firstName": "Shawn",
          "lastName": "Michel",
          "name": "Shawn Michel",
          "phone": "+11234512345",
          "province": "California",
          "provinceCode": "CA",
          "zip": "90001"
        }
      ],
      "defaultAddress": {
        "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
        "address1": "New Street",
        "address2": "New APT 01",
        "city": "Los Angeles",
        "country": "United States",
        "countryCodeV2": "US",
        "firstName": "Shawn",
        "lastName": "Michel",
        "name": "Shawn Michel",
        "phone": "+11234512345",
        "province": "California",
        "provinceCode": "CA",
        "zip": "90001"
      }
    },
    "id": "gid://shopify/Order/6012594225324",
    "name": "#1001",
    "createdAt": "2024-05-27T06:01:08Z",
    "currencyCode": "USD",
    "displayFinancialStatus": "REFUNDED",
    "email": "shawn.michel@yopmail.com",
    "fullyPaid": true,
    "updatedAt": "2024-07-08T12:53:40Z",
    "currentSubtotalPriceSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "transactions": [
      {
        "id": "gid://shopify/OrderTransaction/7215226421420",
        "gateway": "manual",
        "paymentIcon": {
          "altText": "other"
        },
        "accountNumber": "",
        "amountSet": {
          "presentmentMoney": {
            "amount": "100.0"
          }
        }
      },
      {
        "id": "gid://shopify/OrderTransaction/7325794861228",
        "gateway": "manual",
        "paymentIcon": {
          "altText": "unknown"
        },
        "accountNumber": "",
        "amountSet": {
          "presentmentMoney": {
            "amount": "100.0"
          }
        }
      }
    ],
    "totalDiscountsSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "discountApplications": {
      "edges": []
    },
    "lineItems": {
      "edges": [
        {
          "node": {
            "id": "gid://shopify/LineItem/14588819210412",
            "sku": "AM-A-01",
            "quantity": 1,
            "title": "SM Anchor 10A",
            "name": "SM Anchor 10A",
            "originalUnitPriceSet": {
              "presentmentMoney": {
                "amount": "100.0"
              }
            },
            "variant": null,
            "taxLines": []
          }
        }
      ]
    },
    "fulfillmentOrders": {
      "edges": [
        {
          "node": {
            "id": "gid://shopify/FulfillmentOrder/6961387962540",
            "lineItems": {
              "edges": [
                {
                  "node": {
                    "id": "gid://shopify/FulfillmentOrderLineItem/14723974693036"
                  }
                }
              ]
            }
          }
        }
      ]
    },
    "taxLines": [],
    "currentTotalTaxSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "shippingLines": {
      "edges": []
    }
  }
]
```
----------------

### New Refund Created

**New Refund Created** trigger is activated whenever a new refund is created in the Shopify. It helps capture newly created refund records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-NRFNDC10.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch newly created refunds from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "id": "gid://shopify/Order/6012594225324",
    "name": "#1001",
    "createdAt": "2024-05-27T06:01:08Z",
    "updatedAt": "2024-07-08T12:53:40Z",
    "cancelledAt": "2024-07-08T12:53:40Z",
    "currencyCode": "USD",
    "displayFinancialStatus": "REFUNDED",
    "email": "shawn.michel@yopmail.com",
    "fullyPaid": true,
    "tags": [],
    "returnStatus": "NO_RETURN",
    "billingAddress": {
      "id": "gid://shopify/MailingAddress/12566611820716?model_name=Address",
      "firstName": "Shawn",
      "lastName": "Michel",
      "company": null,
      "address1": "New Street",
      "address2": "New APT 01",
      "city": "New Town",
      "country": "India",
      "countryCodeV2": "IN",
      "zip": "700156",
      "province": "West Bengal",
      "provinceCode": "WB"
    },
    "shippingAddress": {
      "id": "gid://shopify/MailingAddress/12566611787948?model_name=Address",
      "firstName": "Shawn",
      "lastName": "Michel",
      "company": null,
      "address1": "New Street",
      "address2": "New APT 01",
      "city": "New Town",
      "country": "India",
      "countryCodeV2": "IN",
      "zip": "700156",
      "province": "West Bengal",
      "provinceCode": "WB"
    },
    "customer": {
      "id": "gid://shopify/Customer/7703263445164",
      "firstName": "Don",
      "lastName": "Max",
      "displayName": "Don Max",
      "phone": "+919988779898",
      "email": "shawn.michel@yopmail.com",
      "addresses": [
        {
          "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
          "address1": "New Street",
          "address2": "New APT 01",
          "city": "Los Angeles",
          "country": "United States",
          "countryCodeV2": "US",
          "firstName": "Shawn",
          "lastName": "Michel",
          "name": "Shawn Michel",
          "phone": "+11234512345",
          "province": "California",
          "provinceCode": "CA",
          "zip": "90001"
        }
      ],
      "defaultAddress": {
        "id": "gid://shopify/MailingAddress/9034324672684?model_name=CustomerAddress",
        "address1": "New Street",
        "address2": "New APT 01",
        "city": "Los Angeles",
        "country": "United States",
        "countryCodeV2": "US",
        "firstName": "Shawn",
        "lastName": "Michel",
        "name": "Shawn Michel",
        "phone": "+11234512345",
        "province": "California",
        "provinceCode": "CA",
        "zip": "90001"
      }
    },
    "refunds": [
      {
        "id": "gid://shopify/Refund/904384315564",
        "createdAt": "2024-07-08T12:53:40Z",
        "updatedAt": "2024-07-08T12:53:40Z",
        "note": "Order canceled",
        "refundLineItems": {
          "edges": [
            {
              "node": {
                "id": "gid://shopify/RefundLineItem/416966934700",
                "lineItem": {
                  "id": "gid://shopify/LineItem/14588819210412",
                  "requiresShipping": true,
                  "restockable": false,
                  "currentQuantity": 0,
                  "nonFulfillableQuantity": 1,
                  "name": "SM Anchor 10A",
                  "quantity": 1,
                  "originalTotalSet": {
                    "presentmentMoney": {
                      "amount": "100.0",
                      "__typename": "MoneyV2"
                    }
                  },
                  "unfulfilledOriginalTotalSet": {
                    "presentmentMoney": {
                      "amount": "100.0",
                      "__typename": "MoneyV2"
                    }
                  },
                  "product": null
                }
              }
            }
          ]
        }
      }
    ],
    "returns": {
      "edges": []
    },
    "metafields": {
      "edges": []
    },
    "currentSubtotalPriceSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "transactions": [
      {
        "id": "gid://shopify/OrderTransaction/7215226421420",
        "gateway": "manual",
        "paymentIcon": {
          "altText": "other"
        },
        "accountNumber": "",
        "amountSet": {
          "presentmentMoney": {
            "amount": "100.0"
          }
        }
      },
      {
        "id": "gid://shopify/OrderTransaction/7325794861228",
        "gateway": "manual",
        "paymentIcon": {
          "altText": "unknown"
        },
        "accountNumber": "",
        "amountSet": {
          "presentmentMoney": {
            "amount": "100.0"
          }
        }
      }
    ],
    "totalDiscountsSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "discountApplications": {
      "edges": []
    },
    "lineItems": {
      "edges": [
        {
          "node": {
            "id": "gid://shopify/LineItem/14588819210412",
            "sku": "AM-A-01",
            "quantity": 1,
            "title": "SM Anchor 10A",
            "name": "SM Anchor 10A",
            "originalUnitPriceSet": {
              "presentmentMoney": {
                "amount": "100.0"
              }
            },
            "variant": null,
            "taxLines": []
          }
        }
      ]
    },
    "fulfillmentOrders": {
      "edges": [
        {
          "node": {
            "id": "gid://shopify/FulfillmentOrder/6961387962540",
            "lineItems": {
              "edges": [
                {
                  "node": {
                    "id": "gid://shopify/FulfillmentOrderLineItem/14723974693036"
                  }
                }
              ]
            }
          }
        }
      ]
    },
    "taxLines": [],
    "currentTotalTaxSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "shippingLines": {
      "edges": []
    }
  }
]
```
----------------

### New Return Created

**New Return Created** trigger is activated whenever a new return is created in the Shopify. It helps capture newly created return records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-NRRTNC11.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch newly created returns from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "tags": [],
    "returnStatus": "IN_PROGRESS",
    "returns": {
      "edges": [
        {
          "node": {
            "id": "gid://shopify/Return/31826280620",
            "requestApprovedAt": "2026-04-22T13:36:22Z",
            "createdAt": "2026-04-22T13:36:22Z",
            "closedAt": null,
            "totalQuantity": 260,
            "refunds": {
              "edges": []
            },
            "returnLineItems": {
              "edges": [
                {
                  "node": {
                    "id": "gid://shopify/ReturnLineItem/49485480108",
                    "processedQuantity": 0,
                    "processableQuantity": 60,
                    "customerNote": null,
                    "refundedQuantity": 0,
                    "refundableQuantity": 60,
                    "unprocessedQuantity": 60,
                    "returnReasonNote": ""
                  }
                },
                {
                  "node": {
                    "id": "gid://shopify/ReturnLineItem/49485512876",
                    "processedQuantity": 0,
                    "processableQuantity": 200,
                    "customerNote": null,
                    "refundedQuantity": 0,
                    "refundableQuantity": 200,
                    "unprocessedQuantity": 200,
                    "returnReasonNote": ""
                  }
                }
              ]
            },
            "returnShippingFees": []
          }
        }
      ]
    },
    "metafields": {
      "edges": []
    },
    "customer": {
      "id": "gid://shopify/Customer/9163292246188",
      "firstName": "Rohit",
      "lastName": "Dalmia",
      "displayName": "Rohit Dalmia",
      "phone": "+919897654378",
      "email": "Falcon67@yopmail.com",
      "addresses": [
        {
          "id": "gid://shopify/MailingAddress/10243801186476?model_name=CustomerAddress",
          "address1": "Newtown",
          "address2": "BD block",
          "city": "Kolkata",
          "country": "India",
          "countryCodeV2": "IN",
          "firstName": "Rohit",
          "lastName": "Dalmia",
          "name": "Rohit Dalmia",
          "phone": "+919690890090",
          "province": "West Bengal",
          "provinceCode": "WB",
          "zip": "700156"
        },
        {
          "id": "gid://shopify/MailingAddress/10261301330092?model_name=CustomerAddress",
          "address1": "Amsterdam",
          "address2": null,
          "city": "Amsterdam",
          "country": "United States",
          "countryCodeV2": "US",
          "firstName": "Rohit",
          "lastName": "Dalmia",
          "name": "Rohit Dalmia",
          "phone": null,
          "province": "New York",
          "provinceCode": "NY",
          "zip": "12010"
        },
        {
          "id": "gid://shopify/MailingAddress/10262229647532?model_name=CustomerAddress",
          "address1": "Newtown",
          "address2": "BD block",
          "city": "Kolkata",
          "country": "India",
          "countryCodeV2": "IN",
          "firstName": "Rohit",
          "lastName": "Dalmia",
          "name": "Rohit Dalmia",
          "phone": null,
          "province": "West Bengal",
          "provinceCode": "WB",
          "zip": "700156"
        }
      ],
      "defaultAddress": {
        "id": "gid://shopify/MailingAddress/10262229647532?model_name=CustomerAddress",
        "address1": "Newtown",
        "address2": "BD block",
        "city": "Kolkata",
        "country": "India",
        "countryCodeV2": "IN",
        "firstName": "Rohit",
        "lastName": "Dalmia",
        "name": "Rohit Dalmia",
        "phone": null,
        "province": "West Bengal",
        "provinceCode": "WB",
        "zip": "700156"
      }
    },
    "id": "gid://shopify/Order/7234699690156",
    "name": "#1761",
    "createdAt": "2026-04-21T11:18:19Z",
    "updatedAt": "2026-04-22T13:36:22Z",
    "currencyCode": "USD",
    "displayFinancialStatus": "PAID",
    "email": "Falcon67@yopmail.com",
    "fullyPaid": true,
    "currentSubtotalPriceSet": {
      "presentmentMoney": {
        "amount": "18700.0"
      }
    },
    "transactions": [
      {
        "id": "gid://shopify/OrderTransaction/8854310650028",
        "gateway": "manual",
        "paymentIcon": {
          "altText": "other"
        },
        "accountNumber": "",
        "amountSet": {
          "presentmentMoney": {
            "amount": "20570.0"
          }
        }
      }
    ],
    "totalDiscountsSet": {
      "presentmentMoney": {
        "amount": "0.0"
      }
    },
    "discountApplications": {
      "edges": []
    },
    "lineItems": {
      "edges": [
        {
          "node": {
            "id": "gid://shopify/LineItem/17054211965100",
            "sku": "RE021",
            "quantity": 60,
            "title": "Water Bottle",
            "name": "Water Bottle",
            "originalUnitPriceSet": {
              "presentmentMoney": {
                "amount": "45.0"
              }
            },
            "variant": {
              "id": "gid://shopify/ProductVariant/45377173029036",
              "product": {
                "id": "gid://shopify/Product/8486624952492"
              }
            },
            "taxLines": [
              {
                "title": "IGST2",
                "rate": 0.1,
                "priceSet": {
                  "presentmentMoney": {
                    "amount": "270.0"
                  }
                }
              }
            ]
          }
        },
        {
          "node": {
            "id": "gid://shopify/LineItem/17054211997868",
            "sku": "YELL67",
            "quantity": 200,
            "title": "Yellow Skirt",
            "name": "Yellow Skirt",
            "originalUnitPriceSet": {
              "presentmentMoney": {
                "amount": "80.0"
              }
            },
            "variant": {
              "id": "gid://shopify/ProductVariant/45377190822060",
              "product": {
                "id": "gid://shopify/Product/8486628622508"
              }
            },
            "taxLines": [
              {
                "title": "IGST2",
                "rate": 0.1,
                "priceSet": {
                  "presentmentMoney": {
                    "amount": "1600.0"
                  }
                }
              }
            ]
          }
        }
      ]
    },
    "taxLines": [
      {
        "title": "IGST2",
        "rate": 0.1
      }
    ],
    "currentTotalTaxSet": {
      "presentmentMoney": {
        "amount": "1870.0"
      }
    },
    "shippingLines": {
      "edges": []
    }
  }
]
```
----------------

### New Abandoned Checkout

**New Abandoned Checkout** trigger is activated whenever a new abandoned checkout is created in the Shopify. It helps capture newly created abandoned checkout records for automation and workflow processing.

#### Select Credentials and Action Events

<img src="\img\credentials\shopify\C-NABNDNCHKOUT12.jpg" width="700" />

Click on **Continue** button

-------

#### Configuration Fields

| Field          | Description |
|---------------|------------|
| Fetch data since | Select the date and time to fetch newly abandoned checkouts from that point onward . (e.g., 27/03/2026 06:51) |
| Limit | Set the maximum number of items to retrieve per run. (e.g., 10) |

---------

#### Example Configuration

<img src="\img\credentials\shopify\TC-NCMPNYC2.jpg" width="700" />

Click on **Continue** , then **Run** the node.

--------------

#### Result
```json
[
  {
    "id": "gid://shopify/AbandonedCheckout/36270641348780",
    "abandonedCheckoutUrl": "https://aecqa.myshopify.com/65225425068/checkouts/ac/hWN9BnOsWHe9H8pVWYacHHG5/recover?key=8a0dccedfd237694ea3d70fc4de33b83&locale=en-IN",
    "createdAt": "2026-02-25T11:22:05Z",
    "updatedAt": "2026-02-25T21:24:01Z",
    "completedAt": null,
    "billingAddress": {
      "country": "India",
      "zip": "700089",
      "city": "Barrackpore",
      "countryCodeV2": "IN",
      "province": "WB",
      "provinceCode": "WB",
      "phone": null,
      "address1": "Barrackpore Trunk Road Titagarh",
      "address2": "BD block"
    },
    "shippingAddress": null,
    "customer": {
      "firstName": "Rohit",
      "lastName": "Dalmia",
      "email": "Falcon67@yopmail.com"
    },
    "lineItems": {
      "edges": [
        {
          "node": {
            "id": "gid://shopify/AbandonedCheckoutLineItem/27de62d447ef7152ac11e5b187ee680d?checkout=d8fe1f92aaa118b8612883199976aec5&index=0&actoken"
          }
        }
      ]
    }
  }
]
```
----------------

 </TabItem>

<TabItem value="actions" label="Actions">

### Actions

Action events for Shopify can be added here.

</TabItem>

</Tabs>


Need help? Contact our support team at hello@appse.ai
