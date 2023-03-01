INSERT INTO `mygroceryshop`.`supplier`
(`IdSupplier`,
`SupplierName`,
`SupplierCity`)
VALUES
(2,'Alamri supllier', 'Barka'),
(1,'Hisham supplimments','Hail');

INSERT INTO `mygroceryshop`.`category`
(`idCategory`,
`CategoryName`)
VALUES
(1,'Fruits'),
(2,'Vegetables');

INSERT INTO `mygroceryshop`.`product`
(`idProduct`,
`ProductName`,
`ProductPrDate`,
`ProductctExpDate`,
`IdSupplier`,
`idCategory`)
VALUES
(1,'Banana','2022-02-21','2022-04-21',1,1),
(2,'Tomato','2022-02-21','2022-03-21',1,2);





