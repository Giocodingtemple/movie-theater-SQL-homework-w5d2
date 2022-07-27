INSERT INTO customer (first_name, last_name, email, phone_number, address) VALUES
('Steve', 'Universe', 'steve@gmail.com', '55555555555'), 1
('John', 'Wick', 'john@hotmail.com', '99999999999'), 2
('Jack', 'Bean', 'always@jillshouse.com', '33333333333'); 3 

INSERT INTO employee (first_name, last_name, email, phone_number, address) VALUES
('susie', 'who', 'swho@gmail.com', '11111111111'), 1
('harry', 'potter', 'hpotter@gmail.com', '22222222222'), 2
('hermione', 'granger', 'hgranger@hogwarts.com', '88888888888'); 3

INSERT INTO manager (first_name, last_name, email, phone_number, address) VALUES
('doctor', 'who', 'dwho@gmail.com', '44444444444'); 1

INSERT INTO theater_owner (first_name, last_name, email, phone_number, address) VALUES
('doctor', 'who', 'dwho14@gmail.com', '77777777777'); 1


INSERT INTO vendor(vendor_name, vendor_phone) VALUES
('Candy and More', '7804569856'), 1 
('Candy and More', '5648546556'), 2 
('Candy and More', '1234567890'), 3;

INSERT INTO item(item_name, "desc", price) VALUES
('M&M', 'where are all the brown ones?', 2.00), 1
('Gummy worms', 'do you think these will be real enough...', 2.00), 2
('JawBreaker', 'bite too hard and your jaw will be broken', 2.00); 3

INSERT INTO consession (price) VALUES
(5.00); 1
(5.00); 2
(5.00); 3

INSERT INTO ticket(price) VALUES
(3.00), 1
(6.00); 2

INSERT INTO movie(movie_list) VALUES
('Avatar the last airbender'), 1
('Sharknado'); 2

INSERT INTO movie theater(capacity, movie_id) VALUES
(25),1
(50);2

INSERT INTO vendor_item(vendor_id, item_id) VALUES
(1,1),
(2,2),
(3,3),



