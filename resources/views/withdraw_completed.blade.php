<!DOCTYPE html>
<html>
<head>
    <title>Withdrawal Approved</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 20px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .header {
            background: #007bff;
            color: #ffffff;
            padding: 15px;
            font-size: 20px;
            border-radius: 10px 10px 0 0;
        }
        .content {
            padding: 20px;
            color: #333;
            font-size: 16px;
            line-height: 1.6;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 20px 0;
            background: #28a745;
            color: #ffffff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">Withdrawal Approved</div>
        <div class="content">
            <h3>Hello {{ $user->name }},</h3>
            <p>Your withdrawal request has been successfully processed.</p>
          
            <p>Thank you for using our service.</p>
           </div>
        <div class="footer">
            &copy; {{ date('Y') }} Your Company Name. All rights reserved.
        </div>
    </div>
</body>
</html>
