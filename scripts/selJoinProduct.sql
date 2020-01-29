SELECT * FROM sobzav.product;
SHOW FIELDS FROM sobzav.product;
SELECT
	p.product_id, 
	p.product_name, 
	pt.product_type_name,
    pc.product_category_name
FROM 
	sobzav.product AS p
LEFT JOIN
	(sobzav.product_type AS pt,
    sobzav.product_category AS pc)
ON 
	(p.product_type_id = pt.product_type_id AND
    p.product_category_id = pc.product_category_id)
