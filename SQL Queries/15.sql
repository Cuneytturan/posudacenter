SELECT brand_id
    ,SUM(product_qty) AS Total_Quantity
    ,COUNT(product_id) AS Product_Count
FROM products join brands on products.product_brand=brands.brand_id
GROUP BY brand_id;
