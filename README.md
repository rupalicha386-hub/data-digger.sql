# data-digger.sql

# 🔍 Data Digger – MySQL Database Project

## 📌 Project Overview

**Data Digger** is a MySQL database project created to practice and demonstrate different SQL operations.

The project works with four main tables:

* 👤 **Customers**
* 📦 **Orders**
* 🛍️ **Products**
* 🧾 **OrderDetails**

The project includes creating tables, inserting data, displaying records, updating records, deleting records, filtering data, sorting data and performing calculations.

---

## 🎯 Project Objectives

The main objectives of **Data Digger** are:

* 📚 Learn basic SQL commands
* 🗃️ Create and manage database tables
* ➕ Insert records
* 🔎 Retrieve required data
* ✏️ Update existing records
* 🗑️ Delete records
* 📊 Perform calculations using SQL functions
* 🔽 Sort and filter data

---

# 👤 1. Customers Table

The **Customers** table stores customer information.

### Columns

| Column     | Description        |
| ---------- | ------------------ |
| CustomerID | Unique customer ID |
| Name       | Customer name      |
| Email      | Customer email     |
| Address    | Customer address   |

The table uses `CustomerID` as the **Primary Key**.

### 🔎 Display All Customers

```sql
SELECT * FROM Customers;
```

This displays all customer records.

### ✏️ Update Customer

```sql
UPDATE Customers
SET Address = 'Surat'
WHERE CustomerID = 2;
```

This updates the address of customer ID 2.

### 🗑️ Delete Customer

```sql
DELETE FROM Customers
WHERE CustomerID = 5;
```

This deletes customer ID 5.

---

# 📦 2. Orders Table

The **Orders** table stores information about orders.

### Columns

| Column      | Description        |
| ----------- | ------------------ |
| OrderID     | Unique order ID    |
| CustomerID  | Customer ID        |
| OrderDate   | Order date         |
| TotalAmount | Total order amount |

### 🔎 Display Orders

```sql
SELECT * FROM Orders;
```

### 🔎 Find Customer Orders

```sql
SELECT *
FROM Orders
WHERE CustomerID = 1;
```

This displays orders for customer ID 1.

### ✏️ Update Order

```sql
UPDATE Orders
SET TotalAmount = 3000.00
WHERE OrderID = 102;
```

This updates the total amount of order 102.

### 🗑️ Delete Order

```sql
DELETE FROM Orders
WHERE OrderID = 105;
```

This deletes order 105.

---

# 📅 3. Date Filtering

```sql
SELECT *
FROM Orders
WHERE OrderDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);
```

This query finds orders from the **last 30 days**.

### 🔹 Functions

* `CURDATE()` → Current date
* `DATE_SUB()` → Subtracts a time interval
* `INTERVAL 30 DAY` → 30 days

---

# 📊 4. Order Amount Analysis

```sql
SELECT
MAX(TotalAmount) AS Highest_Order_Amount,
MIN(TotalAmount) AS Lowest_Order_Amount,
AVG(TotalAmount) AS Average_Order_Amount
FROM Orders;
```

This query calculates:

* 🔝 Highest order amount
* 🔽 Lowest order amount
* 📊 Average order amount

---

# 🛍️ 5. Products Table

The **Products** table stores product information.

### Columns

| Column      | Description       |
| ----------- | ----------------- |
| ProductID   | Unique product ID |
| ProductName | Product name      |
| Price       | Product price     |
| Stock       | Available stock   |

### 🛒 Products in the Project

* 💻 Laptop
* 🖱️ Mouse
* ⌨️ Keyboard
* 🎧 Headphones
* 🖥️ Monitor

### 🔎 Display Products

```sql
SELECT * FROM Products;
```

---

# 🔽 6. Sort Products by Price

```sql
SELECT *
FROM Products
ORDER BY Price DESC;
```

This displays products from **highest price to lowest price**.


