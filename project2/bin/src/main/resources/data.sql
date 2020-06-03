-- Insert into loai_giay
INSERT INTO poly_project2.loai_giay(ten_loai) 
VALUES ('Adidas'),('Nike'),('NB');


-- 1,2 là Adidas
-- 3,4 là Nike
-- 5,6 là NB
		
-- Insert into kich_thuoc
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('35');-- 1
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('36');-- 2
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('37');-- 3
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('38');-- 4
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('39');-- 5
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('40');-- 6
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('41');-- 7
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('42');-- 8
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('43');-- 9
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('44');-- 10
insert into poly_project2.kich_thuoc(ten_kich_thuoc) values('45');-- 11

-- Insert into san_pham
insert into poly_project2.san_pham(ten_san_pham,chi_tiet,loai_giay_id,don_gia,chiet_khau)
values('Adidas NMD R2 Black and White','Giày Adidas NMD R2 Primeknit - Một trong những phối màu thời trang tươi tắn nhất của dòng giày NMD R2 chính hãng .Với công nghệ Prime knit kết hợp với bộ đế boost êm ái đã tạo ra một tuyệt phẩm NMD siêu hot, hãy ghé shop để là một trong những người sở hữu đôi giày NMD PK Black đầu tiên nhé.',1,3800000,0.1),
('Adidas NMD R1 Burgundy and Olive','Giày Adidas NMD R1 Burgundy and Olive -Một trong những phối màu thời trang tươi tắn nhất của dòng giày NMD R1 chính hãng.Với công nghệ Prime knit kết hợp với bộ đế boost êm ái đã tạo ra một tuyệt phẩm NMD siêu hot, hãy ghé shop để là một trong những người sở hữu đôi giày NMD đầu tiên nhé.',1,3800000,0.1),
('Adidas Superstar Bold All White','Mẫu giày classic huyền thoại của Adidas nay đã được độ thêm bộ đế Bold cao cấp. Nhanh ghé shop để rinh ngay nào các bạn.Cam kết giày chính hãng 100% Bao check, bao test!',1,2000000,0.1),
('ADIDAS CLOUDFOAM SPEED FOOTWEAR','CLOUDFOAM là một lớp đệm cực nhẹ và mềm mại, hứa hẹn sẽ đem đến một thế hệ giày siêu êm mới cho các bạn trẻ năng động. Như tên gọi của concept ‘Step-In Comfort’ (tạm dịch: trải nghiệm sự thoải mái), người mang sẽ có cảm giác nhẹ nhàng và êm ái ngay khi chạm vào CLOUDFOAM. Các đôi giày adidas neo CLOUDFOAM mang đến cảm giác thoải mái nhất cho đôi chân nhờ lớp đế ngoài giảm sốc EVA và lớp đệm lót ôm sát lòng bàn chân, phù hợp cho mọi hoạt động hàng ngày.',1,3800000,0.1),
('MEN PURE BOOST ZG PRIME SHOES','Pure Boost ZG Prime được kết hợp với hàng ngàn viên nang boost, giúp hoàn trả năng lượng hoàn hảo qua từng bước chạy, mang đến trải nghiệm chạy bộ tuyệt vời.',1,3800000,0.1),
('ZG BOUNCE TRAINER SHOES','Pure Boost – dòng sản phẩm Performance + Casual được yêu thích nhất trong tất cả các mẫu sản phẩm Boost của adidas sắp sửa quay trở lại với một diện mạo mới mạnh hơn và những update đem lại hiệu năng tốt hơn.',1,2000000,0.1),
('LITE RACER SHOES','Giày thể thao nam Adidas neo lite racer shoes Những “chàng giày” này được thiết kế nhằm mang đến sự dễ chịu và thoải mái. Sải bước rộng và nhẹ nhàng. Thiết kế dựa trên cảm hứng giày running 2 lớp, một lớp lưới bên trên (two-tone mesh upper)',1,3800000,0.1),
('CLOUDFOAM SPEED SHOES','CLOUDFOAM là một lớp đệm cực nhẹ và mềm mại, hứa hẹn sẽ đem đến một thế hệ giày siêu êm mới cho các bạn trẻ năng động. Như tên gọi của concept ‘Step-In Comfort’ (tạm dịch: trải nghiệm sự thoải mái), người mang sẽ có cảm giác nhẹ nhàng và êm ái ngay khi chạm vào CLOUDFOAM. Các đôi giày adidas neo CLOUDFOAM mang đến cảm giác thoải mái nhất cho đôi chân nhờ lớp đế ngoài giảm sốc EVA và lớp đệm lót ôm sát lòng bàn chân, phù hợp cho mọi hoạt động hàng ngày.',1,3800000,0.1),
('ADVANTAGE CLEAN VS SHOES','Càng đơn giản càng đẹp. Những đôi giày này bị tước bỏ những yếu tố cần thiết. Chỉ cần da tổng hợp mịn màng, đục lỗ 3-sọc và kéo gót chân.
Ít hơn là nhiều hơn. Những đôi giày được tháo bỏ để các yếu tố cần thiết. Chỉ mịn da tổng hợp, đục lỗ 3-Stripes và kéo gót chân.
Càng đơn giản càng đẹp. Những đôi giày được lột đến yếu tố cần thiết. Chỉ cần mịn da tổng hợp, đục 3-Stripes và kéo gót chân.',1,2000000,0.1),
('ADIDAS X 15.3 FG/AG FOOTWEAR','Giày đá bóng Adidas X 17.1 FG- White/ Energy Blue/ Clear Grey, giày đá bóng chính hãng, mã sản phẩm: S82285, giày đá bóng Adidas X, giày đá bóng sân cỏ tự nhiên…  dòng giày Adidas X đặc chủng cho lối chơi tốc độ, trọng lượng cực nhẹ, chỉ khoảng 190gram/chiếc',1,3800000,0.1),
('Nike Air Presto Triple Black','Air Presto - Mẫu giày Nike chính hãng đã trở lại với phối màu đỉnh cao Triple Black  Quan trọng là giá vẫn rất mềm cho ae nhé. Đây là một trong những dòng giày Nike bán chạy nhất từ trước tới nay, với thiết kế hiện đại và cực kỳ êm ái. Upper làm bằng chất liệu vải thun, tạo cảm giác ôm chân cũng như dễ hoạt động',2,3800000,0.1),
('Nike Air Max 90 White and Red','Giày Nike Air max 90 chính hãng vừa cập bến shop với phối màu xám mới nhất ! Upper da cao cấp, cùng với đế air nổi tiếng của Nike ! Hàng chính hãng 100% Full box, full tem tag. Bao check, bao test. Cam kết đền tiền x3 khi khách hàng phát hiện không chính hãng ! ',2,2000000,0.1),
('Nike Air Uptempo Thunder Blue','Giày Nike Air Uptempo chính hãng - Cái tên đã làm mưa làm gió suốt cả một thời gian dài trong cộng đồng giày. Thiết kế chữ Air ôm sát phần upper thực sự là một thiết kế đỉnh của đỉnh, gọn nhẹ đề cao tính thời trang của Nike. Đế Air siêu êm ái cũng là một điểm nổi bật của đôi Air Uptempo này! ',2,3800000,0.1),
('Nike Romaleos 3 Americana','Chất liệu cao cấp, đặc biệt và độc quyền: phổ biến là EVA (ethylene vinyl acetate), PU (polyurethane), Lunarlon, Cushlon, Phylon,….
Thiết kế nén khí làm chân tiếp đất “êm” hơn, giúp giảm bớt đi lực tác động giúp bạn được bảo vệ tránh dẫn đến các chấn thương từ cường độ hoạt động cao. 
Thích hợp cho nhiều độ tuổi, mẫu mã đa dạng phong phú phù hợp với mọi hoàng cảnh và hoạt động.
Công nghệ giày: Nike Zoom.',2,3800000,0.1),
('Nike Metcon 4 iD','Chất liệu cao cấp, đặc biệt và độc quyền: phổ biến là EVA (ethylene vinyl acetate), PU (polyurethane), Lunarlon, Cushlon, Phylon,….
Thiết kế nén khí làm chân tiếp đất “êm” hơn, giúp giảm bớt đi lực tác động giúp bạn được bảo vệ tránh dẫn đến các chấn thương từ cường độ hoạt động cao. 
',2,2000000,0.1),
('Nike Varsity Complete Trainer','Đôi giày sử dụng đế giữa mang công nghệ Dynamic Support với mật độ kép lõi Phylon và Cushlon, tăng cường đệm dưới chân đồng thời làm giảm đáng kể khả năng bàn chân bị lật má trong.Upper lưới được chế tác linh hoạt và thích ứng tốt với bàn chân, cùng công nghệ Flywire giữ bàn chân cực kì cố định. Ngoài ra, giày Nike Air Zoom Structure 21 có đế ngoài vân waffle cho độ bền và độ bám cao trên đường chạy.',2,3800000,0.1),
('Nike Lunar Fingertrap TR','Giày tập luyện của Nike Lunar Fingertrap TR Men có thiết kế dệt độc đáo và đệm lót cho cảm giác thoải mái, giống như vớ và cảm giác đáp ứng trong suốt quá trình tập luyện của bạn.',2,3800000,0.1),
('Nike Zoom Command College (Ohio State)','Giày đào tập luyện cho nam giới của Nike Zoom Command College (Ohio State) là hoàn hảo cho ngày thi đấu hoặc phòng tập thể dục. Nó có công nghệ Flywire để hỗ trợ khóa xuống và đệm Nike Zoom Air cho cảm giác nhẹ, nhạy cảm trong các bài luyện tập cường độ cao như luyện tập chéo và đấm bốc.',2,2000000,0.1),
('Nike Air Trainer 180','Giày tập luyện của nam giới Nike Air Trainer 180 kết hợp đệm phản ứng với rãnh flex sâu để hấp thụ tác động vượt trội và chuyển động tự nhiên trong khi tập luyện cường độ cao.',2,3800000,0.1),
('Nike Free Trainer V7','Huấn luyện trọng lượng cơ thể của Nike Free Trainer V7, Gym Gym mang đến sự ổn định và linh hoạt mà bạn cần cho các bài luyện tập cường độ cao — và bổ sung tính linh hoạt đáng kinh ngạc của bản Nike Free.',2,3800000,0.1),
('NB FW MEN CUSHIONING MRUSHYR US7.5','NB FWMEN - Mẫu giày New Balance chính hãng đã trở lại với phối màu đỉnh cao Triple Black  Quan trọng là giá vẫn rất mềm cho ae nhé. Đây là một trong những dòng giày Nike bán chạy nhất từ trước tới nay, với thiết kế hiện đại và cực kỳ êm ái. Upper làm bằng chất liệu vải thun, tạo cảm giác ôm chân cũng như dễ hoạt động',3,2000000,0.1),
('NB FW MEN CUSHIONING MSVRCFLF US7','NB CUSHIONING chính hãng vừa cập bến shop với phối màu xám mới nhất ! Upper da cao cấp, cùng với đế NB nổi tiếng của Nike ! Hàng chính hãng 100% Full box, full tem tag. Bao check, bao test. Cam kết đền tiền x3 khi khách hàng phát hiện không chính hãng ! ',3,3800000,0.1),
('NB FW MEN CLASSIC MRL996KE US8.5','Giày NB CLASSIC chính hãng - Cái tên đã làm mưa làm gió suốt cả một thời gian dài trong cộng đồng giày. Thiết kế chữ A ôm sát phần upper thực sự là một thiết kế đỉnh của đỉnh, gọn nhẹ đề cao tính thời trang của Nike. Đế Air siêu êm ái cũng là một điểm nổi bật của đôi Air Uptempo này! ',3,3800000,0.1),
('Junior 4040v4 Rubber Molded','Lấy bánh răng các chuyên gia mặc, với các cao su 4040v4 cao su đúc. Giày có tính năng tương tự như bền, linh hoạt / lưới trên như phiên bản dành cho người lớn. Cleat cũng có hỗ trợ chân giữa cao cấp, cleats thấp cho độ bám tuyệt vời và đệm đặt chiến lược để bạn có thể tấn công các tấm với sự tự tin.',3,2000000,0.1),
('Hook and Loop 680v5','Hook loop 680v5 của nam giới khuyến khích thời gian chơi không sợ hãi bằng cách biến đổi phong cách và hiệu suất của chiếc giày chạy bộ phổ biến 680 của chúng tôi thành một chiếc sneaker mà anh ấy có thể đeo mỗi ngày. Với đệm đệm ABZORB của nó để hỗ trợ trong việc hấp thụ tác động và da và lưới trên ôm chân với trọng lượng nhẹ, thoải mái thở, giày này chắc chắn sẽ là một yêu thích tất cả các năm dài. Một kết nối hook-and-loop thuận tiện giúp anh ta di chuyển trong nháy mắt.',3,3800000,0.1),
('Fresh Foam Lazr','Fresh Foam Lazr khiến họ trông giống những người thách thức nghiêm túc. Phiên bản trẻ em này của một chiếc giày thể thao cao cấp mang lại sự thoải mái và hỗ trợ mà họ cần để bắt đầu đẩy giới hạn vật lý của họ. Một hình bóng tiến bộ trong màu sắc nóng nhất hiện nay giúp trẻ em trên các cạnh cắt của thời trang, và xây dựng bootie slip-on làm cho mặc quần áo một snap.',3,3800000,0.1),
('Mens Fresh Foam Cruz v2 Sport','Trượt trên của chúng tôi Fresh Foam Cruz v2 thể thao chạy giày của nam giới và đi. Được chế tác từ dây kéo co giãn trên đệm Foam sang trọng, giày này mang lại sự thoải mái, dễ chịu cả ngày.',3,2000000,0.1),
('Mens New Balance 624','Một số người nói rằng huấn luyện viên mới của Balance Balance 624 không thể tốt hơn. Và họ sẽ sai. Trình bày bản cập nhật 624 với độ linh hoạt cao, đệm nâng cao và chiều rộng rộng hơn bao giờ hết (4E và 6E). Thông số kỹ thuật bao gồm bàn chân EVA, IMEVA (Mút đúc EVA EVA), đệm ABZORB®, chân bên trong và bộ lót Phantom Liner nhẹ của chúng tôi.',3,3800000,0.1),
('NB 247 Decon','Lối sống suốt ngày đêm của bạn kêu gọi một chiếc giày tối ưu hóa cả phong cách và hiệu suất cho tính linh hoạt cao cấp. 247 Sport của nam giới thêm phong cách thể thao cho cái nhìn hàng ngày của bạn và cung cấp một sự phù hợp cạnh tranh nhất với một phong cách bootie nhẹ và linh hoạt trên. Với cấu hình sạch sẽ và đệm lót cao cấp REVlite, chiếc giày này hoàn toàn phù hợp cho mọi thứ từ ngày làm việc của bạn đến các nhu cầu của cuộc sống hiện đại.',3,3800000,0.1),
('NB 247 LFC','Gói sản phẩm Fresh Foam Cruz Retro Hoodie Pack mang giày chạy êm ái của chúng tôi cho người đàn ông và làm cho nó thoải mái hơn với phần trên được làm bằng vải dệt căng được lấy cảm hứng từ chiếc áo thun yêu thích của bạn. Một chiếc xe đạp dệt ngược chân giữa giúp mang lại một chuyến đi vừa vặn và an toàn, và thiết kế trượt, thuận tiện giúp bạn di chuyển trong tích tắc.',3,2000000,0.1);


-- insert into kho
-- insert into poly_project2.kho(ten_kho,dia_chi) values('Kho Lê Lợi','123 Lê Lợi P10, Q1, TP.HCM');

-- insert into hang_trong_kho
insert into poly_project2.hang_trong_kho(so_luong,kich_thuoc_id,san_pham_id)
values(7,6,1),(4,7,1),(8,9,1),(10,10,1),
(12,3,2),(17,4,2),(4,5,2),(8,7,2),
(10,6,3),(10,8,3),(10,10,3),
(30,2,4),(30,4,4),(30,5,4),(30,7,4),(30,8,4),
(30,4,5),(30,6,5),(30,9,5),(30,11,5),
(30,1,6),(30,3,6),(30,4,6),(30,5,6),(30,7,6),
(30,4,7),(30,7,7),(30,9,7),
(30,3,8),(30,4,8),(30,5,8),(30,6,8),
(30,2,9),(30,5,9),(30,6,9),(30,9,9),
(30,1,10),(30,2,10),(30,4,10),(30,6,10),(30,7,10),
(30,4,11),(30,6,11),(30,8,11),(30,10,11),
(30,2,12),(30,4,12),(30,5,12),
(30,3,13),(30,5,13),(30,7,13),
(30,1,14),(30,5,14),
(30,3,15),(30,7,15),(30,10,15),(30,11,15),
(30,1,16),(30,4,16),(30,5,16),
(30,3,17),(30,4,17),(30,7,17),(30,8,17),(30,9,17),
(30,1,18),(30,2,18),(30,3,18),(30,4,18),(30,5,18),
(30,2,19),(30,6,19),(30,10,19),
(30,1,20),(30,3,20),(30,4,20),(30,6,20),(30,7,20),
(30,3,21),(30,5,21),(30,8,21),
(30,2,22),(30,4,22),(30,5,22),(30,6,22),
(30,4,23),(30,8,23),(30,9,23),(30,11,23),
(30,2,24),(30,3,24),(30,4,24),(30,6,24),(30,7,24),
(30,7,25),(30,10,25),
(30,1,26),(30,3,26),(30,4,26),(30,6,26),
(30,4,27),(30,7,27),(30,8,27),
(30,1,28),(30,4,28),(30,5,28),(30,6,28),
(30,2,29),(30,6,29),(30,9,29),
(30,3,30),(30,5,30),(30,6,30),(30,7,30),(30,8,30);

-- insert into khach_hang
insert into poly_project2.khach_hang(ten_khach_hang,dia_chi,email,so_dien_thoai,id_account)
values('Khoa','123 Hoàng Hoa Thám Q.PN, TP.HCM','conque6@gmail.com','01698300191',''),
('Hòa','99 Lê Lợi Q.1, TP.HCM','hoanv@gmail.com','01698309267',''),
('Long','13 Lạc Long Quân Q.11, TP.HCM','longvh1@gmail.com','01690127956',''),
('Lai','12 Trần Khánh Dư Q.PN, TP.HCM','laitb9@gmail.com','01609307956',''),
('Ngọc','621 Hoàng Sa Q.PN, TP.HCM','ngocbt@gmail.com','01698075956',''),
('Nhi','130 Đề Thám Q.1, TP.HCM','nhidh6@gmail.com','01698307907',''),
('Hằng','129 Phan Văn Trị Q.GV, TP.HCM','hangntt6@gmail.com','01692007956',''),
('Nga','399 Kha Vạn Cân Q.TĐ, TP.HCM','ngaht@gmail.com','01698307905',''),
('Linh','199 Lê Văn Sỹ Q.PN, TP.HCM','linhntt@gmail.com','01698307556',''),
('Phúc','555 Hai Bà Trưng Q.3, TP.HCM','phucbd@gmail.com','01698307856',''),
('Am','1230 Phạm Văn Đồng Q.TĐ, TP.HCM','amnn@gmail.com','01698307956','');


-- insert into nhan_vien
insert into poly_project2.nhan_vien(ten_nhan_vien,ngay_sinh,gioi_tinh,dia_chi,email,so_dien_thoai)
values('Nguyễn Vũ Hòa','1995-2-5',0,'12 Điện Biên Phủ Q.Bình Thạnh, TP.HCM','skynguyen79@gmail.com','01657154932'),
('Vũ Hoàng Long','1990-2-5',0,'123 Nguyễn Du Q.1, TP.HCM','longvh@gmail.com','01657154876'),
('Phạm Xuân Khoa','1996-8-5',0,'111 Lê Duẩn Q.1, TP.HCM','khoapx@gmail.com','01650754932'),
('Trượng Bông Lai','1996-9-5',0,'282 Nam Kỳ Khởi Nghĩa Q.3, TP.HCM','laitb@gmail.com','01657150642');

-- insert into image san pham
insert into poly_project2.hinh_san_pham(hinh,san_pham_id) values('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-nmd-r2-white-black-1.jpg?alt=media&token=45131b12-9998-43ed-bd85-8eefef4b458f',1);
insert into poly_project2.hinh_san_pham(hinh,san_pham_id) values
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-nmd-r2-white-black-2.jpg?alt=media&token=01a3d3e1-d422-4530-b6ec-af3f3c94494e',1),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-nmd-r2-white-black-3.jpg?alt=media&token=1531d122-2346-4d74-91c5-76615b6e5841',1),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20NMD%20R1%20Burgundy%20and%20Olive%201.jpg?alt=media&token=4855d42e-c5b4-4483-92a0-ccad0a4b5d42',2),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%202.jpg?alt=media&token=0276a293-7b92-4f72-b338-341ac525cde2',2),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%203.jpg?alt=media&token=e42bdfc1-5748-4af7-baab-ca696c2951c6',2),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%201.jpg?alt=media&token=b35b1a04-98fc-4a74-a41f-c04eb198ead6',3),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%202.jpg?alt=media&token=0276a293-7b92-4f72-b338-341ac525cde2',3),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Adidas%20Superstar%20Bold%20All%20White%203.jpg?alt=media&token=e42bdfc1-5748-4af7-baab-ca696c2951c6',3),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-3.png?alt=media&token=2b6f5016-1d64-4025-bcec-e274167cce6a',4),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-3.1.png?alt=media&token=19531e37-6fec-46da-a37b-1608b78e5e46',4),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-3.2.png?alt=media&token=1cb033e3-46ff-4b97-865a-ef1f9a99210f',4),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-1.png?alt=media&token=4b7e6913-4f10-47a4-a172-3c3e2f9a8b0c',5),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-1.1.png?alt=media&token=aa9c92dc-5089-474a-b0a1-cb11a172e8a6',5),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-1.2.png?alt=media&token=38fbd4c5-469a-4631-9fe0-4f050991e213',5),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-2.png?alt=media&token=46230e56-c881-47b2-b2b0-dcfd50198d13',6),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-2.1.png?alt=media&token=6ed4e58c-7d52-4899-a6d9-83fd58989a66',6),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-2.2.png?alt=media&token=409bf220-65c4-435d-8f1b-9c531984b164',6),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-4.png?alt=media&token=6de8bb59-9d40-47e1-965e-f0fd0ed3bdb2',7),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-4.1.png?alt=media&token=65d135c4-3a06-434f-a87d-a73f947fbe6b',7),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-4.2.png?alt=media&token=720995c1-f271-4fa2-890d-23cb9e667454',7),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-5.png?alt=media&token=4c5288f9-c40d-40a7-b19f-37a0a60ea462',8),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-5.1.png?alt=media&token=c192b46e-7585-411d-aa66-df601cd22691',8),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-5.2.png?alt=media&token=f4b456d5-1594-4e7d-966b-8c0a761a3649',8),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-6.png?alt=media&token=53ebec8c-799e-48b4-b7ad-09ce088cde9e',9),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-6.2.png?alt=media&token=519c0c2d-4305-42e8-8d33-7dd6b470975c',9),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-6.2.png?alt=media&token=519c0c2d-4305-42e8-8d33-7dd6b470975c',9),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-7.png?alt=media&token=e6bf7f82-7a2b-47f9-abb3-4baf9ba0e14a',10),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-7.1.png?alt=media&token=2b8d869f-07b7-4d6a-afbd-013a0d636c04',10),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-7.2.png?alt=media&token=de85ecb9-1c59-4a6d-a689-95df93a5f7b2',10),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Presto%20Triple%20Black%201.jpg?alt=media&token=160d59e8-d4d5-4ef6-897f-1a3162de9a7b',11),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Presto%20Triple%20Black%202.jpg?alt=media&token=b47e919c-c0ab-4022-a69c-0e8d1995a0bf',11),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Presto%20Triple%20Black%203.jpg?alt=media&token=6003e268-52cf-4b9f-854b-bd676ef0e079',11),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Max%2090%20White%20and%20Red%201.jpg?alt=media&token=44d8a861-769b-4c47-b36c-9cf5e073c367',12),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Max%2090%20White%20and%20Red%202.jpg?alt=media&token=0140fe19-d237-4b84-8b7d-09c71b382ba8',12),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Max%2090%20White%20and%20Red%203.jpg?alt=media&token=f7e956ab-0051-4599-844d-373d3270f270',12),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Uptempo%20Thunder%20Blue%201.jpg?alt=media&token=9d477fef-743d-407f-a3fd-69ac44b6dccd',13),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Uptempo%20Thunder%20Blue%202.jpg?alt=media&token=506cd8b6-292f-4d21-a456-a10c6ce0f391',13),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/Nike%20Air%20Uptempo%20Thunder%20Blue%203.jpg?alt=media&token=c539e392-a5ff-46ac-8c44-9a9655bbc7d8',13),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-4.png?alt=media&token=28928c4c-64fe-4a42-886b-89613624237c',14),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-4.1.png?alt=media&token=2dce88f8-c219-4666-bd5b-571024a40520',14),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-4.2.png?alt=media&token=3c0ea4b6-040b-4969-a59a-c9d26b801b47',14),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-5.png?alt=media&token=f95d66dc-98e0-478a-865d-8d0018010916',15),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-5.1.png?alt=media&token=c83a928e-0953-4152-b9ab-be6be9bc9a46',15),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-5.2.png?alt=media&token=4b9a83be-7c74-4d5d-aa94-f9654eb89e30',15),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-6.png?alt=media&token=8f176657-8be6-4bab-9830-d0b6e97c89fb',16),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-6.1.png?alt=media&token=e54f755d-d6ac-4b9a-89b8-2d2848d4dc85',16),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-6.2.png?alt=media&token=a1d23c17-f48c-43c1-ac60-2f8c94c1e5d5',16),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-7.png?alt=media&token=c436a880-b066-4941-8bcd-eac139d4ea77',17),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-7.1.png?alt=media&token=dd521d79-dd22-43d4-b3f3-8982d2e9236b',17),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-7.2.png?alt=media&token=150f3101-6323-400c-a093-f68a6e056773',17),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-8.png?alt=media&token=afe2d06c-ccca-4bf3-ac0b-f4dd4326da6a',18),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-8.1.png?alt=media&token=db3f8a18-ec25-4a95-ae52-8b77a13e098b',18),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-8.2.png?alt=media&token=8ac21d02-7415-4d03-b143-1d1eb2745ba2',18),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-9.png?alt=media&token=878df3be-5305-4d7e-849a-7838164dbfab',19),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-9.1.png?alt=media&token=261e52a2-c19e-478b-8e37-705fe24c0bd1',19),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-9.2.png?alt=media&token=3c9742f1-4ded-4589-8949-eca9916d990f',19),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-10.png?alt=media&token=399327b1-43cf-40b6-b30d-2f3ffb01c0c8',20),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-10.1.png?alt=media&token=085d9d96-06a7-4512-9585-41b810c09c3c',20),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nike-10.2.png?alt=media&token=edd00f00-5355-41d0-8441-6e3f2e303f8c',20),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-1.png?alt=media&token=1b2f6e36-0c99-42bf-ac8b-c9a501ef6297',21),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-1.1.png?alt=media&token=461da184-de12-4de9-b5cc-71092c234cb9',21),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-1.2.png?alt=media&token=c7f13fc1-6fe7-4745-bd31-58b0dab3c4d6',21),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-2.png?alt=media&token=820e0024-677e-463f-86b8-52d48d0c2d80',22),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-2.1.png?alt=media&token=e929aff4-21d9-4d5c-ad0a-162284770fdc',22),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-2.2.png?alt=media&token=6450f37f-2b60-4f11-adf9-a6ee45933442',22),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/adidas-3.png?alt=media&token=2b6f5016-1d64-4025-bcec-e274167cce6a',23),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-3.1.png?alt=media&token=2848efeb-cef3-4de6-94a7-f2c8b9485cbf',23),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-3.2.png?alt=media&token=b6e9d66f-1cff-4aee-a190-c28725de7e09',23),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-4.png?alt=media&token=a6fe812c-e61c-4995-89bc-61b9cf9be2ff',24),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-4.1.png?alt=media&token=bfbdb610-2aa1-4e78-87b3-b9e0fd9d3496',24),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-4.2.png?alt=media&token=660877fa-657c-4d69-9fae-f1e4ff43d672',24),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-5.png?alt=media&token=21a79f5d-fec6-4ca9-b70f-c869e134def6',25),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-5.1.png?alt=media&token=f81352a6-e827-440d-90f6-7414c78387a0',25),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-5.2.png?alt=media&token=d3ff4108-2536-4acc-971e-1d58997bf264',25),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-6.png?alt=media&token=06e19c31-b680-41a1-9800-c1379e250371',26),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-6.1.png?alt=media&token=35e1b3a8-8e67-42e9-9587-46dd6965a921',26),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-6.2.png?alt=media&token=8f5b2fef-1480-4dfe-93e8-e77361fb9c4f',26),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-7.png?alt=media&token=592e0c4e-cf19-4df9-aa8b-942d95434b52',27),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-7.1.png?alt=media&token=3a0277f7-b7b4-4d2f-b582-4822145f9bb4',27),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-7.2.png?alt=media&token=7c7285f1-2e7c-4c70-80f7-f430da3936df',27),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-8.png?alt=media&token=999ce1c4-3d6b-4c43-90e1-a6543cdc5234',28),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-8.1.png?alt=media&token=d9a22713-ad11-4f7f-b1c5-46a569c1682f',28),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-8.2.png?alt=media&token=9d0c380d-0970-4732-a519-d2630a64dd85',28),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-9.png?alt=media&token=9d722b75-8101-4df9-a6da-681253a6feb7',29),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-9.1.png?alt=media&token=46603b61-2c2a-4037-8ee3-575ba687fca2',29),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-9.2.png?alt=media&token=c454f905-caba-4b98-ade3-ded68792b4da',29),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-10.png?alt=media&token=4568f7e1-329a-4b3c-b616-f2d025a4754e',30),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-10.1.png?alt=media&token=b40b6ee2-4af8-4e4b-b768-b2f822266783',30),
('https://firebasestorage.googleapis.com/v0/b/poly2-977b3.appspot.com/o/nb-10.2.png?alt=media&token=4d2e74a9-6e62-4ff3-95a0-9aa00c714353',30);


-- insert into hoa_don
insert into poly_project2.hoa_don(ngay,khach_hang_id,nhan_vien_id,trang_thai,thanh_toan,tong_tien,ghi_chu)
values('2018-5-20',1,1,0,0,8640000,''),
('2018-5-21',2,2,0,0,8640000,''),
('2018-5-22',3,3,1,0,10260000,''),
('2018-5-23',4,4,1,0,7020000,''),
('2018-5-24',5,1,1,0,7020000,''),
('2018-5-25',6,2,0,0,10260000,''),
('2018-5-26',7,3,1,0,7020000,''),
('2018-5-27',1,4,1,0,10260000,''),
('2018-5-28',11,1,1,0,7020000,''),
('2018-5-29',9,2,0,0,10260000,''),
('2018-5-30',10,3,1,0,10260000,''),
('2018-6-01',3,1,0,0,7020000,''),
('2018-6-02',5,4,1,0,8640000,''),
('2018-6-03',7,3,1,0,8640000,''),
('2018-6-04',1,4,1,0,7020000,''),
('2018-6-05',11,1,1,0,7020000,''),
('2018-6-06',9,2,1,0,10260000,''),
('2018-6-07',10,3,0,0,7020000,''),
('2018-6-08',3,1,1,0,8640000,''),
('2018-6-09',5,4,1,0,8640000,''),
('2018-6-10',7,3,1,0,8640000,''),
('2018-6-11',1,4,1,0,7020000,''),
('2018-6-12',11,1,0,0,10260000,''),
('2018-6-13',9,2,1,0,8640000,''),
('2018-6-14',10,3,1,0,8640000,'');

-- insert into cthd
insert into poly_project2.chi_tiet_hoa_don(so_luong,hoa_don_id,san_pham_id,ten_kich_thuoc,thanh_tien)
values
(1,1,1,'40',3420000),
(1,1,2,'37',3420000),
(1,1,3,'44',1800000),
(1,2,4,'36',3420000),
(1,2,5,'43',3420000),
(1,2,9,'39',1800000),
(1,3,19,'36',3420000),
(1,3,10,'35',3420000),
(1,3,5,'45',3420000),
(1,4,21,'38',1800000),
(1,4,22,'36',3420000),
(1,4,30,'39',1800000),
(1,5,11,'42',3420000),
(1,5,12,'39',1800000),
(1,5,3,'44',1800000),
(1,6,10,'35',3420000),
(1,6,28,'38',3420000),
(1,6,26,'37',3420000),
(1,7,15,'41',1800000),
(1,7,12,'39',1800000),
(1,7,19,'40',3420000),
(1,8,17,'37',3420000),
(1,8,23,'43',3420000),
(1,8,23,'38',3420000),
(1,9,18,'35',1800000),
(1,9,24,'36',1800000),
(1,9,13,'37',3420000),
(1,10,19,'36',3420000),
(1,10,23,'38',3420000),
(1,10,20,'35',3420000),
(1,11,7,'41',3420000),
(1,11,5,'38',3420000),
(1,11,10,'35',3420000),
(1,12,6,'35',1800000),
(1,12,8,'37',3420000),
(1,12,9,'36',1800000),
(1,13,4,'41',3420000),
(1,13,6,'35',1800000),
(1,13,2,'37',3420000),
(1,14,11,'38',3420000),
(1,14,12,'36',1800000),
(1,14,13,'39',3420000),
(1,15,18,'35',1800000),
(1,15,11,'40',3420000),
(1,15,30,'37',1800000),
(1,16,9,'39',1800000),
(1,16,8,'40',3420000),
(1,16,6,'35',1800000),
(1,17,7,'38',3420000),
(1,17,2,'41',3420000),
(1,17,1,'44',3420000),
(1,18,6,'41',1800000),
(1,18,3,'40',1800000),
(1,18,13,'39',3420000),
(1,19,16,'38',3420000),
(1,19,24,'41',1800000),
(1,19,22,'40',3420000),
(1,21,14,'39',3420000),
(1,21,28,'40',3420000),
(1,21,12,'39',1800000),
(1,20,10,'35',3420000),
(1,20,11,'44',3420000),
(1,20,15,'37',1800000),
(1,22,10,'41',3420000),
(1,22,18,'35',1800000),
(1,22,21,'42',1800000),
(1,23,1,'43',3420000),
(1,23,10,'38',3420000),
(1,23,22,'38',3420000),
(1,24,2,'41',3420000),
(1,24,3,'42',1800000),
(1,24,5,'40',3420000),
(1,25,1,'44',3420000),
(1,25,2,'37',3420000),
(1,25,3,'42',1800000);
		
-- insert quyen
insert into poly_project2.quyen(ten_quyen) values ('ROLE_ADMIN');
insert into poly_project2.quyen(ten_quyen) values ('ROLE_KHACHHANG');
insert into poly_project2.quyen(ten_quyen) values ('ROLE_NHANVIEN');

-- insert taikhoan
insert into poly_project2.tai_khoan(ten_tai_khoan,mat_khau) values('admin','123456');
insert into poly_project2.tai_khoan(ten_tai_khoan,mat_khau) values('user1','123456');
insert into poly_project2.tai_khoan(ten_tai_khoan,mat_khau) values('nhanvien1','123456');

-- insert quyen tai khoan
insert into poly_project2.quyen_tai_khoan values(1,1);
insert into poly_project2.quyen_tai_khoan values(2,2);
insert into poly_project2.quyen_tai_khoan values(3,3);







