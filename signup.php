<?php
$title = 'Signup';
include 'layout/header.php';
if($user->isLoggedIn()) {
    Redirect::to('index.php');
}
if(Input::exists()) {
    if(Token::check(Input::get('token'))) {
        $validate = new Validate();
        $validation = $validate->check($_POST, array(
            'Brugernavn' => array(
                'required' => true,
                'min' => 2,
                'max' => 20,
                'uniqueusername' => 'users'),
            'Email' => array (
                'max' => 320,
                'required' => true,
                'mailvalid' => true,
                'uniqueemail' => 'users'),
            'Adgangskode' => array(
                'required' => true,
                'min' => 8),
            'Kodegentagelse' => array(
                'required' => true,
                'matches' => 'Adgangskode')
        ));


        if($validation->passed()) {
            $user = new User();

            $salt = Hash::salt(32);

            try {

                $user->create(array(
                    'username' 	=> Input::get('Brugernavn'),
                    'email'     => Input::get('Email'),
                    'password' 	=> Hash::make(Input::get('Adgangskode'), $salt),
                    'salt'		=> $salt
                ));
                Session::flash('home', '<div class="container"><div class="alert flash alert-success" role="alert">Thanks for signing up, you can now login!</div></div>');
                Redirect::to('index.php');

            } catch(Exception $e) {
                die($e->getMessage());
            }

        } else {
            foreach($validate->errors() as $error) {
                echo "<div class=\"alert alert-danger\" role=\"alert\">
  <span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>
  <span class=\"sr-only\">Error:</span>
                $error
                </div>
                ";
            }
        }
    }
}


?>
    <p><b>Notice:</b> All fields must be filled.</p>
    <form action="" method="post">
        <h3 class="headlineText">Signup a new profile</h3>
        <div class="form-group">
            <label for="Brugernavn">Username:</label>
            <input type="text" class="form-control" name="Brugernavn" id="Brugernavn" placeholder="Enter your username here">
        </div>

        <div class="form-group">
            <label for="Email">Email</label>
            <input type="text" class="form-control" name="Email" id="Email" placeholder="Enter your email here">
        </div>

        <div class="form-group">
            <label for="Adgangskode">Password:</label>
            <input type="password" class="form-control" name="Adgangskode" id="Adgangskode" placeholder="Minimum 8 characters">
        </div>

        <div class="form-group">
            <label for="Kodegentagelse">Repeat password:</label>
            <input type="password" class="form-control" name="Kodegentagelse" id="Kodegentagelse">
        </div>

        <div class="form-group">
            <input type="submit" class="btn-info form-control" value="Signup" >
        </div>
        <div class="form-group">
            <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
        </div>

    </form>

<?php
include 'layout/footer.php';
?>