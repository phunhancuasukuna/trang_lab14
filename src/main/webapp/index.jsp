<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
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
    animation: fadeIn 0.7s ease;
}
        .image {
            flex: 1;
            background: url('https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=1200&q=80') center/cover no-repeat;
            min-height: 450px;
        }
        .form-wrapper {
            flex: 1;
            padding: 50px 40px;
        }
        h1 {
            margin-bottom: 10px;
            font-size: 28px;
            color: #1e3a8a;
        }
        p {
            color: #374151;
            margin-bottom: 25px;
            line-height: 1.6;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        label {
            font-weight: 600;
            margin-bottom: 5px;
            color: #1f2937;
        }
        input[type="text"], input[type="email"] {
            padding: 12px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            font-size: 16px;
            width: 100%;
        }
        input[type="text"]:focus, input[type="email"]:focus {
            outline: none;
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37,99,235,0.2);
        }
        input[type="submit"] {
            background: #2563eb;
            color: white;
            font-size: 16px;
            border: none;
            padding: 14px;
            border-radius: 8px;
            cursor: pointer;
            margin-top: 10px;
            transition: all 0.3s ease;
        }
        input[type="submit"]:hover {
            background: #1d4ed8;
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(37,99,235,0.3);
        }
        i {
            color: #dc2626;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
            .image {
                height: 200px;
            }
            .form-wrapper {
                padding: 30px 25px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="image"></div>
        <div class="form-wrapper">
            <h1>Join Our Email List</h1>
            <p>To join our email list, enter your name and email address below.</p>
            <p><i>${message}</i></p>

            <form action="emailList" method="post">
                <input type="hidden" name="action" value="add">

                <label>Email:</label>
                <input type="email" name="email" value="${user.email}" required>

                <label>First Name:</label>
                <input type="text" name="firstName" value="${user.firstName}" required>

                <label>Last Name:</label>
                <input type="text" name="lastName" value="${user.lastName}" required>

                <input type="submit" value="Join Now">
            </form>
        </div>
    </div>
</body>
</html>
