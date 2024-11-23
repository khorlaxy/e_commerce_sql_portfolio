# E-Commerce SQL Portfolio

## Overview
This portfolio showcases an SQL project simulating an e-commerce platform. The database is designed to handle common business operations such as product management, order processing, payments, and customer reviews. It demonstrates both foundational and advanced SQL skills, including database design, data analysis, and query optimization.
- **Repo link**: https://github.com/khorlaxy/e_commerce_sql_portfolio
---

## Features
- **Schema Design**: A well-structured database with tables for Users, Products, Orders, Payments, and Reviews.
- **Sample Data**: Realistic data for testing and showcasing SQL queries.
- **Basic Queries**: Retrieve and manipulate data using SELECT, JOINs, and GROUP BY.
- **Advanced Queries**: Analyze trends, calculate metrics, and identify business insights using CTEs and window functions.
- **Performance Optimization**: Example queries with indexing and performance tips.

---

## Database Structure

### Entity-Relationship Diagram (ERD)
*Insert ER diagram here if available.*

Alternatively, describe the schema:
- **Users**: Stores customer details.
- **Products**: Catalog of items available for purchase.
- **Orders**: Records transactions made by users.
- **OrderDetails**: Links orders to the products purchased.
- **Payments**: Details about payment methods and amounts.
- **Reviews**: Customer feedback on products.

---

## Installation

### Requirements
- MySQL or PostgreSQL installed.
- A SQL client (e.g., MySQL Workbench, DBeaver, or pgAdmin).

### Steps to Set Up
1. **Clone this repository**:
   ```bash
   git clone https://github.com/<your_username>/e_commerce_sql_portfolio.git
   cd e_commerce_sql_portfolio
  ```

2. **Create the database**:  
   Open your SQL client and execute the following command to create a new database:
   ```sql
   CREATE DATABASE e_commerce;
   ```

3. **Execute the schema script**:  
   Run the `schema.sql` file to create all the necessary tables in your database:
   ```bash
   SOURCE schema.sql;
   ```

4. **Insert sample data**:  
   Populate the database with realistic sample data by running:
   ```bash
   SOURCE data.sql;
   ```

5. **Test the queries**:  
   Use the SQL queries provided in the `queries/` folder to test and analyze the database.

---

## Directory Structure

```plaintext
e_commerce_sql_portfolio/
├── schema.sql        # SQL script for creating the database schema
├── data.sql          # SQL script for inserting sample data
├── queries/
│   ├── basic_queries.sql       # Collection of foundational SQL queries
│   ├── advanced_queries.sql    # Advanced SQL queries for analytics
├── README.md         # Project overview and setup instructions
```

---

## Usage

### Running Basic Queries

To retrieve and manipulate data, use the scripts provided in the `queries/basic_queries.sql` file. Here’s an example:

- **Get all products and their categories**:
  ```sql
  SELECT product_name, category_name
  FROM Products
  JOIN Categories ON Products.category_id = Categories.category_id;
  ```

### Running Advanced Queries

For analytical and performance-heavy queries, use the `queries/advanced_queries.sql` file. Here’s an example:

- **Calculate monthly revenue**:
  ```sql
  SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_amount) AS revenue
  FROM Orders
  GROUP BY month;
  ```

---

## Testing and Validation

To ensure the functionality of the database and queries:
1. **Verify schema creation**:  
   Confirm that all tables are created correctly by checking your SQL client.
2. **Validate sample data**:  
   Run SELECT statements on all tables to ensure that data has been inserted correctly.
3. **Test edge cases**:  
   Modify and expand the sample data to test scenarios like missing data, duplicate entries, or invalid records.

---

## Contributing

Contributions are welcome! If you have suggestions for improving this project or would like to add new features:
1. Fork the repository.
2. Create a feature branch (`git checkout -b feature/your-feature-name`).
3. Commit your changes (`git commit -m "Add your message here"`).
4. Push to the branch (`git push origin feature/your-feature-name`).
5. Open a pull request for review.

---

## License

This project is open-source and available under the MIT License.

---

## Contact

If you have any questions or need further assistance, feel free to reach out:
- **Email**: michaeladekanye23@gmail.com
- **GitHub Profile**: (https://github.com/khorlaxy)
