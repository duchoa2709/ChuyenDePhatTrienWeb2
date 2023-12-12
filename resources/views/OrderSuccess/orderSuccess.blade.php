<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
    @include("Component.Header")
    <section class="text-gray-600 body-font">
        <div class="container px-5  py-24 mx-auto flex flex-wrap">
            <div class="lg:w-1/2 w-full mb-10 lg:mb-0 rounded-lg overflow-hidden">
                <img alt="feature" class="object-cover object-center h-50 w-50" src="./image/odersess.png">
            </div>
            <div class="flex flex-col flex-wrap lg:py-5 -mb-10 lg:w-1/2 lg:pl-12 lg:text-left text-center">
                <div class="bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0 mb-5">
                    <h1 class="text-green-900 font-bold text-xl title-font font-medium">
                        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30"
                            viewBox="0,0,256,256">
                            <g fill-opacity="0" fill="#dddddd" fill-rule="nonzero" stroke="none" stroke-width="1"
                                stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray=""
                                stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none"
                                text-anchor="none" style="mix-blend-mode: normal">
                                <path d="M0,256v-256h256v256z" id="bgRectangle"></path>
                            </g>
                            <g fill="#94d82d" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt"
                                stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0"
                                font-family="none" font-weight="none" font-size="none" text-anchor="none"
                                style="mix-blend-mode: normal">
                                <g transform="scale(5.12,5.12)">
                                    <path
                                        d="M25,2c-12.683,0 -23,10.317 -23,23c0,12.683 10.317,23 23,23c12.683,0 23,-10.317 23,-23c0,-4.56 -1.33972,-8.81067 -3.63672,-12.38867l-1.36914,1.61719c1.895,3.154 3.00586,6.83148 3.00586,10.77148c0,11.579 -9.421,21 -21,21c-11.579,0 -21,-9.421 -21,-21c0,-11.579 9.421,-21 21,-21c5.443,0 10.39391,2.09977 14.12891,5.50977l1.30859,-1.54492c-4.085,-3.705 -9.5025,-5.96484 -15.4375,-5.96484zM43.23633,7.75391l-19.32227,22.80078l-8.13281,-7.58594l-1.36328,1.46289l9.66602,9.01563l20.67969,-24.40039z">
                                    </path>
                                </g>
                            </g>
                        </svg>Bạn đã đặt hàng thành công
                    </h1>
                </div>
                <h2 class="text-green-900 font-bold text-xl title-font font-medium">Cảm ơn bạn đã đặt hàng tại Pizza
                    Store Việt Nam</h2>
                <div class="mt-3 font-bold ">
                    <p>Mã đơn hàng bạn đã đặt là: </p>
                    <p>Để kiểm tra tình trạng đơn hàng vui lòng click vào đây: <a href="/OrderDetail"
                            class="text-blue-400 hover:underline dark:text-blue-500">THEO DÕI ĐƠN HÀNG</a></p>
                    <p>Mọi thắc mắc và yêu cầu hỗ trợ vui lòng liên hệ tổng đài CSKH: 1900758689</p>
                    <p>Chúc bạn ngon miệng !!!</p>
                </div>
                <button
                    class="flex mx-auto mt-9 text-green-700 bg-white-500 rounded border border-green-700 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg hover:text-white">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="25" viewBox="0 0 24 24">
                        <path
                            d="M 12 2.0996094 L 1 12 L 4 12 L 4 21 L 10 21 L 10 15 L 14 15 L 14 21 L 20 21 L 20 12 L 23 12 L 12 2.0996094 z">
                        </path>
                    </svg> Trang Chủ</button>

            </div>

        </div>
    </section>

    <script>
    localStorage.removeItem('miniCartss');


    updateMiniCart();

    function updateMiniCart() {
        var mini = document.querySelector('ul');
        var total = document.querySelector('.minicart--subtotal-amount');
        const miniCart = JSON.parse(localStorage.getItem('miniCartss')) || [];
        var cartHTML = '';
        var total1 = 0;
        miniCart.forEach(product => {

            let formattedNumber = product.price.toLocaleString('en-US', {
                style: 'decimal',
                minimumFractionDigits: 0,
                maximumFractionDigits: 0,
            });
            total1 = total1 + (product.price * product.quantity);
            cartHTML += `
    <li class="minicart--item flex mb-5">
      <div class="placeholder w-20 h-26 mr-4 ">  <img class="object-cover object-center hover:rotate-[10deg] transition duration-450 ease-out hover:ease-in" src="./image/${product.image}" alt="product"></div>
        <div class="content flex-1">
          <h1 class="text-sm font-bold mb-2">${product.name}</h1>
          <p class="text-sm"><span class="font-bold text-sm">Giá :</span>  ${formattedNumber}đ  <span> ${product.quantity}x</span></p>
          <p class="text-sm"><span class="font-bold text-sm">size :</span>  ${product.size}</p>
          <p class="text-sm"><span class="font-bold text-sm">Đế  :</span>  ${product.crust}  </p>
          <button class="text-xs text-red-500 hover:underline flex"  onclick="remove(${product.id})" >
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
          <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
          </svg>
          <p class="ml-2">  Remove from cart</p>
          </button>
        </div>
    </li>
    `;
        });
        let formattedNumber = total1.toLocaleString('en-US', {
            style: 'decimal',
            minimumFractionDigits: 0,
            maximumFractionDigits: 0,
        });
        total.innerHTML = formattedNumber;
        mini.innerHTML = cartHTML;


        const itemCount = document.querySelector('.minicart--item-count');
        itemCount.textContent = miniCart.length;

        firstModal.close();

    }
    </script>


    @include("Component.Footer")

</body>

</html>