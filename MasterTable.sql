SELECT
  `SalesData.Orders`.Date AS order_date,
  `SalesData.ProductCategory`.CategoryName AS category_name,
  `SalesData.Products`.ProdName AS product_name,
  `SalesData.Products`.Price AS product_price,
  `SalesData.Orders`.Quantity AS order_qty,
  (`SalesData.Products`.Price * `SalesData.Orders`.Quantity ) AS total_sales,
  `SalesData.Customers`.CustomerEmail AS cust_email,
  `SalesData.Customers`.CustomerCity AS cust_city
  
FROM
  `SalesData.Orders`
INNER JOIN
  `SalesData.Customers`
  ON
    `SalesData.Orders`.CustomerID = `SalesData.Customers`.CustomerID
INNER JOIN
  `SalesData.Products`
  ON
    `SalesData.Orders`.ProdNumber = `SalesData.Products`.ProdNumber
INNER JOIN
`SalesData.ProductCategory`
  ON
    `SalesData.Products`.Category = `SalesData.ProductCategory`.CategoryID 

ORDER BY order_date asc;
