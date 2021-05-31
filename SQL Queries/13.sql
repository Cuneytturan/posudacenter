Select first_name, last_name, email, product_title, qty, product_price
From user_info join cart on user_info.user_id=cart.user_id join products on cart.p_id=products.product_id
Order by id
