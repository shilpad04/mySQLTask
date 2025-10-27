# 🛍️ Ecommerce Database Project (MySQL)

This project demonstrates the design and implementation of a **fully normalized ecommerce database** in **MySQL**, including customer, order, product, and order item management.  
It covers schema creation, data insertion, normalization, and practical SQL queries.

---

## 📘 Database Overview

### Database Name:
`ecommerce`

### Tables:
1. **customers**
   - `id` (Primary Key, Auto Increment)
   - `name`
   - `email`
   - `address`

2. **orders**
   - `id` (Primary Key, Auto Increment)
   - `customer_id` (Foreign Key → `customers.id`)
   - `order_date`
   - `total_amount`

3. **products**
   - `id` (Primary Key, Auto Increment)
   - `name`
   - `price`
   - `description`
   - `discount` (optional)

4. **order_items**
   - `id` (Primary Key, Auto Increment)
   - `order_id` (Foreign Key → `orders.id`)
   - `product_id` (Foreign Key → `products.id`)
   - `quantity`

---


