<?php

namespace Database\Seeders;
//use App\Models\SanPham;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class SanPhamSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        #Áo thun

        DB::table('san_phams')->insert([
            'TenSp'=>'ÁO POLO THREE BELOW ADICROSS',
            'IDLoaiSp'=>1,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Ao_1.png',
            'KichThuoc'=>'M',
            'MauSac'=>'Xanh',
            'MoTa'=>"CHIẾC ÁO POLO GOLF NÂNG TẦM PHONG CÁCH.\nNâng tầm phong cách với chiếc áo golf adidas này. Chất vải jacquard co giãn và đục lỗ thoáng khí mang đến cảm giác mát mẻ dễ chịu trên sân. Vạt sau hơi dài hơn và họa tiết phủ toàn bộ cho bạn phong cách chuẩn chỉnh",
            'ThongTin'=>"Dáng regular fit\nCổ polo ba khuy\nVải jacquard làm từ 97% polyester tái chế, 3% elastane\nChất vải đục lỗ thoáng khí\nVạt sau hơi dài hơn",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'ÁO THUN DÁNG HỘP BA LÁ BACK AND FRONT CLASSICS ADICOLOR',
            'IDLoaiSp'=>1,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>75,
            'HinhAnh'=>'Ao_2.png',
            'KichThuoc'=>'M',
            'MauSac'=>'Đen',
            'MoTa'=>"ÁO THUN TIỆN DỤNG CHO CẢM GIÁC THƯ GIÃN TỐI ĐA.\nLuôn có thứ được yêu thích hơn hẳn, kể cả trong số các món đồ basic của bạn. Chiếc áo thun adidas này có đầy đủ những chi tiết xuất sắc. Logo Ba Lá đặc trưng ở cả mặt trước và mặt sau. Chất liệu cotton dễ chịu. Người ta gọi đó là trung thành. Còn bạn chỉ cần nhìn là biết đâu là đồ tốt.\nCác sản phẩm cotton của chúng tôi giúp hỗ trợ ngành trồng bông bền vững. Đây chính là mong muốn của chúng tôi hướng tới chấm dứt rác thải nhựa.",
            'ThongTin'=>"Dáng loose fit\nCổ tròn có gân sọc\nVải jersey một mặt phải làm từ 100% cotton\nCảm giác mềm mại\nLogo Ba Lá cỡ lớn sau lưng",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'ÁO THUN GRAPHIC Y2K',
            'IDLoaiSp'=>1,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>60,
            'HinhAnh'=>'Ao_3.png',
            'KichThuoc'=>'M',
            'MauSac'=>'Xanh',
            'MoTa'=>"NĂNG ĐỘNG Ở MẶT TRƯỚC, BÙNG NỔ Ở MẶT SAU — CHIẾC ÁO THUN NÀY MANG TRỌN HƠI HƯỚNG ẤY.\nNhững năm 2000 trở lại đầy ngoạn mục với chiếc áo thun adidas này. Thoạt nhìn, đây chỉ là chiếc áo thun quen thuộc. Nền vải trơn màu, dòng chữ adidas Originals nhỏ nhắn trước ngực. Nhưng khi quay lưng lại, bạn sẽ thấy nét hoài niệm dâng trào qua những sắc màu rực rỡ. Logo Ba Lá dần biến ảo từ trên xuống dưới, chạy dọc theo hàng chữ adidas Originals bên hông.",
            'ThongTin'=>"Dáng regular fit\nCổ tròn có gân sọc\nVải single jersey làm từ 100% cotton",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);

        #Áo khoác

        DB::table('san_phams')->insert([
            'TenSp'=>'ÁO KHOÁC DENIM R.Y.V.',
            'IDLoaiSp'=>2,
            'IDNhaPhanPhoi'=>2,
            'Gia'=>89,
            'HinhAnh'=>'Ao_khoac_1.png',
            'KichThuoc'=>'M',
            'MauSac'=>'Xanh nhạt',
            'MoTa'=>"CHIẾC ÁO DENIM KHUY BẤM VỚI CÁC CHI TIẾT TÙY CHỈNH.\nChiếc áo khoác jean nay đã được định nghĩa lại. Chiếc áo adidas này không theo bất cứ khuôn khổ nào và thổi luồng sức sống mới cho một item adidas classic bằng chất liệu denim đứng dáng. Bạn hoàn toàn có thể thỏa sức sáng tạo với chất liệu đứng dáng ấy bằng các khuy bấm và phần eo có dây rút tùy chỉnh. Bạn có thể mở một số khuy bấm, kéo chặt dây rút hoặc tháo hết khuy tùy ý. 3 Sọc cho phong cách đậm chất thể thao.",
            'ThongTin'=>"Dáng regular fit\nKhuy bấm phía trước\nVải twill làm từ 100% cotton\nCác túi hai bên\nBo cổ tay\nGấu áo có dây rút tùy chỉnh",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'ÁO KHOÁC LÔNG VŨ ESSENTIALS',
            'IDLoaiSp'=>2,
            'IDNhaPhanPhoi'=>2,
            'Gia'=>75,
            'HinhAnh'=>'Ao_khoac_2.png',
            'KichThuoc'=>'M',
            'MauSac'=>'Xanh',
            'MoTa'=>"ÁO KHOÁC LÔNG VŨ ẤM ÁP VỚI PHONG CÁCH 3 SỌC.\nÍt có chất liệu nào nhẹ và ấm áp như lông vũ. Hãy diện chiếc áo khoác lông vũ adidas Essentials và tự mình cảm nhận. Các mảng chần lông vũ giữ ấm cho cơ thể, cùng phong cách 3 Sọc kinh điển giúp bạn sẵn sàng xuống phố. Áo còn làm từ chất liệu tái chế, một bước tiến quan trọng của adidas hướng tới chấm dứt rác thải nhựa.",
            'ThongTin'=>"Ôm sát\nKhóa kéo dọc thân và cổ đứng\nLớp lõi: 80% lông vịt\n20% lớp đệm bằng chất liệu tổng hợp; Chất liệu chính: Vải dệt trơn làm từ 100% polyester tái chế\nSiêu nhẹ và ấm áp\nÁo khoác giữ nhiệt\nCác túi mở\nTrang phục này may bằng vải công nghệ Primegreen, thuộc dòng chất liệu tái chế hiệu năng cao.Trang phục ứng dụng công nghệ Primegreen chứa ít nhất 40% thành phần tái chế.",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);

        DB::table('san_phams')->insert([
            'TenSp'=>'TRACK JACKET FULL-ZIP PRIMEBLUE',
            'IDLoaiSp'=>2,
            'IDNhaPhanPhoi'=>2,
            'Gia'=>90,
            'HinhAnh'=>'Ao_khoac_3.png',
            'KichThuoc'=>'M',
            'MauSac'=>'Trắng',
            'MoTa'=>"CHIẾC ÁO KHOÁC GOLF SIÊU NHẸ CHO NHỮNG NGÀY TRÊN SÂN.\nKhoác thêm một lớp áo nhẹ vào những ngày se lạnh trên sân golf. Chiếc áo khoác golf adidas này có cổ đứng cùng cổ tay và gấu áo bo viền cho cảm giác ôm vừa khít. Chất vải siêu co giãn cho phạm vi chuyển động tối đa. Thiết kế track jacket giúp bạn ghi điểm phong cách.\nSản phẩm này may bằng vải công nghệ Primeblue, chất liệu tái chế hiệu năng cao có sử dụng sợi Parley Ocean Plastic.",
            'ThongTin'=>"Dáng regular fit\nKhóa kéo dọc thân và cổ đứng\nVải tricot làm từ 79% nylon tái chế, 21% elastane\nCác túi trước\nGấu áo và cổ tay có viền bo\nChỉ số chống tia UV 50+",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);

        #Quần
       
        DB::table('san_phams')->insert([
            'TenSp'=>'QUẦN DENIM R.Y.V.',
            'IDLoaiSp'=>3,
            'IDNhaPhanPhoi'=>3,
            'Gia'=>70,
            'HinhAnh'=>'Quan_1.png',
            'KichThuoc'=>'M',
            'MauSac'=>'Xanh nhạt',
            'MoTa'=>"CHIẾC QUẦN DENIM CÓ ĐƯỜNG XẺ HAI BÊN TÙY CHỈNH, MƯỢN CẢM HỨNG TỪ KHO DI SẢN ADIDAS.\nQuần jeans nay được định nghĩa lại. Chiếc quần adidas này không theo bất cứ khuôn khổ nào và thổi luồng sức sống mới cho một item adidas classic bằng chất liệu denim đứng dáng. Bạn hoàn toàn có thể đùa nghịch với chất liệu đứng dáng ấy bằng hai hàng khuy bấm dọc hai bên. Đóng kín hoặc mở một vài khuy để khoe đôi giày của bạn. Bởi chúng cũng xứng đáng được tỏa sáng.",
            'ThongTin'=>"Dáng regular fit\nCạp co giãn\nVải twill làm từ 100% cotton\nCác túi hai bên\nCác mảng khuy bấm hai bên",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'TRACK PANTS LOCK-UP TREFOIL CLASSICS ADICOLOR',
            'IDLoaiSp'=>3,
            'IDNhaPhanPhoi'=>3,
            'Gia'=>70,
            'HinhAnh'=>'Quan_2.png',
            'KichThuoc'=>'M',
            'MauSac'=>'Đen',
            'MoTa'=>"CHIẾC QUẦN TRACK PANTS THƯỜNG NGÀY MANG PHONG CÁCH ĐÍCH THỰC.\nCảm hứng thập niên 70. Hơi hướng đậm chất hiện đại. Diện phong cách retro với chiếc quần track pants adidas này ngay cả khi bạn đang xuất hiện thật nổi bật ngày hôm nay. Chất vải nylon dệt thoi cho cảm giác mượt mà, cùng lớp lót lưới mềm mại trên da. 3 Sọc hai bên hông có logo Ba Lá chặn giữa như nhân đôi chất adidas.\nSản phẩm này may bằng vải công nghệ Primegreen, thuộc dòng chất liệu tái chế hiệu năng cao.",
            'ThongTin'=>"Dáng regular fit\nCạp chun có dây rút\nLớp ngoài: Vải dệt trơn làm từ 100% nylon tái chế\nLớp lót: Vải lưới làm từ 100% polyester tái chế\nCác túi hai bên\nGấu quần co giãn",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'QUẦN TÚI HỘP TWILL ADIDAS SPORTSWEAR',
            'IDLoaiSp'=>3,
            'IDNhaPhanPhoi'=>3,
            'Gia'=>70,
            'HinhAnh'=>'Quan_3.png',
            'KichThuoc'=>'M',
            'MauSac'=>'Nâu',
            'MoTa'=>"CHIẾC QUẦN TÚI HỘP VỚI THIẾT KẾ THUÔN GỌN, HIỆN ĐẠI CHO CẢM GIÁC THOẢI MÁI.\nTrong cuộc sống, bạn luôn hết mình — từ làm việc, giải trí tới nghỉ ngơi. Giống như bạn, chiếc quần adidas này cũng tìm kiếm sự cân bằng. Kiểu dáng tối giản phù hợp để mặc khi khởi động cũng như lúc nghỉ ngơi. Và với độ co giãn tốt, chiếc quần này mang lại cảm giác thoải mái tuyệt đối. Kiểu dáng rộng rãi tạo độ suông rủ hoàn hảo, mang đến cảm giác casual dễ chịu suốt cả ngày.\nSản phẩm này may bằng vải công nghệ Primegreen, thuộc dòng chất liệu tái chế hiệu năng cao.",
            'ThongTin'=>"Dáng relaxed fit\nCạp chun có dây rút\nVải twill làm từ 90% polyester tái chế, 10% elastane\nTúi khóa kéo trên ống quần\nCác túi hai bên\nGấu quần co giãn",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);

        #Giày

        DB::table('san_phams')->insert([
            'TenSp'=>'GIÀY CỔ THẤP FORUM',
            'IDLoaiSp'=>4,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Giay_1.png',
            'KichThuoc'=>'6UK',
            'MauSac'=>'Đen,Trắng',
            'MoTa'=>"ĐÔI GIÀY BÓNG RỔ TRỨ DANH TRONG THIẾT KẾ CỔ THẤP.\nKhông chỉ là một đôi giày, mà chính là một tuyên ngôn. Dòng adidas Forum ra mắt năm 1984 và cực kỳ được ưa chuộng cả trên sân bóng rổ lẫn trong giới âm nhạc. Mẫu mới của dòng giày kinh điển này tái hiện tinh thần thập niên 80, nguồn năng lượng bùng nổ trên sân đấu cũng như thiết kế quai cổ chân chữ X đặc trưng, kết tinh thành phiên bản cổ thấp đậm chất đường phố.",
            'ThongTin'=>"Có dây giày và quai tùy chỉnh\nThân giày bằng da\nĐế ngoài bằng cao su",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'GIÀY FORUM EXHIBIT LOW',
            'IDLoaiSp'=>4,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Giay_2.png',
            'KichThuoc'=>'6UK',
            'MauSac'=>'Trắng,Đỏ',
            'MoTa'=>"ĐÔI GIÀY TRAINER CLASSIC MANG NGUỒN NĂNG LƯỢNG TƯƠI MỚI.\nBạn không phá vỡ nguyên tắc — mà tự tạo luật chơi của riêng mình. Khi bạn dám phá cách, đôi giày adidas này cũng tôn lên từng sải bước với cùng tinh thần táo bạo ấy. Phiên bản cập nhật này dựa trên kiểu dáng classic vẫn trung thành với di sản đồng thời mang đến tinh thần mới mẻ cho phong cách của bạn.\nSản phẩm này có sử dụng chất liệu tái chế, là một phần cam kết của chúng tôi hướng tới chấm dứt rác thải nhựa. 20% thân giày làm từ chất liệu có chứa tối thiểu 50% thành phần tái chế.",
            'ThongTin'=>"Có dây giày\nThân giày bằng da\nMóc chữ D\nĐế ngoài bằng cao su",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'GIÀY CONTINENTAL 80',
            'IDLoaiSp'=>4,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Giay_3.png',
            'KichThuoc'=>'6UK',
            'MauSac'=>'Đen,Đỏ',
            'MoTa'=>"PHONG CÁCH QUẦN VỢT TỪ NHỮNG NĂM 1980 TRỞ LẠI VỚI KIỂU DÁNG TƯƠI MỚI.\nMang dáng vẻ hoài cổ, Continental 80 giữ trọn kiểu dáng xưa cũ của những đôi giày thể thao trong nhà từ đầu những năm 1980. Mẫu giày da nổi bật với sọc kẻ hai màu hướng xuống dưới và đế cupsole khác biệt bằng cao su phân tách cho cảm giác thoải mái và linh hoạt.",
            'ThongTin'=>"Ôm vừa\nCó dây buộc\nThân giày bằng da cật\nĐế cupsole bằng cao su phân tách; Lớp lót bằng vải thun da cá\nTận hưởng sự thoải mái và hiệu quả của lót giày OrthoLite®; Đệm đế giữa bằng chất liệu EVA nhẹ\nCảm giác mềm mại",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);

        #Dép

        DB::table('san_phams')->insert([
            'TenSp'=>'DÉP QUAI NGANG ADILETTE COMFORT',
            'IDLoaiSp'=>5,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Dep_1.png',
            'KichThuoc'=>'6UK',
            'MauSac'=>'Đen',
            'MoTa'=>"MẪU DÉP ÊM ÁI CÓ LÓT ĐỆM TĂNG CẢM GIÁC THOẢI MÁI.\nHãy xỏ chân vào đôi dép nam thoải mái và dễ đi này. Thân dép ôm chân với công nghệ Cloudfoam Plus mang đến cảm giác đệm chân siêu êm ái. Quai dép đơn nổi bật với huy hiệu thể thao adidas thể hiện tình yêu dành cho thương hiệu.",
            'ThongTin'=>"Quai dép đơn bằng chất liệu tổng hợp mang huy hiệu thể thao adidas\nLớp lót bằng vải dệt cho cảm giác thoải mái\nThân dép công nghệ Cloudfoam Plus giúp nạp lại năng lượng với lớp đệm mềm mại, êm ái\nThân dép ôm chân\nĐế ngoài chất liệu EVA cho cảm giác thoải mái nhẹ nhàng",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'DÉP ADILETTE SHOWER',
            'IDLoaiSp'=>5,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Dep_2.png',
            'KichThuoc'=>'6UK',
            'MauSac'=>'Đỏ',
            'MoTa'=>"DÉP QUAI NGANG PHÙ HỢP ĐI TRONG NHÀ TẮM VỚI LÒNG DÉP MỀM MẠI, ÔM CHÂN.\nXỏ dép và lên đường. Đôi dép nam này kết hợp phong cách 3 Sọc với đế dép nguyên khối cloudfoam thoải mái hợp nhất đế giữa và đế ngoài cho cảm giác êm ái vượt trội. Điểm nhấn đến từ logo táo bạo bên hông.",
            'ThongTin'=>"Thân dép bằng chất liệu tổng hợp gồm một quai ngang\n3 Sọc tương phản\nĐế nguyên khối cloudfoam thoải mái",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'DÉP XỎ NGÓN EEZAY FLIP-FLOPS',
            'IDLoaiSp'=>5,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Dep_3.png',
            'KichThuoc'=>'6UK',
            'MauSac'=>'Đỏ',
            'MoTa'=>"ĐÔI XĂNG ĐAN DÀNH CHO VIỆC DẠO CHƠI TRÊN BIỂN VỚI LỚP ĐỆM SIÊU NHẸ.\nMột thiết kế kinh điển mang lại sự thoải mái hàng ngày. Đôi dép xỏ ngón nhẹ này thật tiện để tháo và xỏ khi ở trên bãi biển. Được thiết kế với lớp đệm tăng cường, đôi giày mang lại cho người đi cảm giác nhẹ nhàng, êm ái.",
            'ThongTin'=>"Ôm vừa\nThiết kế xỏ ngón\nQuai dép bằng chất liệu tổng hợp\nĐế ngoài bằng EVA sần\nĐế giữa với miếng lót EVA được cắt tạo hình\nCảm giác nhẹ nhàng",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);

        #Balo

        DB::table('san_phams')->insert([
            'TenSp'=>'BA LÔ 3 SỌC BADGE OF SPORT CLASSIC',
            'IDLoaiSp'=>6,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Balo_1.png',
            'KichThuoc'=>'NS',
            'MauSac'=>'Cam',
            'MoTa'=>"CHIẾC BA LÔ THƯỜNG NGÀY LÀ MỘT PHẦN CAM KẾT CỦA ADIDAS HƯỚNG TỚI CHẤM DỨT RÁC THẢI NHỰA.\nBạn có nhiều nơi cần đi và nhiều thứ cần mang theo bên mình. Đựng đồ đạc cỡ lớn vào ngăn chính rộng rãi của chiếc ba lô adidas này và sắp xếp gọn gàng các vật dụng nhỏ cần thiết trong các ngăn nhỏ hơn. Điều chỉnh độ vừa vặn bằng quai đeo tùy chỉnh, vậy là xong.\nSản phẩm này có sử dụng chất liệu tái chế, là một phần cam kết của chúng tôi hướng tới chấm dứt rác thải nhựa. ",
            'ThongTin'=>"Kích thước: 15 cm x 32 cm x 46 cm\nDung tích: 27,5 L\nVải dệt trơn làm từ 100% polyester tái chế\nNgăn khóa kéo phía trước\nNgăn mở hai bên\nNgăn chia đồ có lớp lót\nQuai đeo vai lót đệm tùy chỉnh\nQuai xách phía trên",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);
        DB::table('san_phams')->insert([
            'TenSp'=>'BA LÔ CLASSIC MUST HAVE',
            'IDLoaiSp'=>6,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Balo_2.png',
            'KichThuoc'=>'NS',
            'MauSac'=>'Đen',
            'MoTa'=>" CHIẾC BA LÔ NHIỀU NGĂN GIÚP BẠN SẮP XẾP ĐỒ ĐẠC GỌN GÀNG.\nBạn biết rõ bạn muốn sắp xếp đồ đạc như thế nào. Hãy mang theo chiếc ba lô này và đựng đồ tùy ý. Ngoài ngăn chính rộng rãi, ba lô còn có các ngăn khóa kéo bên ngoài để cất giữ các vật dụng nhỏ cần thiết. Huy hiệu thể thao adidas nổi bật ngay chính giữa mặt trước thể hiện lối sống thể thao của bạn.\nSản phẩm này có sử dụng chất liệu tái chế, là một phần quyết tâm của chúng tôi hướng tới chấm dứt rác thải nhựa.",
            'ThongTin'=>"Kích thước: 33 cm x 45 cm x 16,5 cm,Dung tích: 25 L\nVải dệt trơn làm từ 100% polyester tái chế\nNgăn chính có khóa kéo\nCác ngăn khóa kéo phía trước\nCác ngăn mở bên hông",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);

        #Mũ

        DB::table('san_phams')->insert([
            'TenSp'=>'MŨ BÓNG CHÀY 3 SỌC AEROREADY',
            'IDLoaiSp'=>6,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Mu_1.png',
            'KichThuoc'=>'OSFW',
            'MauSac'=>'Đen,Trắng',
            'MoTa'=>" CHIẾC MŨ LƯỠI TRAI CLASSIC CHE NẮNG CHO BẠN.\nĐêm nóng, kem lạnh và mũ bóng chày. Mùa hè đến rồi. Hãy đi luyện ném bóng với chiếc mũ adidas này. Công nghệ AEROREADY đánh bay mồ hôi và giúp bạn luôn thoáng mát trên sân tập. Vành cong che nắng cho mắt cùng 3 Sọc thể hiện tinh thần thể thao trong bạn.\nSản phẩm này may bằng vải công nghệ Primegreen, thuộc dòng chất liệu tái chế hiệu năng cao.",
            'ThongTin'=>"Vải dệt dobby làm từ 90% polyester tái chế, 10% elastane\nVành mũ cong vừa\nQuai điều chỉnh phía sau\nCó khóa cài\nChỉ số chống tia UV 50",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);

        DB::table('san_phams')->insert([
            'TenSp'=>'MŨ NỬA ĐẦU AEROREADY',
            'IDLoaiSp'=>6,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Mu_2.png',
            'KichThuoc'=>'OSFW',
            'MauSac'=>'Đen,Trắng',
            'MoTa'=>" CHIẾC MŨ NỬA ĐẦU DÀNH CHO TẬP LUYỆN, CÓ SỬ DỤNG SỢI PARLEY OCEAN PLASTIC.\nThời tiết nắng đẹp là hoàn hảo để tập luyện ngoài trời. Che mát cho khuôn mặt và đôi mắt bạn trong suốt buổi tập với chiếc mũ nửa đầu adidas này. Viền mũ sử dụng công nghệ AEROREADY thấm hút ẩm ngăn mồ hơi rơi xuống mắt. Các mảng phối lưới hai bên cho cảm giác thoáng khí, cùng quai dán giúp bạn điều chỉnh độ ôm để tập luyện không chút phân tâm.\nSản phẩm này làm từ sợi dệt có chứa 50% chất liệu Parley Ocean Plastic — rác thải nhựa tái chế thu gom từ các vùng đảo xa, bãi biển, khu dân cư ven biển và đường bờ biển, nhằm ngăn chặn ô nhiễm đại dương. Sản phẩm này có chứa tổng cộng ít nhất 40% thành phần tái chế.",
            'ThongTin'=>"Vải twill làm từ 100% polyester tái chế\nCác mảng lưới bên hông\nViền lót mồ hôi AEROREADY thấm hút ẩm\nVành mũ cong vừa\nQuai dán tùy chỉnh phía sau\nSợi dệt có chứa 50% chất liệu Parley Ocean Plastic\nSản phẩm này có chứa tổng cộng ít nhất 40% chất liệu tái chế",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);

        DB::table('san_phams')->insert([
            'TenSp'=>'MŨ BUCKET BA LÁ ADICOLOR',
            'IDLoaiSp'=>6,
            'IDNhaPhanPhoi'=>1,
            'Gia'=>70,
            'HinhAnh'=>'Mu_3.png',
            'KichThuoc'=>'OSFW',
            'MauSac'=>'Đen,Trắng',
            'MoTa'=>"CHIẾC MŨ BUCKET THỂ THAO CHO CẢM GIÁC DỄ CHỊU VÀ PHONG CÁCH CASUAL.\nTrào lưu đội mũ bucket vẫn chưa hạ nhiệt kể từ thập niên 80 là có lý do. Đơn giản là đẹp. Chiếc mũ bucket adidas này có thiết kế đơn giản, đứng dáng mà thoải mái cùng logo adidas Ba Lá tương phản.\nCác sản phẩm cotton của chúng tôi hỗ trợ ngành trồng bông bền vững. Đây là một phần quyết tâm của chúng tôi hướng tới chấm dứt rác thải nhựa. ",
            'ThongTin'=>"Vải twill làm từ 100% cotton\nVành bao quanh",
            'TonKho'=>10,
            'TrangThai'=>1,
        ]);


    }
}
