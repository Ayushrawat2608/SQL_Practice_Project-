# 🗄️ SQL Joins & Foreign Key Mastery

### *A hands-on SQL project exploring relational data through JOINs, Foreign Keys, and real-world queries.

## 📖 About This Project

This repository is a deep dive into **relational database design** and **query writing**, built to strengthen my understanding of how tables connect, relate, and "talk" to each other through **Primary Keys**, **Foreign Keys**, and **JOIN operations**.

Instead of working with isolated tables, this project simulates a real database environment — where data is split across multiple related tables, and the real skill lies in writing queries that bring it all back together meaningfully.


## 🎯 What This Project Demonstrates

- 🔑 **Primary Key & Foreign Key constraints** to enforce data integrity
- 🔗 **Table relationships** — one-to-many and many-to-many
- 🧩 **JOIN operations** — `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`
- 📝 **Real-world style query problems** solved using multi-table logic
- 🧠 Practice in thinking *relationally* rather than just writing standalone queries

---

## 🗂️ Database Schema

```
┌────────────────┐         ┌────────────────┐
│    Table A      │         │    Table B      │
├────────────────┤         ├────────────────┤
│ PK  id          │◄────────│ FK  table_a_id  │
│     column_1    │         │ PK  id          │
│     column_2    │         │     column_1    │
└────────────────┘         └────────────────┘
```
## 🛠️ Tech Stack
