<?php
function testQuestions() {
    $testvariabel = "";
    $questionNumber = 1;

    $questions = DB::getInstance()->get('questions', array('id', '>', '0'));
    foreach($questions->results() as $question) {
        //this is used to test if any results were returned from the database
        $testvariabel = $question->question;
        $questionsTotal = DB::getInstance()->count();
    }



    if ($testvariabel == "") {
        echo "<b>Sorry, there's no questions for the test.</b>";
    } else {
        echo "<span class='headlineText'><h3>Try the test!</h3></span>";
        echo "<form>";
        foreach($questions->results() as $question) {

            //onclick=\"javascript:location.href='udbyder.php?value="."$lokale->lokalenavn"."'\"
            echo "<div class=\"questionTable\">
                        <span class='headlineText'><h4>#$questionNumber/$questionsTotal: $question->question</br></h4></span>
                        <input type='radio' name='question$question->id' value='male' checked><span class='questionTableAttribute'>1. </span><span class='questionTableText'>$question->answer1</span></br>
                        <input type='radio' name='question$question->id' value='male' checked><span class='questionTableAttribute'>2. </span><span class='questionTableText'>$question->answer2</span></br>
                        <input type='radio' name='question$question->id' value='male' checked><span class='questionTableAttribute'>3. </span><span class='questionTableText'>$question->answer3</span></br>
                        <input type='radio' name='question$question->id' value='male' checked><span class='questionTableAttribute'>4. </span><span class='questionTableText'>$question->answer4</span></br>
                        <input type='radio' name='question$question->id' value='male' checked><span class='questionTableAttribute'>5. </span><span class='questionTableText'>$question->answer5</span>
                    </div>
                    </br>";

            $questionNumber++;
        }
        echo "<input type='submit' class='btn-success form-control' value='Get test result' >";
        echo "</form>";
    }
}