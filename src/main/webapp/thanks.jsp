<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <title>Thanks for Joining - Murach's Java Servlets and JSP</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }
        body {
            margin: 0;
            background: url('https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=1200&q=80') center/cover no-repeat fixed;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: rgba(255, 255, 255, 0.85);
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.2);
            padding: 50px 40px;
            max-width: 500px;
            width: 90%;
            text-align: center;
            animation: fadeIn 0.7s ease;
        }
        h1 {
            margin-bottom: 15px;
            font-size: 28px;
            color: #1e3a8a;
        }
        p {
            color: #374151;
            margin-bottom: 25px;
            line-height: 1.6;
        }
        label {
            font-weight: 600;
            color: #1f2937;
            display: inline-block;
            width: 110px;
            text-align: right;
            margin-right: 10px;
        }
        span {
            display: inline-block;
            text-align: left;
            color: #111827;
            font-weight: 500;
        }
        form {
            margin-top: 25px;
        }
        input[type="submit"] {
            background: #2563eb;
            color: white;
            font-size: 16px;
            border: none;
            padding: 12px 20px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        input[type="submit"]:hover {
            background: #1d4ed8;
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(37,99,235,0.3);
        }
        i {
            color: #dc2626;
            display: block;
            margin-top: 15px;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Thanks for Joining!</h1>
        <p>Here is the information that you entered:</p>

        <div>
            <label>Email:</label>
            <span>${user.email}</span><br>
            <label>First Name:</label>
            <span>${user.firstName}</span><br>
            <label>Last Name:</label>
            <span>${user.lastName}</span><br>
        </div>

        <p>To enter another email address, click the Return button below.</p>

        <form action="" method="post">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>

        <i>${errorMessage}</i>
    </div>
</body>
</html>
