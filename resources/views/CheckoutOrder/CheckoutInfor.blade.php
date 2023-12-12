
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script> -->


</head>


        
@include("Component.Header")


  <div class="container p-2 mx-auto md:w-10/12 w-full font-medium border-b-2 border-indigo-500">
    <div class="md:flex  justify-center ">
    <form method="get" action="/checkout/orderinfos" class="md:flex">
              <div class="ad1  md:w-1/2 w-full md:p-14  md:ps-8">
                <div class="text-xl border-b-2 pb-3 border-gray-500  	">Đặt giao hàng</div>
                <div class="text-2xl pt-10 pb-5 hover:text-[#006a31]">Thông tin nhận hàng</div>
       
                    <p>Họ và tên *</p>
                    <!-- <input type="text" class="" placeholder="Nhập họ và tên"> -->
                    <div class="relative mb-4">
                      <input type="text" id="email" name="name"
                        class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>
                    <p>Số điện thoại *</p>
                    <!-- <input type="text" placeholder="Số điện thoại"> -->
                    <div class="relative mb-4">
                
                      <input type="text" id="email" name="phone"
                        class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>
                    <p>Tỉnh/Thành *</p>
                    <!-- <input type="text" placeholder="Tỉnh thành"> -->
                    <div class="relative mb-4">
                        <select name="province"  id="provinceSelect" class="w-full h-10 border-[1px] border-back-500">
                        
                        </select>
              
                    </div>
                    <p>Quận/Huyện *</p>
                    <!-- <input type="text" placeholder="Nhập Quận/Huyện"> -->
                    <div class="relative mb-4">
                        <select name="district"  class="w-full h-10 border-[1px] border-back-500" id="districtSelect">
                       
                        </select>
                    </div>
                    <p>Phường/Xã *</p>
                    <div class="relative mb-4">
                    <select name="ward" id="wardSelect" class="w-full h-10 border-[1px] border-back-500">
                    
                    </select>
                    </div>
                  
                    <!-- <input type="text" placeholder="Chọn Phường/Xã"> -->
                
                    <p class="w-full">Số nhà: *</p>
                    <p  class="w-full text-xs	">Vui lòng nhập thông tin theo cú pháp: số cụ thể, phần chữ hoặc Hẻm hoặc Ngõ hoặc Kiệt nhập ở ô Thông tin chi tiết.</p>
                    <p  class="w-full text-xs">VD1: Nhà số 6 Hẻm hoặc Ngõ hoặc Kiệt 12 => Nhập: 12</p>
                    <p  class="w-full text-xs">VD2: Nhà số 6A hoặc 6bis hoặc H6 hoặc L6 => Nhập: 6</p>
                    <p  class="w-full text-xs mb-3">*Nếu nhà không có số, vui lòng nhập: 1</p>
                    <div class="relative mb-4">
                
                      <input type="text" id="email" name="apartmentNumber"
                        class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>
                    <p  class="w-full">Tên đường: *</p>
                    <p  class="w-full text-xs mb-3">Vui lòng nhập tên đường. Ưu tiên chọn tên đường từ gợi ý.</p>
                    <div class="relative mb-4">
                
                      <input type="text" id="email" name="streetNames"
                        class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>
                    <p  class="w-full">Thông tin chi tiết:</p>
                    <p  class="w-full text-xs pb-2 mb-3">Vui lòng nhập đủ Hẻm/ Ngõ/ Ngách/ Kiệt/ Thôn/ Ấp/ Chung Cư/ Khu Đô Thị/ Khu Dân Cư/ Số Căn Hộ cụ thể kèm những yêu cầu khác (nếu có) để hướng dẫn cho nhân viên giao hàng.</p>
                    <div class="relative mb-4">
                
                      <input type="text" id="email" name="details"
                        class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>
                  </div>
                
            
                  <div class="ad2 md:w-1/2 w-full md:p-20  pl-1">
                    <div class="text-2xl pt-16  pb-5 hover:text-[#006a31]">Chọn thời điểm đặt hàng</div>
                    <div class="flex items-center mb-4">
                      
                      <input  id="default-radio-1" type="radio" value="" name="timeDate" class="w-5 h-4 text-green-600 bg-gray-100 border-gray-300 focus:ring-green-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                      <label for="default-radio-1" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Ngay bây giờ (tối thiểu 30 phút sau khi đặt hàng thành công)</label>
                  </div>
                  <p id="hiddenParagraph" class="text-red-600 hidden mb-3">Xin lỗi bạn, chúng tôi ngưng phục vụ giao hàng từ 21h30 ngày hôm  trước đến 10h00 ngày hôm sau. Vui lòng chọn thời gian  giao hàng bên dưới để chúng tôi có cơ hội phục vụ bạn.</p>
              
                  <div class="flex items-center">
                      <input id="default-radio-2" type="radio" value="" name="date_order" class="w-4 h-4 text-green-600 bg-gray-100 border-gray-300 focus:ring-green-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                      <label for="default-radio-2" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Chọn thời gian</label>
                  </div>
                  <input id="day" class="hidden mb-3 mt-3" type="datetime-local" name="datetime">
                  <p class="pt-3">Quý khách có nhu cầu xuất hóa đơn GTGT, vui lòng quét mã  QR trên biên lai mỗi hoá đơn hoặc truy cập  trước 22h cùng ngày để cung cấp thông tin và gửi yêu cầu.</p>
                  
                  </div>
                </div>
                <div class="button right-1 flex md:justify-end w-full  mr-10">
                  <button class="text-white bg-[#006a31] border-0 md:py-2  md:px-16 md:my-16 md:mx-6 w-full p-2 mr-2 focus:outline-none hover:bg-indigo-600 rounded text-lg flex justify-center"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left mt-1.5 mr-1.5" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                  </svg>Tiếp tục </button>
                  <button class="text-white bg-[#006a31] border-0 md:py-2  md:px-16 md:my-16 md:mx-6 w-full p-2 ml-2 focus:outline-none hover:bg-indigo-600 rounded  text-lg flex justify-center">Thanh toán<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right mt-2 ml-2" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                  </svg></button>

              </div>
           
            </div>
     </form>


  <script>
    // Lấy tham chiếu đến các radio button
   // Lấy tham chiếu đến các radio button
const radioNow = document.getElementById('default-radio-1');
const radioSelectTime = document.getElementById('default-radio-2');

// Thêm sự kiện click listener cho radio button "Ngay bây giờ"
radioNow.addEventListener('click', function() {
    if (radioNow.checked) {
       
        radioSelectTime.checked = false;
    }
});

// Thêm sự kiện click listener cho radio button "Chọn thời gian"
radioSelectTime.addEventListener('click', function() {
    if (radioSelectTime.checked) {
        // Radio "Chọn thời gian" đã được chọn, hãy đảm bảo bỏ chọn radio "Ngay bây giờ"
        radioNow.checked = false;
    }
});


    document.addEventListener("DOMContentLoaded", function () {
        const radioButtons = document.querySelectorAll('input[type="radio"]');
        const resultDiv = document.getElementById('result');
        const hiddenParagraph = document.getElementById('hiddenParagraph');
        const day = document.getElementById('day');
        
        // Đặt sự kiện change cho mỗi radio button
        radioButtons.forEach(function (radio) {
            radio.addEventListener('change', function () {
                // Kiểm tra xem nút radio "Ngay bây giờ" được chọn
                if (radio.id === 'default-radio-1' && radio.checked) {
                    // Hiển thị đoạn văn bản ẩn
                    hiddenParagraph.style.display = 'block';
                } else {
                    // Ẩn đoạn văn bản nếu nút radio khác được chọn
                    hiddenParagraph.style.display = 'none';
                }
            });
            radio.addEventListener('change', function () {
                // Kiểm tra xem nút radio "Ngay bây giờ" được chọn
                if (radio.id === 'default-radio-2' && radio.checked) {
                    // Hiển thị đoạn văn bản ẩn
                    day.style.display = 'block';
                } else {
                    // Ẩn đoạn văn bản nếu nút radio khác được chọn
                    day.style.display = 'none';
                }
            });
        });
    });



    const provinceSelect = document.getElementById('provinceSelect');
        const districtSelect = document.getElementById('districtSelect');
        const wardSelect = document.getElementById('wardSelect');

        // Lấy danh sách tỉnh từ API
        fetch('/get-provinces')
            .then(response => response.json())
            .then(data => {
                const provinces = data.provinces;
                provinces.forEach(province => {
                    const option = document.createElement('option');
                    option.value = province.Id; // Thay 'Id' bằng trường dữ liệu tương ứng trong JSON
                    option.text = province.Name;
                    option.name = "provinces" ;                            // Thay 'Name' bằng trường dữ liệu tương ứng trong JSON
                    provinceSelect.appendChild(option);
                });
            })
            .catch(error => {
                console.error('Lỗi khi lấy danh sách tỉnh: ', error);
            });

        // Xử lý sự kiện khi người dùng chọn tỉnh
        provinceSelect.addEventListener('change', () => {
            const selectedProvinceId = provinceSelect.value;
            if (selectedProvinceId) {
                // Lấy danh sách quận huyện từ API dựa trên tỉnh đã chọn
             
                fetch(`/get-districts/${selectedProvinceId}`)
                    .then(response => response.json())
                    .then(data => {
                        // Xóa tất cả các lựa chọn quận huyện trước đó
                        districtSelect.innerHTML = '<option value="">-- Select District --</option>';

                        const districts = data.districts;
                        districts.forEach(district => {
                            const option = document.createElement('option');
                            option.value = district.Id; // Thay 'Id' bằng trường dữ liệu tương ứng trong JSON
                            option.text = district.Name;
                            option.name = "district" ;  // Thay 'Name' bằng trường dữ liệu tương ứng trong JSON
                            districtSelect.appendChild(option);
                        });
                    })
                    .catch(error => {
                        console.error('Lỗi khi lấy danh sách quận huyện: ', error);
                    });
            }
        });

        // Xử lý sự kiện khi người dùng chọn quận huyện
        districtSelect.addEventListener('change', () => {
            const selectedDistrictId = districtSelect.value;
            if (selectedDistrictId) {
                // Lấy danh sách xã từ API dựa trên quận huyện đã chọn
                fetch(`/get-wards/${selectedDistrictId}`)
                    .then(response => response.json())
                    .then(data => {
                        // Xóa tất cả các lựa chọn xã trước đó
                        wardSelect.innerHTML = '<option value="">-- Select Ward --</option>';

                        const wards = data.wards;
                        wards.forEach(ward => {
                            const option = document.createElement('option');
                            option.value = ward.Id; // Thay 'Id' bằng trường dữ liệu tương ứng trong JSON
                            option.text = ward.Name;
                            option.name = "ward" ;
                             // Thay 'Name' bằng trường dữ liệu tương ứng trong JSON
                            wardSelect.appendChild(option);
                        }); 
                    })
                    .catch(error => {
                        console.error('Lỗi khi lấy danh sách xã: ', error);
                    });
            }
        });



    



  
</script>
 @include('Component.Footer')