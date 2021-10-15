<?php
require 'model/app/Autoload.php';
use L_Codeur\Autoload;
Autoload::register();
define('ROOT','controlleur/Controlleur_');

if(!isset($_GET['p'])){
    $p = 'home';
}else{
    $p = $_GET['p'];
}
if($p === 'home'){
    require ROOT.'home.php';
}
if($p === 'recherche'){
    require ROOT.'extimer.php';
}
elseif($p === 'acceuil'){
    require ROOT.'acceuil.php';
}
elseif($p === 'connexion'){
    require ROOT.'connexion.php';
}
elseif($p === 'inscription'){
    require ROOT.'inscription.php';
}
elseif($p === 'contact'){
    require ROOT.'contact.php';
}
elseif($p === 'extimer'){
    require ROOT.'extimer.php';
}
elseif($p === 'propos'){
    require ROOT.'propos.php';
}
elseif($p === 'voir'){
    require ROOT.'voir.php';
}
elseif($p === 'userAcount'){
    require ROOT.'userAcount.php';
}

?>