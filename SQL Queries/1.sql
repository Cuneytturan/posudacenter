Select product_title, brand_title, cat_title, product_price, product_qty
From products join brands on products.product_brand=brands.brand_id join categories on products.product_cat=categories.cat_id
Order by product_price ASC
