Select product_title From products join brands on product_brand=brands.brand_id join categories on product_cat=categories.cat_id
Where cat_id = '1' and brand_id= '1'
