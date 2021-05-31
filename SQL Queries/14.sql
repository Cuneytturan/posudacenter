  Select COUNT(*)
  From brands join products on brands.brand_id=products.product_brand join categories on products.product_cat=categories.cat_id
  Where brand_id= 1 and cat_id= 1
