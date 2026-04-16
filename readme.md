# 🛒 Data Digger — E-Commerce SQL Project

> *A hands-on MySQL project exploring CRUD operations, aggregate functions, and relational database design through an E-Commerce Store simulation.*

---

## 📌 Objective

**Data Digger** is a practical SQL project that provides hands-on experience in managing a MySQL database using CRUD operations, clauses, operators, aggregate functions, primary keys, and foreign keys. Students design and manipulate a structured relational database for an **E-Commerce Store** to gain deeper insights into SQL query execution.

---

## 🗄️ Database Schema

The project uses the `ecom_store` database with **4 relational tables**:

```
ecom_store
├── customers       → CustomerID, Name, Email, Address
├── orders          → OrderID, CustomerID, OrderDate, TotalAmount
├── products        → ProductID, ProductName, Price, Stock
└── order_details   → OrderDetailID, OrderID, ProductID, Quantity, Sub_Total
```

### Relationships
- `orders.CustomerID` → references `customers.CustomerID`
- `order_details.OrderID` → references `orders.OrderID`
- `order_details.ProductID` → references `products.ProductID`

---

## 🧩 Features & SQL Concepts Covered

### 👤 Customers Table
| Operation | Description |
|-----------|-------------|
| `CREATE` | Table with AUTO_INCREMENT primary key |
| `INSERT` | 5 sample Indian customers with realistic data |
| `SELECT *` | Retrieve all customers |
| `UPDATE` | Modify a customer's address |
| `DELETE` | Remove a customer by `CustomerID` |
| `WHERE` | Filter by name |

### 📦 Orders Table
| Operation | Description |
|-----------|-------------|
| `INSERT` | 5 sample orders linked to customers |
| `SELECT` | Orders filtered by `CustomerID` |
| `UPDATE` | Modify order total amount |
| `DELETE` | Remove an order by `OrderID` |
| `INTERVAL` | Retrieve orders from last 30 days |
| `MAX / MIN / AVG` | Highest, lowest, and average order amount |

### 🏷️ Products Table
| Operation | Description |
|-----------|-------------|
| `INSERT` | 5 products (clothing, electronics, accessories) |
| `ORDER BY DESC` | Sort products by price descending |
| `UPDATE` | Change product price |
| `DELETE` | Remove out-of-stock products |
| `BETWEEN` | Filter products by price range (₹500–₹2000) |
| `MAX / MIN` | Most expensive and cheapest product |

### 🧾 Order Details Table
| Operation | Description |
|-----------|-------------|
| `INSERT` | 5 order-product mappings with quantities |
| `SUM` | Total revenue from all orders |
| `GROUP BY + ORDER BY` | Top 3 most ordered products |
| `Subquery` | Count order frequency of a specific product |

---

## 📸 Screenshots

### ➕ Adding Customers
![Add Customers](Screenshots/add_customers.png)

### 👥 All Customers (After Update)
![Customer Data](Screenshots/update_address.png)

### 🔍 Specific Customer — Ananya Chatterjee
![Specific Customer](Screenshots/Specific_customer.png)

### 🗑️ After Deleting Customer #5
![Delete Customer](Screenshots/Delete_customer.png)

---

### 📋 All Orders (Initial Insert — 5 rows)
![All Orders](Screenshots/Update_amt.png)

### 🔍 Orders for Customer #1
![Show Orders](Screenshots/Show_orders.png)

### 🗑️ After Deleting Order #5
![Delete Order](Screenshots/Delete_order.png)

### 📅 Orders in Last 30 Days
![Orders Greater Than 30 Days](Screenshots/Greaterthan30_days.png)

### 📊 Highest, Lowest & Average Order Amount
![High Low Avg](Screenshots/high,low,avg.png)

---

### 🏷️ Products Table
![Products Table](Screenshots/Products_table.png)

### 🔽 Products Sorted by Price (Descending)
![Sort Price Desc](Screenshots/sort_price_desc.png)

### ✏️ After Price Update (Wireless Earbuds → ₹3999)
![Product Price Update](Screenshots/product_price_update.png)

### 💰 Products Between ₹500–₹2000
![Price Between 500 2000](Screenshots/price_bw_500_2000.png)

### 🏆 Most Expensive & Cheapest Product
![Expensive Cheapest Product](Screenshots/Expensive_cheapest_product.png)

---

### 🧾 Order Details — Specific Order (OrderID = 1)
![Specific Order ID](Screenshots/specific_orderID.png)

### 💹 Total Revenue from All Orders
![Total Revenue](Screenshots/Total_revenue.png)

### 🥇 Top 3 Most Ordered Products
![Top 3 Ordered](Screenshots/Top_3_ordered.png)

### 🔁 Mechanical Keyboard Order Frequency
![Order Frequency Mech Keyboard](Screenshots/order_frequency_of_mech_keyboard.png)

---

## 🚀 Getting Started

### Prerequisites
- MySQL Server (v8.0+ recommended)
- MySQL Workbench or any SQL client

### Setup
```bash
# 1. Clone or download the project
git clone https://github.com/yourusername/data-digger.git

# 2. Open your MySQL client and run the SQL file
mysql -u root -p < Ecom_store.sql

# OR import via MySQL Workbench:
# File → Open SQL Script → Ecom_store.sql → Execute
```

---

## 📁 Project Structure

```
data-digger/
│
├── Ecom_store.sql          # Main SQL file with all queries
├── README.md               # Project documentation
│
└── Screenshots/
    ├── add_customers.png
    ├── update_address.png
    ├── Specific_customer.png
    ├── Delete_customer.png
    ├── Show_orders.png
    ├── Update_amt.png
    ├── Delete_order.png
    ├── Greaterthan30_days.png
    ├── high,low,avg.png
    ├── Products_table.png
    ├── sort_price_desc.png
    ├── product_price_update.png
    ├── price_bw_500_2000.png
    ├── Expensive_cheapest_product.png
    ├── specific_orderID.png
    ├── Total_revenue.png
    ├── Top_3_ordered.png
    ├── order_frequency_of_mech_keyb....png
    └── by_aman.png
```

---

## 🛠️ Tech Stack

![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/Language-SQL-orange?style=for-the-badge)

---

## 📚 Key SQL Concepts Used

- ✅ DDL — `CREATE TABLE`, `DROP`, `ALTER`
- ✅ DML — `INSERT`, `UPDATE`, `DELETE`
- ✅ DQL — `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`, `LIMIT`
- ✅ Aggregate Functions — `SUM`, `AVG`, `MAX`, `MIN`, `COUNT`
- ✅ Operators — `BETWEEN`, `=`, `>=`
- ✅ Date Functions — `CURDATE()`, `INTERVAL`
- ✅ Subqueries — Nested `SELECT` statements
- ✅ Auto Increment & Primary Keys
- ✅ Foreign Key Relationships

---

## 👨‍💻 Author

**Chirag Modi**
> Built with 💡 curiosity and ☕ coffee.

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).