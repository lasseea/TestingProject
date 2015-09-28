<?php
function questionsExplanations()
{
    $testvariabel = "";
    $questionNumber = 1;
    $questionsExplanationsArray = array();

    $questions = DB::getInstance()->get('questions', array('id', '>', '0'));
    foreach ($questions->results() as $question) {
        //this is used to test if any results were returned from the database
        $testvariabel = $question->question;
    }


    if ($testvariabel == "") {
    } else {
        foreach($questions->results() as $question) {
            $questionsExplanationsArray[$questionNumber-1] = $question->explanation;
            $questionNumber++;
        }
    }
    return $questionsExplanationsArray;
}


