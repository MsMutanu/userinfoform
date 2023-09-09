<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information Form</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet"> <!-- Include your CSS file here -->
    <style>
        /* Reset some default browser styles */
        html, body {
            margin: 0;
            padding: 0;
        }

        /* Global Styles */
        html {
            height: 100%;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: linear-gradient(#141e30, #243b55);
        }

        /* Form Styles */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-box {
            width: 400px;
            padding: 40px;
            background: rgba(0, 0, 0, 0.5);
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
            border-radius: 10px;
            text-align: center;
        }

        .login-box h2 {
            margin: 0 0 30px;
            padding: 0;
            color: #fff;
            font-size: 24px;
        }

        .user-box {
            position: relative;
            margin-bottom: 30px;
        }

        .user-box input {
            width: 100%;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            border: none;
            border-bottom: 1px solid #fff;
            outline: none;
            background: transparent;
        }

        .user-box label {
            position: absolute;
            top: 0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            pointer-events: none;
            transition: .5s;
        }

        .user-box input:focus ~ label,
        .user-box input:valid ~ label {
            top: -20px;
            left: 0;
            color: #03e9f4;
            font-size: 12px;
        }

        button[type="submit"] {
            background-color: #03e9f4;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        
        .modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 9999;
        }

        .modal-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .modal h2 {
            margin: 0 0 20px;
            padding: 0;
            color: #333;
            font-size: 24px;
        }

        .modal p {
            color: #555;
            font-size: 16px;
            margin-bottom: 20px;
        }

        .modal button {
            background-color: #03e9f4;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Thank You Modal Animation */
        @keyframes showModal {
            0% {
                transform: translate(-50%, -50%) scale(0.5);
                opacity: 0;
            }
            100% {
                transform: translate(-50%, -50%) scale(1);
                opacity: 1;
            }
        }

        
        .modal.show-modal {
            animation: showModal 0.3s ease-in-out forwards;
        }
    </style>
</head>
<body>
    <div class="container">
        

        
            @if(isset($name))
            <!-- Thank you modal -->
            <div class="modal-content">
                <div class="alert alert-success mt-3">
                    Thank you, {{ $name }}!
                    
                </div>
            </div>
            @else
            <div class="login-box">
                <h2>User Information Form</h2>
                <form method="POST" action="/frontend">
                    @csrf <!-- CSRF token -->
    
                    <div class="user-box">
                        <input type="text" id="name" name="name" required>
                        <label for="name">Name</label>
                    </div>
    
                    <div class="user-box">
                        <input type="email" id="email" name="email" required>
                        <label for="email">Email</label>
                    </div>
    
                    <button type="submit">Submit</button>
                </form>
            </div>
        @endif
    

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // Check if the modal should be shown
            var showModal = {!! json_encode(session('success')) !!};

            if (showModal) {
                // Show the modal
                $('.modal').addClass('show-modal');
            }

        }   
</body>
</html>
