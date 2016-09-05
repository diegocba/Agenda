<?php
$server='localhost';
$bduser='root';
$bdpass='';
$bdname='julianma_agenda';

$bdmotor = new mysqli($server,$bduser,$bdpass,$bdname);

if($bdmotor->connect_errno)
{
	die($bdmotor->connect_errno);
}


?>