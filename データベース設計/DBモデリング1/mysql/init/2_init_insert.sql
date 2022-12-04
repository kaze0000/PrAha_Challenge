USE sushi;

-- 外部キー制約　無効化
set FOREIGN_KEY_CHECKS = 0;

-- 投入用データ初期化
TRUNCATE TABLE genres;
TRUNCATE TABLE categories;
TRUNCATE TABLE menus;
TRUNCATE TABLE customers;
TRUNCATE TABLE prefectures;
TRUNCATE TABLE areas;
TRUNCATE TABLE stores;
TRUNCATE TABLE taxes;
TRUNCATE TABLE orders;
TRUNCATE TABLE order_menus;

-- 外部キー制約　有効化
set FOREIGN_KEY_CHECKS = 1;

-- 投入データ
INSERT INTO genres (name) VALUES ('セットメニュー');
INSERT INTO genres (name) VALUES ('お好みすし');

INSERT INTO categories (name) VALUES ('盛り込み');
INSERT INTO categories (name) VALUES ('一皿 100円（税別）');

INSERT INTO menus (name,price,genre_id,category_id) VALUES ('わだつみ', 8650, 1, 1);
INSERT INTO menus (name,price,genre_id,category_id) VALUES ('玉子', 100, 2, 2);

INSERT INTO customers (name,phone_number) VALUES ('太郎','09011111111');
INSERT INTO customers (name,phone_number) VALUES ('次郎','09022222222');
INSERT INTO customers (name,phone_number) VALUES ('三郎','09033333333');

INSERT INTO prefectures (name) VALUES ('北海道');
INSERT INTO prefectures (name) VALUES ('青森');

INSERT INTO areas (name,prefecture_id) VALUES ('札幌市',1);
INSERT INTO areas (name,prefecture_id) VALUES ('八戸市',2);

INSERT INTO stores (name,area_id) VALUES ('札幌本店', 1);
INSERT INTO stores (name,area_id) VALUES ('札幌2号店', 1);
INSERT INTO stores (name,area_id) VALUES ('八戸漁港店', 2);

INSERT INTO taxes (rate) VALUES (1.08);
INSERT INTO taxes (rate) VALUES (1.10);

INSERT INTO orders (payment_paid,customer_id,store_id,tax_id,orderd_at)
            VALUES (true,1,1,1,Now());
INSERT INTO orders (payment_paid,customer_id,store_id,tax_id,orderd_at)
            VALUES (true,2,1,1,Now());
INSERT INTO orders (payment_paid,customer_id,store_id,tax_id,orderd_at)
            VALUES (false,3,2,2,Now());

INSERT INTO order_menus (quantity,wasabi_selected,order_id,menu_id)
                 VALUES (2,true,1,1);
INSERT INTO order_menus (quantity,wasabi_selected,order_id,menu_id)
                 VALUES (10,true,2,2);

