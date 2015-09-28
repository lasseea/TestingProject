<?php
$title = "MultipleChoiceTest";
include "layout/header.php";

$questionsExplanationsArray = questionsExplanations();

if(Input::exists()) {
    if(Token::check(Input::get('token'))) {
        $validate = new Validate();
        $validation = $validate->check($_POST, array(
            'Question' => array(
                'required' => true,
                'max' => 200),
            'Answer1' => array (
                'required' => true,
                'max' => 200),
            'Answer2' => array(
                'required' => true,
                'max' => 200),
            'Answer3' => array(
                'required' => true,
                'max' => 200),
            'Answer4' => array(
                'required' => true,
                'max' => 200),
            'Answer5' => array(
                'required' => true,
                'max' => 200),
            'correctAnswer' => array(
                'required' => true,
                'max' => 1,
                'maxvalue' => 5),
            'Explanation' => array(
                'required' => true,
                'max' => 200),
        ));


        if($validation->passed()) {
            $user = new User();

            try {

                DB::getInstance()->insert('questions', array(
                    'question' 	    => Input::get('Question'),
                    'answer1'       => Input::get('Answer1'),
                    'answer2'       => Input::get('Answer2'),
                    'answer3'       => Input::get('Answer3'),
                    'answer4'       => Input::get('Answer4'),
                    'answer5'       => Input::get('Answer5'),
                    'correctanswer' => Input::get('correctAnswer'),
                    'explanation'   => Input::get('Explanation')
                ));
                Session::flash('home', '<div class="container"><div class="alert flash alert-success" role="alert">Your question has been added to the test!</div></div>');
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

</div>
</div>

<div class="jumboContent">
    <div class="jumbotron">
        <div class="container text-center">
            <span class="headlineText"><h1>Multiple Choice Test</h1></span>
        </div>
    </div>
</div>

<div class="container">
    <div class="pageContent">
<?php
if($user->isLoggedIn()) {
    if  (isset($_GET['question1'])){
        echo "<a href='#buttonOfPage'><button class='btn-success'><h3><b>Click here to see your test result</b></h3><br/><br/></button></a> ";
    }
    ?>

    <p><b>Notice:</b> All fields must be filled.</p>
    <form action="" method="post">
        <h3 class="headlineText">Add new multiple choice test question</h3>

        <div class="form-group">
            <label for="Question">Question</label>
            <input type="text" class="form-control" name="Question" id="Question" placeholder="State the question here">
        </div>

        <div class="form-group">
            <label for="Answer1">Answer 1</label>
            <input type="text" class="form-control" name="Answer1" id="Answer1" placeholder="State Answer 1 here">
        </div>
        <div class="form-group">
            <label for="Answer2">Answer 2</label>
            <input type="text" class="form-control" name="Answer2" id="Answer2" placeholder="State Answer 2 here">
        </div>
        <div class="form-group">
            <label for="Answer3">Answer 3</label>
            <input type="text" class="form-control" name="Answer3" id="Answer3" placeholder="State Answer 3 here">
        </div>
        <div class="form-group">
            <label for="Answer4">Answer 4</label>
            <input type="text" class="form-control" name="Answer4" id="Answer4" placeholder="State Answer 4 here">
        </div>
        <div class="form-group">
            <label for="Answer5">Answer 5</label>
            <input type="text" class="form-control" name="Answer5" id="Answer5" placeholder="State Answer 5 here">
        </div>

        <div class="form-group">
            <label for="correctAnswer">Correct answer number</label>
            <input type="text" class="form-control" name="correctAnswer" id="correctAnswer"
                   placeholder="State the number of the correct answer here. Etc. '1' for Answer 1">
        </div>

        <div class="form-group">
            <label for="Explanation">Explanation</label>
            <input type="text" class="form-control" name="Explanation" id="Explanation"
                   placeholder="Explain why the correct answer is correct">
        </div>

        <div class="form-group">
            <input type="submit" class="btn-success form-control" value="Add question">
        </div>
        <div class="form-group">
            <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
        </div>

    </form>
    <br/><br/><br/>
<?php
    //Prints questions and makes array of correct answers called $questionAnswersArray
    $questionAnswersArray = testQuestions();
    //Variable for total questions, to calculate percentage of correct answers
    $totalQuestionsAmount = count($questionAnswersArray);
    //Checks if questions have been answered and prints result if they have
    if  (isset($_GET['question1'])){
        $correctAnswersAmount = 0;
        $foreachCounter = 0;
        $currentQuestionCounter = 1;
        echo "<br/><br/><h3 class='headlineText'>Your test result:</h3>";
        foreach($_GET as $key => $value)
        {
            if ($value == $questionAnswersArray[$foreachCounter]){
                $correctAnswersAmount++;
                echo "<p class='correctAnswer'><b>Question $currentQuestionCounter is correct - your answer was answer number $value</b></p>";
            } else {
                echo "<p class='incorrectAnswer'><b>Question $currentQuestionCounter is incorrect - your answer was answer number $value</b></p>
                <b>Explanation to question $currentQuestionCounter:<br/> $questionsExplanationsArray[$foreachCounter]</b><br/><br/>";
            }
            $foreachCounter++;
            $currentQuestionCounter++;

        }
        echo "<h3><b>You got $correctAnswersAmount out of $totalQuestionsAmount questions right!</b></h3><br/>";
        echo "<span id='buttonOfPage'></span>";
    }

} else {
?>
    <b>Please login to take the test and add new questions</b>
<?php
}
include 'layout/footer.php';
?>