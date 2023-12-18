CREATE TABLE `role` (
                        `id` int PRIMARY KEY,
                        `name` varchar(255)
);

CREATE TABLE `users` (
                         `id` int PRIMARY KEY AUTO_INCREMENT,
                         `role_id` int,
                         `username` varchar(255),
                         `fullname` varchar(255),
                         `email` varchar(255),
                         `phone_number` varchar(255),
                         `sex` bit,
                         `address` varchar(255),
                         `password` varchar(255),
                         `created_at` datetime,
                         `updated_at` datetime,
                         `status` int,
                         `active` int
);

CREATE TABLE `categorys` (
                             `id` int PRIMARY KEY,
                             `name` varchar(255)
);

CREATE TABLE `products` (
                            `id` int PRIMARY KEY,
                            `category_id` int,
                            `type_machine_id` int,
                            `brand_id` int,
                            `sale_product_id` int,
                            `title` varchar(255),
                            `price` int,
                            `img` varchar(255),
                            `discount_price` int,
                            `description` varchar(255),
                            `available` int,
                            `created_at` date,
                            `updated_at` date
);

CREATE TABLE `galerys` (
                           `id` int PRIMARY KEY,
                           `product_id` int,
                           `img` varchar(255)
);

CREATE TABLE `feedbacks` (
                             `id` int PRIMARY KEY,
                             `product_id` int,
                             `user_id` int,
                             `title` varchar(255),
                             `note` varchar(255),
                             `date` date,
                             `display` int
);

CREATE TABLE `orders` (
                          `id` int PRIMARY KEY,
                          `user_id` int,
                          `address` varchar(255),
                          `phone` varchar(255),
                          `order_date` datetime,
                          `status` varchar(255),
                          `received_date` date,
                          `total_money` int
);

CREATE TABLE `order_details` (
                                 `id` int PRIMARY KEY,
                                 `order_id` int,
                                 `product_id` int,
                                 `price` int,
                                 `quantity` int,
                                 `total_money` int
);

CREATE TABLE `vouchers` (
                            `id` int PRIMARY KEY,
                            `voucher_name` varchar(255),
                            `voucher_code` varchar(255),
                            `start_date` datetime,
                            `end_date` datetime,
                            `note` varchar(255)
);

CREATE TABLE `rates` (
                         `id` int PRIMARY KEY,
                         `user_id` int,
                         `product_id` int,
                         `name` varchar(255),
                         `email` varchar(255),
                         `phone_number` varchar(255),
                         `note` text,
                         `star` tinyint
);

CREATE TABLE `storehouses` (
                               `id` int PRIMARY KEY,
                               `name_store` varchar(255)
);

CREATE TABLE `payments` (
                            `id` int PRIMARY KEY,
                            `order_id` int,
                            `payment_type` varchar(255),
                            `card_number` varchar(255),
                            `payment_date` datetime,
                            `total` int
);

CREATE TABLE `brands` (
                          `id` int PRIMARY KEY,
                          `name` varchar(255),
                          `made_in` varchar(255)
);

CREATE TABLE `type_machines` (
                                 `id` int PRIMARY KEY,
                                 `type_name` varchar(255)
);

CREATE TABLE `timesale_products` (
                                     `id` int PRIMARY KEY,
                                     `date_stared` datetime,
                                     `date_end` datetime
);

CREATE TABLE `product_details` (
                                   `id` int PRIMARY KEY,
                                   `type_set` varchar(255),
                                   `technical` varchar(255),
                                   `performance_filter` varchar(255),
                                   `power` varchar(255),
                                   `temperature` varchar(255),
                                   `height` float,
                                   `weight` float,
                                   `warranty` varchar(255)
);

CREATE TABLE `product_vouchers` (
                                    `id` int PRIMARY KEY,
                                    `product_id` int,
                                    `voucher_id` int
);

CREATE TABLE `product_storehouses` (
                                       `id` int PRIMARY KEY,
                                       `product_id` int,
                                       `storehouse_id` int
);

CREATE TABLE `contacts` (
                            `id` int PRIMARY KEY,
                            `name` varchar(255),
                            `email` varchar(255),
                            `phone_number` varchar(255),
                            `content` varchar(255)
);

ALTER TABLE `users` ADD FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`category_id`) REFERENCES `categorys` (`id`);

ALTER TABLE `order_details` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `galerys` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `order_details` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `feedbacks` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`type_machine_id`) REFERENCES `type_machines` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

ALTER TABLE `product_details` ADD FOREIGN KEY (`id`) REFERENCES `products` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `product_vouchers` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `product_vouchers` ADD FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);

ALTER TABLE `product_storehouses` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `product_storehouses` ADD FOREIGN KEY (`storehouse_id`) REFERENCES `storehouses` (`id`);

ALTER TABLE `products` ADD FOREIGN KEY (`sale_product_id`) REFERENCES `timesale_products` (`id`);

ALTER TABLE `rates` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

ALTER TABLE `rates` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
