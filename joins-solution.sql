--1. Get all customers and their addresses.

SELECT "first_name", "last_name", "street", "city", "state", "zip" FROM "customers"
JOIN "orders" ON "customers"."id" = "orders"."address_id"
JOIN "addresses" ON "orders"."address_id" = "addresses"."id";

--2. Get all orders and their line items (orders, quantity and product).

SELECT "order_date", "quantity", "description" FROM "orders"
JOIN "line_items" ON "orders"."id" = "line_items"."order_id"
JOIN "products" ON "line_items"."order_id" = "products"."id";

--3. Which warehouses have cheetos?

SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
 WHERE "product_id" = '5';

--4. Which warehouses have diet pepsi?

SELECT * FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "products"."id" = "warehouse_product"."product_id"
WHERE "product_id" = '6';

--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

SELECT COUNT(*) FROM "orders";

--6. How many customers do we have?

SELECT COUNT(*) FROM "customers";

--7. How many products do we carry?

SELECT COUNT(*) FROM "products";

--8. What is the total available on-hand quantity of diet pepsi?
