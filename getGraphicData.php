<?php

// Basic structure of the chart
$grafico = array(
    'dados' => array(
        'cols' => array(
            array('type' => 'string', 'label' => 'Gênero'),
            array('type' => 'number', 'label' => 'Quantidade')
        ),  
        'rows' => array()
    ),
    'config' => array(
        'title' => 'Number of banners by size',
        'width' => 400,
        'height' => 300
    )
);

// Consult data in the DB
$pdo = new PDO('mysql:host=mysql;dbname=noticiaja', 'root', 'root');
$sql = 'SELECT formato, COUNT(*) as quantidade FROM ads GROUP BY formato';
$stmt = $pdo->query($sql);
while ($obj = $stmt->fetchObject()) {
    $grafico['dados']['rows'][] = array('c' => array(
        array('v' => $obj->formato .' px'),
        array('v' => (int)$obj->quantidade)
    ));
}

// Send data in JSON form
header('Content-Type: application/json; charset=UTF-8');
echo json_encode($grafico);
exit(0);