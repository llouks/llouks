<?php
    function getProducts($keywords) {
        $search = str_replace('', '%20', $keywords);
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => "http://api.walmartlabs.com/v1/search?apiKey=g3hqps46pm5ty49hrvyagw3r&query='$search'",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_TIMEOUT => 30,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET",
          CURLOPT_HTTPHEADER => array(
            "cache-control: no-cache"
          ),
        ));
        $jsonData = curl_exec($curl);
        $data = json_decode($jsonData, true);
        $items = $data['items'];
        return $items;
    }
?>