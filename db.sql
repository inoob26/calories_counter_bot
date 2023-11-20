CREATE TABLE IF NOT EXISTS bot_user (
    bot_user_id INTEGER primary key,
    created_at timestamp default current_timestamp NOT NULL,
    telegram_id INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS category (
    category_id INTEGER primary key,
    category_name VARCHAR(255) UNIQUE
);

CREATE TABLE IF NOT EXISTS alias (
    alias_id INTEGER primary key,
    alias_name VARCHAR(255) UNIQUE
);

CREATE TABLE IF NOT EXISTS product (
    product_id INTEGER primary key,
    product_name VARCHAR(255) UNIQUE,
    calories INTEGER DEFAULT 0 NOT NULL,
    product_category_id INTEGER,
    product_alias_id INTEGER,
    FOREIGN KEY(product_category_id) REFERENCES category(category_id),
    FOREIGN KEY(product_alias_id) REFERENCES alias(alias_id)
);
