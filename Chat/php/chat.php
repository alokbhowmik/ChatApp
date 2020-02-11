<?php

class Chat{
    function chat_insert($username,$chat,$status=1){
        include "variable.php";
        $sql = "INSERT INTO public_chat(post, username, status) VALUES('$chat','$username','$status')";
        $conn->query($sql);
    }
    function fetch_chat(){
        include "variable.php";
        $sql = "SELECT u.username, p.post, p.date FROM public_chat p , user u WHERE p.username = u.username
        AND p.status=1";
        $result = $conn->query($sql);
        $arr = array();
        // $arr['field'] = 'login';
        while($row = mysqli_fetch_assoc($result)){
            array_push($arr,$row);
        }
        return json_encode($arr);
    }

}

?>