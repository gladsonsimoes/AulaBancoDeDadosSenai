<?php
    include 'conexao.php';
    $id_curso = 1;

    $data = $conn->query('SELECT * FROM uc where id_curso='.$id_curso.' and id_uc=1'); // seleção da tabela uc
    $curso = $conn->query('SELECT * FROM curso WHERE id_curso='.$id_curso); //concatenação é o .
    $curso = $curso->fetch(PDO::FETCH_ASSOC);
    echo('<h1> Unidades curriculares disponíveis </h1>');

    echo('<h3>');
    echo($curso['nome_curso']); 
    echo('<h3>');

    foreach($data as $row){
        echo($row['uc'].'<br>');
    }

?>