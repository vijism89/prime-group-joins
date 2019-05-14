--Get all customers and their addresses.
SELECT * FROM "customers"
JOIN "addresses" ON customers.id = addresses.customer_id;

--Get all orders and their line items (orders, quantity and product).
SELECT * FROM "orders" 
JOIN "line_items" ON orders.id = line_items.order_id;

--Which warehouses have cheetos?
 SELECT "warehouse" FROM warehouse
 JOIN "warehouse_product" ON warehouse_product.warehouse_id = warehouse.id
 JOIN "products" ON products.id = warehouse_product.product_id 
 WHERE "products".description = 'cheetos';
 
 --Which warehouses have diet pepsi?
 SELECT "warehouse" FROM warehouse
 JOIN "warehouse_product" ON warehouse_product.warehouse_id = warehouse.id
 JOIN "products" ON products.id = warehouse_product.product_id 
 WHERE "products".description = 'diet pepsi';
 
 Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
 SELECT "customers".id,"customers".first_name, "customers".last_name, 
 COUNT("orders".id) FROM "customers"
 JOIN "addresses" ON customers.id = addresses.customer_id
 FULL JOIN "orders" ON orders.address_id = addresses.id
 GROUP BY "customers".id;
 
 How many customers do we have?
SELECT COUNT("customers".id) FROM "customers";
 
 How many products do we carry?
SELECT COUNT("products".id) FROM "products";

