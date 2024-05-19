<!DOCTYPE html>
<html>
  <head>

    <script lang="JavaScript">
      <?php 
      
      $servername = "localhost";
      $username = "root";
      $password = "";
      $dbname = "Repeaters";
      
      // Create connection
      $conn = new mysqli($servername, $username, $password, $dbname);
      // Check connection
      if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }
      
      ?>
    </script>
    <link rel="stylesheet" href="./navbar.css">
    <style>
      /* Your CSS styles here */
      .hidden {
        display: none;
      }
    </style>
  </head>

  <body>
    <header id="navbar"></header>
    <header class="navbar"></header>
    <div class="Nav Bar">
      <a class="Map" href="#Map" onclick="showMapPage()">Map</a>
      <a class="info" href="#info" onclick="showInformationPage()"
        >Repeaters info</a>
    </div>
    <div id="map" class="content">
      <!-- Your map content here -->
      <h1>See the locations of the repeaters in Sofia</h1>
      <iframe
        src="https://www.google.com/maps/d/embed?mid=1yRmsirePrDWj8R5TionLk7hIPR7Cv68&ehbc=2E312F"
        width="100%"
        height="900m"
      ></iframe>
    </div>
    <div id="information" class="content hidden">
      <!-- Your repeaters information content here -->
      <h1>See all the info about the repeaters</h1>
      <table>
        <!-- Your table content here -->
      <tr>
        <th>CALLSIGN</th>
        <th>QTH1</th>
        <th>QTH2</th>
        <th>QTH3</th>
        <th>RX</th>
        <th>TX</th>
        <th>OFFSET</th>
        <th>TONE</th>
        <th>MODE</th>
        <th>TYPE</th>
        <th>ALT</th>
        <th>COM</th>
        <th>ECHO</th>
    </tr>
          <?php
          $sql = "SELECT * FROM repeaters_info";
          $result = $conn->query($sql);

          if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
              echo "<tr> <th>" . $row["CALLSIGN"]. "</th> <th>" . $row["QTH1"]. "</th><th> " . $row["QTH2"] ."</th><th>" .$row["QTH3"] ."</th><th>" .$row["RX"] ."</th><th>" .$row["TX"] ."</th><th>" .$row["OFFSET"] ."</th><th>". $row["TONE"] ."</th><th>". $row["MODE"] ."</th><th>". $row["TYPE"]."</th><th>". $row["ALT"] ."</th><th>". $row["COM"] ."</th><th>". $row["ECHO"] ."</th> </tr>";
            }
          } else {
            echo "0 results";
          }
          $conn->close();
          ?>
      </table>
    </div>
    <footer id="endbar"></footer>
    <script lang="JavaScript">
      // JavaScript functions to show/hide divs
      function showMapPage() {
        document.getElementById("map").style.display = "block";
        document.getElementById("information").style.display = "none";
      }

      function showInformationPage() {
        document.getElementById("map").style.display = "none";
        document.getElementById("information").style.display = "block";
      }

      // Show map by default
      showMapPage();
    </script>
  </body>
</html>
<script language="JavaScript" src="./script.js"></script>
