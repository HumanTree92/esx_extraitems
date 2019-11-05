INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('lockpick', 'Lock Pick', -1, 0, 1),
	('darknet', 'Dark Net', 1, 0, 1),
	('drill', 'Drill', 1, 0, 1),
	('binoculars', 'Binoculars', 1, 0, 1),
	('oxygen_mask', 'Oxygen Mask', -1, 0, 1),
	('bulletproof', 'Bullet-Proof Vest', -1, 0, 1),
	('firstaidkit', 'First Aid Kit', -1, 0, 1),
	('clip', 'Weapon Clip', -1, 0, 1)
;

INSERT INTO `shops` (store, item, price) VALUES
	('ExtraItemsShop', 'lockpick', 20),
	('ExtraItemsShop', 'darknet', 25),
	('ExtraItemsShop', 'drill', 180),
	('ExtraItemsShop', 'binoculars', 10),
	('ExtraItemsShop', 'oxygen_mask', 400),
	('ExtraItemsShop', 'bulletproof', 300),
	('ExtraItemsShop', 'firstaidkit', 80),
	('ExtraItemsShop', 'clip', 250),
;