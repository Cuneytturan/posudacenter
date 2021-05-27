INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(5, 'Cuneyt', 'cuneytadmin@gmail.com', 'admin', '0'),

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Pasabahce'),
(2, 'Berlinger Haus'),
(3, 'AGNESS'),
(4, 'Luminarc'),
(5, 'ByBone');

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1);

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Glass'),
(2, 'Casseroles'),
(3, 'Cutlery'),
(4, 'Electronics'),
(5, 'Interior'),
(6, 'Plates'),
(7, 'Tea & Coffee');

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Christine', 'Randolph', 'randolphc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '2133  Hill Haven Drive', 'Terra Stree'),
(2, 'Will', 'Willams', 'willainswill@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '4567  Orphan Road', 'WI'),
(3, 'Demo', 'Name', 'demo@gmail.com', 'password', '9876543210', 'demo ad1', 'ademo ad2'),
(5, 'Steeve', 'Rogers', 'steeve1@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '9876547770', '573  Pinewood Avenue', 'MN'),
(6, 'Melissa', 'Gilbert', 'gilbert@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '7845554582', '1711  McKinley Avenue', 'MA');
