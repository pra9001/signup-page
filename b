<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }

    body {
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: column;
    }

    .center {
      max-width: 420px;
      width: 100%;
      background: white;
      border-radius: 10px;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.05);
      padding: 20px;
      box-sizing: border-box;
      margin-bottom: 20px;
    }

    .center h1 {
      text-align: center;
      padding: 20px 0;
      border-bottom: 2px solid #2691d9;
      margin-bottom: 20px;
      margin-left: -20px;
      margin-right: -20px;
    }

    .center form {
      position: relative;
      padding: 0 40px;
      box-sizing: border-box;
    }

    form .txt_field {
      position: relative;
      border-bottom: 2px solid #adadad;
      margin: 30px -20px;
    }

    .txt_field input {
      width: 100%;
      padding: 0 5px;
      height: 40px;
      font-size: 16px;
      border: none;
      background: none;
      outline: none;
    }

    .txt_field label {
      position: absolute;
      top: 50%;
      left: 5px;
      color: #adadad;
      transform: translateY(-50%);
      font-size: 16px;
      pointer-events: none;
      transition: 0.5s;
    }

    .txt_field span::before {
      content: "";
      position: absolute;
      top: 40px;
      left: 0;
      width: 0%;
      height: 2px;
      background: #2691d9;
      transition: 0.5s;
    }

    .txt_field input:focus~label,
    .txt_field input:valid~label {
      top: -5px;
      color: #2691d9;
    }

    .txt_field input:focus~span::before,
    .txt_field input:valid~span::before {
      width: 100%;
    }

    .pass {
      margin: 10px 0 20px -15px;
      color: #a6a6a6;
      cursor: pointer;
      display: flex;
      align-items: center;
    }

    .pass input {
      margin-right: 10px;
      width: 20px;
      height: 20px;
    }

    .pass:hover {
      text-decoration: underline;
    }

    input[type="submit"] {
      width: calc(100% + 40px);
      margin-left: -20px;
      margin-right: -20px;
      height: 50px;
      background: #2691d9;
      border-radius: 25px;
      font-size: 18px;
      color: #e9f4fb;
      font-weight: 700;
      cursor: pointer;
      outline: none;
      transition: 0.5s;
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    input[type="submit"]:hover {
      border-color: #2691d9;
    }

    .signup_link {
      margin: 30px 0;
      text-align: center;
      font-size: 16px;
      color: #666666;
    }

    .signup_link a {
      color: #2691d9;
      text-decoration: none;
    }

    .signup_link a:hover {
      text-decoration: underline;
    }

    .google-signin-btn {
      text-align: center;
      position: absolute;
      bottom: 30px;
      left: 50%;
      transform: translateX(-50%);
    }

    .google-signin-btn button {
      background-color: #fff;
      border: 1px solid #adadad;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .google-signin-btn button svg {
      margin-right: 8px;
    }

    .google-signin-btn button span {
      font-size: 24px;
    }

    .continue-line {
      display: flex;
      align-items: center;
      justify-content: center;
      margin-bottom: 60px;
    }

    .continue-line::before,
    .continue-line::after {
      content: "";
      flex: 1;
      border-bottom: 1px solid #adadad;
    }

    .continue-text {
      margin: 0 10px;
      color: #666666;
      font-size: 16px;
    }
  </style>
</head>

<body>

  <div class="center">
    <h1>Sign Up</h1>
    <form>
      <div class="txt_field">
        <input type="text" required>
        <span></span>
        <label>Your Name</label>
      </div>
      <div class="txt_field">
        <input type="text" required>
        <span></span>
        <label>Email Address</label>
      </div>
      <div class="txt_field">
        <input type="password" required>
        <span></span>
        <label>Password</label>
      </div>
      <div class="pass">
        <input type="checkbox" id="agreeCheckbox" required>
        <label for="agreeCheckbox" style="margin-left: 10px;">I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a></label>
      </div>
      <input type="submit" value="Register">
      <div class="signup_link">Already a member? <a href="https://raw.githack.com/pra9001/signin-page/main/signin.html">Sign In</a></div>
    </form>
  </div>

  <div class="continue-line">
    <span class="continue-line"></span>
    <p class="continue-text">-------------or continue with-------------</p>
    <span class="continue-line"></span>
  </div>

  <div class="google-signin-btn">
    <button id="googleSignInBtn">
      <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="mr-2 w-4">
        <path d="M22.56 12.25c0-.78-.07-1.53-.20-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4"></path>
        <path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853"></path>
        <path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" fill="#FBBC05"></path>
        <path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335"></path>
        <path d="M1 1h22v22H1z" fill="none"></path>
      </svg>
      <span>Google</span>
    </button>
  </div>

  <script>
    function onSignIn(googleUser) {
      console.log("Google Sign-In successful!");
    }

    function startGoogleSignIn() {
      gapi.load('auth2', function () {
        gapi.auth2.init({
          client_id: 'YOUR_GOOGLE_CLIENT_ID',
        }).then(function () {
          var auth2 = gapi.auth2.getAuthInstance();

          document.getElementById('googleSignInBtn').addEventListener('click', function () {
            auth2.signIn().then(onSignIn);
          });
        });
      });
    }

    startGoogleSignIn();
  </script>

  <script src="https://apis.google.com/js/platform.js" async defer></script>

</body>

</html>
