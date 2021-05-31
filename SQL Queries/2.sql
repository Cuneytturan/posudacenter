INSERT INTO `products` (product_id, product_cat, product_brand, product_title, product_price, product_qty, product_desc, product_image, product_keywords) VALUES
(
2, 1, 1, '420015 СТАКАН-ВОДА 470 ML ALLEGRA  1*12', 5250, 567, '"Lorem ipsum dolor sit amet', 2.jpg, ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'
)
ON DUPLICATE KEY UPDATE    
product_cat=1, product_brand=2, product_title='420015 СТАКАН-ВОДА 470 ML ALLEGRA  1*12', product_price=5250, product_qty=567, product_desc= '"Lorem ipsum dolor sit amet', product_image=2.jpg, product_keyword=' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam's
