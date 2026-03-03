---
slug: /platform/key-concepts/nodes/built-in/aggregator
title: Aggregator Node
---

# Aggregator Node

The **Aggregator Node** is used to consolidate multiple incoming records into a single structured output.  
It enables flexible data reshaping, batching, and grouping before passing data to downstream nodes.

---

## When to Use Aggregator

Use this node when you need to:

- Combine multiple records into one payload  
- Batch data for API requests  
- Group specific fields into arrays  
- Restructure workflow data  
- Build custom output objects  

---

## Aggregation Modes Overview

The Aggregator Node supports two primary aggregation strategies:

- **All Item Data**
- **Select Individual Fields**

---

## 1. All Item Data

This mode aggregates entire records into a single array wrapped inside a defined output field.

### All Item Data – Configuration Breakdown

| Configuration     | Description |
|------------------|------------|
| Output Field Name | Specifies the wrapper field that will contain the aggregated array |
| Fields to Include | Determines how fields from each input record are included. The dropdown provides three options: `All Fields`, `Specified Fields`, and `All Fields Except` |
| Specified Fields  | Enter the fields you want to include, separated by commas. This option appears only when Specified Fields is selected |
| Fields to Exclude | Enter the fields you want to exclude, separated by commas. This option appears only when All Fields Except is selected |

### All Item Data – Example


---

## 2. Select Individual Fields

This mode allows you to aggregate specific fields across all incoming records instead of aggregating entire objects.

Each selected field becomes an aggregated array in the final output.

### Select Individual Fields – Configuration Breakdown

Aggregate Fields (Array-Based Configuration). Each entry added to the array provides the following configuration fields:

| Field | Description |
|-------|------------|
| Input Field Name | Specifies the field from the incoming records that will be aggregated |
| Rename Field | Dropdown option that allows you to rename the aggregated output field. Available options are `Yes` and `No`. Select whether you want to rename the field |
| Output Field Name | Enter the new name for the field. This field is displayed only when Rename Field is set to Yes |

### Select Individual Fields – Example

---

## Output Behavior Summary

- Produces a **single consolidated object**.
- Output structure depends entirely on the selected aggregation mode.
- Configuration fields dynamically appear based on user selections.
- Designed for flexible data transformation before downstream processing.

---

The Aggregator Node provides structured flexibility, allowing you to choose between complete record aggregation or field-level grouping depending on your workflow needs.