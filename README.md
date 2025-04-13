# 📘 Bookstore Database Management System

Designed and implemented a relational database system using MySQL that stores and retrieves data for a bookstore for tracking book inventory and customer data and order tracking and shipping management.

---

## 🎯 Project Objective

This project focuses on building a robust and scalable database system that enables:

- Designing and implementing a MySQL database for a real-world bookstore scenario.
- Creating normalized tables with optimized data types to avoid redundancy and improve data integrity.
- Establishing clear relationships between entities to ensure data integrity. 
- Managing database access through user groups and roles.

---

## 🗺️ Entity-Relationship Diagram

An **Entity-Relationship Diagram (ERD)** is included to visually represent the relationships across all tables. It clearly marks primary keys, foreign keys, and how tables are interconnected to form a complete, functional database system.

📎 *Bookstore ERD:* `book_store.drawio`

![bookstore](https://github.com/user-attachments/assets/29774967-4744-436e-bb7e-3c0ec15676b5)

---

## 🛠️ Tools and Technologies

- **MySQL** – Core database engine used to design, manage, and query the system  
- **Draw.io** – Used to create and visualize the ERD and data relationships  

---

## ⚙️ Setup Instructions

To set up and test the database locally:

1. **Clone the repository:**

```bash
git clone https://github.com/senuadev/BookStore-Database.git
cd BookStore-Database
```

2. **Run SQL script:**
  `bookstore.sql` – Creates all database tables 

---

## 🗃️ Tables Included

- `book`: Catalog of available books  
- `book_author`: Many-to-many relationship between books and authors  
- `author`: List of all authors  
- `book_language`: Supported book languages  
- `publisher`: Information about publishers  
- `customer`: Bookstore customer records  
- `customer_address`: Mapping of customers to their addresses  
- `address_status`: Indicates whether an address is current or old  
- `address`: Stores all physical address records  
- `country`: Supported countries for shipping and addresses  
- `cust_order`: Customer order data  
- `order_line`: Details the books in each order  
- `shipping_method`: Shipping options available  
- `order_history`: Tracks status updates for each order  
- `order_status`: Status categories (e.g., pending, shipped, delivered)  

---

## Contributors

<table>
  <thead></thead>
  <tbody>
    <tr>
      <td align="center">
        <a href="https://github.com/senuadev">
          <img src="https://avatars.githubusercontent.com/u/202750193?v=4" width="100;" alt="Simon"/>
          <br />
          <sub><b>Simon</b></sub>
        </a>
      </td>
      <td align="center">
        <a href="https://github.com/ouinordine">
          <img src="https://avatars.githubusercontent.com/u/200663794?v=4" width="100;" alt="Noraldine"/>
          <br />
          <sub><b>Noraldine</b></sub>
        </a>
      </td>
      <td align="center">
        <a href="https://github.com/Aresthegod02">
          <img src="https://avatars.githubusercontent.com/u/159646416?v=4" width="100;" alt="Best Femi Walsh"/>
          <br />
          <sub><b>Best Femi Walsh</b></sub>
        </a>
      </td>
    </tr>
  </tbody>
</table>
