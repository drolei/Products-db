CREATE TABLE Products (
    ProductId int NOT NULL IDENTITY,
    ProductName varchar(200),
    PRIMARY KEY (ProductId)
);

CREATE TABLE Categories (
    CategoryId int NOT NULL IDENTITY,
    CategoryName varchar(200),
    PRIMARY KEY (CategoryId)
);
create table ProductsCategoriesJunction
(
  ProductID int,
  CategoryID int,
  CONSTRAINT Product_Category_PK PRIMARY KEY (ProductID, CategoryID),
  CONSTRAINT FK_Product 
      FOREIGN KEY (ProductID) REFERENCES Products (ProductId),
  CONSTRAINT FK_Category 
      FOREIGN KEY (CategoryID) REFERENCES Categories (CategoryId)
);