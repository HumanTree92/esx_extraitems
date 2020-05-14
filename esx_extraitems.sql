USE `es_extended`;

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('darknet', 'Dark Net', 1, 0, 1),
	('binoculars', 'Binoculars', 1, 0, 1),
	('bulletproof', 'Bullet-Proof Vest', 1, 0, 1),
	('drill', 'Drill', 1, 0, 1),
	('firstaidkit', 'First Aid Kit', 1, 0, 1),
	('lockpick', 'Lock Pick', 1, 0, 1),
	('oxygenmask', 'Oxygen Mask', 1, 0, 1),
	('repairkit', 'Repair Kit', 1, 0, 1),
	('tirekit', 'Tire Kit', 1, 0, 1),
	('weabox', 'Weapon Box', 1, 0, 1),
	('weaclip', 'Weapon Clip', 1, 0, 1),
	('vehgps', 'Vehicle GPS', 1, 0, 1)
;

INSERT INTO `shops` (store, item, price) VALUES
	('ExtraItemsShop', 'darknet', 25),
	('ExtraItemsShop', 'binoculars', 10),
	('ExtraItemsShop', 'bulletproof', 300),
	('ExtraItemsShop', 'drill', 180),
	('ExtraItemsShop', 'firstaidkit', 80),
	('ExtraItemsShop', 'lockpick', 20),
	('ExtraItemsShop', 'oxygenmask', 400),
	('ExtraItemsShop', 'repairkit', 150),
	('ExtraItemsShop', 'tirekit', 25),
	('ExtraItemsShop', 'weabox', 60),
	('ExtraItemsShop', 'weaclip', 25),
	('ExtraItemsShop', 'vehgps', 25)
;
