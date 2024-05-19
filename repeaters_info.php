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

      /* Table styles */
      table {
        width: 100%;
        border-collapse: collapse;
        margin: 20px 0;
        font-size: 18px;
        text-align: left;
      }
      table th, table td {
        padding: 12px;
        border: 1px solid #ddd;
      }
      table th {
        background-color: #f2f2f2;
        color: #333;
      }
      table tr:nth-child(even) {
        background-color: #f9f9f9;
      }
      table tr:hover {
        background-color: #f1f1f1;
      }
    </style>
    <style>
      .Nav {
        text-align: center;
      }

      .Nav a {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px;
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
      }

      .Nav a:hover {
        background-color: #45a049; /* Darker Green */
      }

    </style>
    
  </head>

  <body>
    <header id="navbar"></header>
    <header class="navbar"></header>
    <div id="map" class="content">
      <!-- Your map content here -->
      <h1>See the locations of the repeaters in Sofia</h1>
      <div class="Nav Bar">
      <a class="Map" href="#Map" onclick="showMapPage()">Map</a>
      <a class="info" href="#info" onclick="showInformationPage()">Repeaters info</a>
    </div>
      <iframe
        src="https://www.google.com/maps/d/embed?mid=1yRmsirePrDWj8R5TionLk7hIPR7Cv68&ehbc=2E312F"
        width="100%"
        height="1600pt"
      ></iframe>
    </div>
    <div id="information" class="content hidden">
      <!-- Your repeaters information content here -->
      <h1>See all the info about the repeaters</h1>
      <div class="Nav Bar">
      <a class="Map" href="#Map" onclick="showMapPage()">Map</a>
      <a class="info" href="#info" onclick="showInformationPage()">Repeaters info</a>
    </div>
      <table>
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
            echo "<tr>
                    <td>" . $row["CALLSIGN"] . "</td>
                    <td>" . $row["QTH1"] . "</td>
                    <td>" . $row["QTH2"] . "</td>
                    <td>" . $row["QTH3"] . "</td>
                    <td>" . $row["RX"] . "</td>
                    <td>" . $row["TX"] . "</td>
                    <td>" . $row["OFFSET"] . "</td>
                    <td>" . $row["TONE"] . "</td>
                    <td>" . $row["MODE"] . "</td>
                    <td>" . $row["TYPE"] . "</td>
                    <td>" . $row["ALT"] . "</td>
                    <td>" . $row["COM"] . "</td>
                    <td>" . $row["ECHO"] . "</td>
                  </tr>";
          }
        } else {
          echo "<tr><td colspan='13'>0 results</td></tr>";
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
