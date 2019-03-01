INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('oxygen_mask', 'Oxygen Mask', -1, 0, 1),
	('bulletproof', 'Bullet-Proof Vest', -1, 0, 1),
	('firstaidkit', 'First Aid Kit', -1, 0, 1),
	('darknet', 'Dark Net', 1, 0, 1),
	('clip', 'Weapon Clip', -1, 0, 1)
;

INSERT INTO `shops` (store, item, price) VALUES
	('ExtraItemsShop', 'oxygen_mask', 500),
	('ExtraItemsShop', 'bulletproof', 2500),
	('ExtraItemsShop', 'firstaidkit', 3000),
	('ExtraItemsShop', 'darknet', 250),
	('ExtraItemsShop', 'clip', 5000)
;