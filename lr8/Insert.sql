USE pizzeria;
INSERT INTO menu(name, description, weight, price)
	VALUES('Маргарита', 'Увеличенная порция моцареллы, томаты, итальянские травы, фирменный томатный соус', 400, 419.00),
			('Пепперони', 'Пикантная пепперони, увеличенная порция моцареллы, фирменный томатный соус', 340, 419.00),
			('Цыплёнок ранч', 'Цыпленок, ветчина, соус ранч, моцарелла, томаты, чеснок', 390, 639.00),
			('Гавайская', 'Двойная порция цыпленка, ананасы, моцарелла, фирменный соус альфредо', 390, 419.00),
			('Карбонара', 'Бекон, сыры чеддер и пармезан, моцарелла, томаты, красный лук, чеснок, фирменный соус альфредо, итальянские травы', 590, 819.00),
			('Диабло', 'Острая чоризо, острый перец халапеньо, соус барбекю, митболы из говядины, томаты, сладкий перец, красный лук, моцарелла, фирменный томатный соус', 940, 949.00),
			('Мортаделла', 'Мортаделла, брынза, моцарелла, соус песто, фирменный томатный соус', 590, 819.00),
			('Аррива', 'Цыпленок, острая чоризо, соус бургер, сладкий перец, красный лук, томаты, моцарелла, соус ранч, чеснок', 760, 799.00);
INSERT INTO deliveryman(fullname, phonenumber)
	VALUES('Сегизбаев Даниил Сергеевич', '+7(939)754-82-61'),
		('Попов Дмитрий Владиславович', '+7(265)754-21-32'),
		('Федорчеф Александр Владимирович', '+7(951)456-72-38'),
		('Пиманов Дмитрий Сергеевич', '+7(927)567-78-42'),
		('Чибидин Никита Анатольевич', '+7(927)482-77-61'),
		('Никонов Вячеслав Алексеевич', '+7(921)596-99-41'),
		('Амиров Рамазон Ахматович', '+7(999)339-36-84'),
		('Трошков Илья Владимирович', '+7(967)725-35-17'),
		('Емельянова Арина Романовна', '+7(989)820-10-82'),
		('Якухин Иван Сергеевич', '+7(927)452-91-14'),
		('Николабай Андрей Юрьевич', '+7(962)934-71-97'),
		('Школьников Владимир Дмитриевич', '+7(846)203-86-95'),
		('Жандина Софья Андреевна', '+7(846)202-11-11'),
		('Хохлов Антон Владимирович', '+7(920)627-41-32');
INSERT INTO deliveries(deliveryID, menuID, quantity, customerName, telephone, address, orderDate, deliverymanID, deliveryDate)
	VALUES(0010, 5, 4, 'Владимир', '+7(999)897-55-74', 'г.Самара, проспект Кирова, 130, кв.27', '2023-12-10 11:05:27', 2, '2023-12-10 11:45:55'),
			(0256, 2, 2, 'Артём', '+7(456)555-86-12', 'г.Самара, ул. Революционная, 45, кв.22', '2023-12-15 18:22:56', 7, '2023-12-15 19:10:12'),
            (6318, 8, 1, 'Фёдор', '+7(125)456-78-91', 'г.Самара, ул. Самарская, 74, кв.5', '2023-12-18 13:54:23', 14, '2023-12-18 14:54:05'),
            (2216, 6, 2, 'Антон', '+7(888)555-66-33', 'г.Самара, ул. Победы, 87, кв.5', '2023-12-19 20:42:32', 6, '2023-12-19 21:33:11'),
            (2217, 4, 3, 'Антон', '+7(888)555-66-33', 'г.Самара, ул. Победы, 87, кв.5', '2023-12-19 20:43:10', 6, '2023-12-19 21:33:14'),
            (4123, 3, 2, 'Семён', '+7(944)215-66-78', 'г.Самара, ул. Александра Матросова, 16, кв.12', '2023-12-21 12:48:12', 10, '2023-12-21 13:39:27'),
            (5587, 6, 2, 'Дмитрий', '+7(999)999-99-99', 'г.Самара, ул. Ново-Вокзальная, 12, кв.23', '2023-12-21 15:05:28', 13, '2023-12-21 15:50:43'),
            (0005, 7, 5, 'Валерий', '+7(555)353-50-21', 'г.Самара, Московское шоссе, 34, -', '2023-12-22 12:30:51', 8, '2023-12-22 13:11:24'),
            (0011, 2, 3, 'Глеб', '+7(666)666-66-66', 'г.Самара, ул. Антонова-Овсеенко, 59, кв.44', '2023-12-22 12:35:15', 3, '2023-12-22 13:04:45'),
            (1499, 1, 2, 'Мария', '+7(800)555-35-35', 'г.Самара, ул. Алма-Атинская, 28, кв.17', '2023-12-25 17:33:28', 4, '2023-12-25 18:22:37'),
            (9998, 8, 2, 'Ирина', '+7(345)678-90', 'г.Самара, ул. Николая Панова, 50, кв.63', '2023-12-27 14:39:55', 9, '2023-12-27 15:28:41'),
            (9999, 8, 3, 'Фантомас', '+7(999)899-57-74', 'г.Самара, ул. Подшипниковая, 15, кв.21', '2023-12-27 14:40:44', 14, '2023-12-27 15:29:22'),
            (2248, 4, 6, 'Дед Мороз', '+7(222)741-33-43', 'г.Самара, ул. Мичурина, 131, кв.44', '2023-12-31 22:12:24', 7, '2023-12-31 22:59:18'),
            (2249, 2, 3, 'Снегурочка', '+7(222)741-33-44', 'г.Самара, ул. Мичурина, 131, кв.44', '2023-12-31 22:14:36', 7, '2023-12-31 22:59:18');
            