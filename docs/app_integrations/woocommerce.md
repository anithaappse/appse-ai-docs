---
title: "WooCommerce"
slug : /app-integrations/woocommerce
---

WooCommerce is a flexible eCommerce platform built for WordPress that helps businesses create and manage online stores with ease. With appse ai, you can seamlessly connect WooCommerce to your workflows, automating processes like order management, product updates, customer synchronization, and inventory tracking to improve operational efficiency and deliver a better commerce experience.

---

## Setup Credential

Follow the steps below to quickly set up your WooCommerce credential.

### Required Fields

You’ll be asked to fill in the following details:

| Field           | Description                                              |
|-----------------|----------------------------------------------------------|
| Connection Name | A name to help you identify this connection              |
| Store URL       | Your WooCommerce store base URL                          |
| Consumer Key    | REST API consumer key generated from WooCommerce         |
| Consumer Secret | REST API consumer secret generated from WooCommerce      |

### Step-by-Step Guide

#### 1. Add Connection Name

Provide a name for your credential in the `Connection Name` field. This will help you identify the connection later in the credential listing page.

#### 2. Find Your Store URL

- Log in to your WordPress admin panel.
- Open your WooCommerce store and confirm the public store domain.
- Copy the base store URL and use it as your `Store URL`.

> `Example`: If your storefront is available at `https://demo-store.com`, then your Store URL should be `https://demo-store.com`

> `Note`: Use the base store URL only. Do not include `/wp-admin`, `/wp-login.php`, or any product or checkout path.

#### 3. Generate Consumer Key and Consumer Secret

- In your WordPress admin panel, go to `WooCommerce` → `Settings`.
- Open the `Advanced` tab.
- Click `REST API`.
- Select `Add key` or `Create an API key`.

Fill in the API key form with the following:

| Field       | Value to Provide                                      |
|-------------|--------------------------------------------------------|
| Description | Any label such as `appse ai integration`              |
| User        | A WordPress user with permission to access WooCommerce |
| Permissions | `Read/Write`                                          |

- Click `Generate API key`.
- Copy the generated `Consumer Key`.
- Copy the generated `Consumer Secret`.

> `Important`: WooCommerce may show the Consumer Secret only once depending on your setup. Copy and store it securely before closing the page.

#### 4. Add the Fields to appse ai

Add the following values in appse ai:

- `Store URL`
- `Consumer Key`
- `Consumer Secret`

Then click on the `Save` button.

### Save Your Credential

Once you've filled in the necessary fields, click `Save` to store and verify your setup.

- If successful, your WooCommerce credential will show a connected status and can be used in workflows.
- If it fails, verify your Store URL, Consumer Key, Consumer Secret, and WooCommerce REST API permissions.

---

## Triggers and Actions

Every application has a pre-defined set of triggers and actions that allow users to perform application-specific activities within the platform. Here is the current WooCommerce trigger and action set available in the platform.

### Triggers

- New Orders Created
- New Customers Created
- Customers Updated
- Products added
- New products created

### Actions

> Customers Actions

- Create Customer
- Update Customer
- Get customers by email

> Products Actions

- Create Product
- Update Product
- Get product by sku

---

## Need Help?

If you’re unsure about any field or face connection issues, reach out to our support team at hello@appse.ai
