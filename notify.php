<?php

$dirname = dirname($argv[0]);

$to = "Your e-mail";
$subject = "kindle price";
$today = date("Y-m-d");
$price = file_get_contents("{$dirname}/ret/{$today}");
$message = "Your concern books price today:\n" . $price;
$from = "Your e-mail";
$headers = "From: $from";
echo $message;
$ret=mail($to,$subject,$message,$headers);
echo "Mail Sent {$ret}.\n";
