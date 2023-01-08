SELECT P.ProductName, C.CategoryName

FROM ProductsCategoriesJunction  as PC 

RIGHT JOIN Products as P
ON PC.ProductID = P.ProductId

LEFT JOIN Categories as C 
ON PC.CategoryID = C.CategoryId 