INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('oxygen_mask', 'Sukelluspuku', -1, 0, 1),
	('bulletproof', 'Luotiliivi', -1, 0, 1),
	('firstaidkit', 'Ensiapupakkaus', -1, 0, 1),
	('darknet', 'Dark Net', 1, 0, 1),
	('clip', 'Lipas', -1, 0, 1)
;

INSERT INTO `shops` (store, item, price) VALUES
	('ExtraItemsShop', 'oxygen_mask', 500),
	('ExtraItemsShop', 'bulletproof', 2500),
	('ExtraItemsShop', 'firstaidkit', 3000),
	('ExtraItemsShop', 'darknet', 250),
	('ExtraItemsShop', 'clip', 5000)
;