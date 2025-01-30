

<!DOCTYPE html>
<html class="no-js" lang="">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>SP COTTON INDUSTRIES</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="{{ url('') }}/superadmin/img/logo/logo.png" />
    <!-- Google Fonts
		============================================ -->
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
      rel="stylesheet"
    />
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/bootstrap.min.css" />
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/font-awesome.min.css" />
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/owl.carousel.css" />
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/owl.theme.css" />
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/owl.transitions.css" />
    <!-- meanmenu CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/meanmenu/meanmenu.min.css" />
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/animate.css" />
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/normalize.css" />
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link
      rel="stylesheet"
      href="{{ url('superadmin') }}/css/scrollbar/jquery.mCustomScrollbar.min.css"
    />
    <!-- jvectormap CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/jvectormap/jquery-jvectormap-2.0.3.css" />
    <!-- notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/notika-custom-icon.css" />
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/wave/waves.min.css" />
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/main.css" />
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/style.css" />
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="{{ url('superadmin') }}/css/responsive.css" />
    <!-- modernizr JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/vendor/modernizr-2.8.3.min.js"></script>
  </head>

  <body>


    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
        }
        h1, h2, h3, h4, h5, h6 {
            font-family: 'Poppins', sans-serif;
        }

        .table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: #f9f9f9;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .table th, .table td {
        padding: 12px 15px;
        border: 1px solid #ddd;
        text-align: left;
    }

    .table th {
        background-color: #4CAF50;
        color: white;
        text-transform: uppercase;
        font-weight: bold;
    }

    .table tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    .table tr:hover {
        background-color: #f1f1f1;
    }

    .text-success {
        color: #28a745;
        font-weight: bold;
    }

    .text-danger {
        color: #dc3545;
        font-weight: bold;
    }

    .table td {
        font-size: 14px;
    }

    .table th, .table td:first-child {
        text-align: left;
        font-size: 14px;
    }

    tr h4{
        padding-left: 20px;
    }

    </style>
    <div class="form-element-area">
        <div class="container">
          <div class="row">
            <div
              class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
              style="background: #fff; padding: 20px"
            >





      <div class="">
          <table class="table">
            <tr>
                <h4>SP Cotton  Payment Receipt</h4>
            </tr>
              <tr>
                  <th>Bill Number :</th>
                  <td>{{ $row['bill_number'] }}</td>
              </tr>
              <tr>
                  <th>Customer Name :</th>
                  <td>{{ $row['name'] }}</td>
              </tr>
              <tr>
                  <th>Mobile Number :</th>
                  <td>{{ $row['mobile'] }}</td>
              </tr>
              <tr>
                  <th>Order Date :</th>
                  <td>{{ $row['order_date'] }}</td>
              </tr>
              <tr>
                  <th>Salesman Code :</th>
                  <td>{{ $row['salesman_code'] }}</td>
              </tr>
              <tr>
                  <th>Date of birth :</th>
                  <td>{{ $row['dob'] }}</td>
              </tr>
              <tr>
                  <th>Delivery Date :</th>
                  <td>{{ $row['delivery_date'] }}</td>
              </tr>

              <tr>
                  <th>Total Amount :</th>
                  <td>Rs.{{ $row['total_amount'] }}</td>
              </tr>
              <tr>
                  <th>Discount :</th>
                  <td>Rs.{{ $row['discount'] }}</td>
              </tr>
              <tr>
                  <th>Advanced Received :</th>
                  <td>Rs.{{ $row['advance'] }}</td>
              </tr>
              <tr>
                  <th>Advanced Received Date:</th>
                  <td>{{ $row['advance_date'] }}</td>
              </tr>

              <tr>
                  <th>Balance Amount:</th>
                  <td>Rs.{{ $row['balance'] }}</td>
              </tr>

              <tr>
                  <th>Transactional Amount:</th>
                  <td>Rs.{{ $total_payment_maked }}</td>
              </tr>
              <tr>
                  <th>Total Pending Amount:</th>
                  <td class="@if($row['balance'] == $total_payment_maked) text-success @else text-danger @endif" >Rs.{{ $row['balance']-$total_payment_maked }}</td>
              </tr>
          </table>
      </div>

            </div>
          </div>

        </div>
      </div>


    <!-- jquery
		============================================ -->
    <script src="{{ url('superadmin') }}/js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/counterup/jquery.counterup.min.js"></script>
    <script src="{{ url('superadmin') }}/js/counterup/waypoints.min.js"></script>
    <script src="{{ url('superadmin') }}/js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- jvectormap JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="{{ url('superadmin') }}/js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="{{ url('superadmin') }}/js/jvectormap/jvectormap-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/sparkline/jquery.sparkline.min.js"></script>
    <script src="{{ url('superadmin') }}/js/sparkline/sparkline-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/flot/jquery.flot.js"></script>
    <script src="{{ url('superadmin') }}/js/flot/jquery.flot.resize.js"></script>
    <script src="{{ url('superadmin') }}/js/flot/curvedLines.js"></script>
    <script src="{{ url('superadmin') }}/js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/knob/jquery.knob.js"></script>
    <script src="{{ url('superadmin') }}/js/knob/jquery.appear.js"></script>
    <script src="{{ url('superadmin') }}/js/knob/knob-active.js"></script>
    <!--  wave JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/wave/waves.min.js"></script>
    <script src="{{ url('superadmin') }}/js/wave/wave-active.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/todo/jquery.todo.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/plugins.js"></script>
    <!--  Chat JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/chat/moment.min.js"></script>
    <script src="{{ url('superadmin') }}/js/chat/jquery.chat.js"></script>
    <!-- main JS
		============================================ -->
    <script src="{{ url('superadmin') }}/js/main.js"></script>
    <!-- tawk chat JS
		============================================ -->
    <!-- <script src="{{ url('superadmin') }}/js/tawk-chat.js"></script> -->
  </body>
</html>
