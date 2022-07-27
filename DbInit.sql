CREATE TABLE store.products
(
    Id          uniqueidentifier    PRIMARY KEY DEFAULT newid(),
    Name        nvarchar(30)         NOT NULL
);

CREATE TABLE store.categories
(
    Id          uniqueidentifier    PRIMARY KEY DEFAULT newid(),
    Name        nvarchar(30)         NOT NULL
);

CREATE TABLE store.product_category
(
    Id          uniqueidentifier    PRIMARY KEY DEFAULT newid(),
    ProductId   uniqueidentifier    NOT NULL,
    CategoryId  uniqueidentifier    NOT NULL,
    FOREIGN KEY (ProductId) REFERENCES store.products(Id),
    FOREIGN KEY (CategoryId) REFERENCES store.categories(Id),
);

GO

INSERT INTO store.products(Name)
VALUES (N'Мяч Футбольный'),
       (N'Футболка 1'),
       (N'Футболка 2'),
       (N'Куртка'),
       (N'Чайник'),
       (N'Мяч для большого тенниса'),
       (N'Кроссовки Bosco');

INSERT INTO store.categories(Name)
VALUES (N'Мячи'),
       (N'Одежда'),
       (N'Лето'),
       (N'Кроссовки');