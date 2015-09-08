<?php
$title = 'Login';
require_once 'core/init.php';
include 'layout/header.php';
if($user->isLoggedIn()) {
    Redirect::to('index.php');
}

if(Input::exists()) {
    if(Token::check(Input::get('token'))) {
        $user = new User();

        $remember = (Input::get('remember') === 'on') ? true : false;
        $login = $user->login(Input::get('username'), Input::get('password'), $remember);

        if($login) {
            Redirect::to('index.php');
        } else {
            echo "<div class=\"alert alert-danger\" role=\"alert\">
  <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
  <span class=\"sr-only\">Error:</span>
                Sorry, the combination of username and password wasn't recognized.
                </div>
                ";
        }
    }
}

?>

    <form action="" method="post">
        <div class="form-group">
            <h3 class="headlineText">Type username and password to login:</h3>
        </div>
        <div class="field">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" name="username" id="username" placeholder="Type your username here">
            </div>
        </div>

        <div class="field">
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Type your password here">
            </div>
        </div>

        <div class="field">
            <div class="form-group">
                <label for="remember">
                    <input type="checkbox" name="remember" id="remember"> Remember me
                </label>
            </div>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn-info" value="Login">
            <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
        </div>
    </form>







<?php
include 'layout/footer.php';
?>