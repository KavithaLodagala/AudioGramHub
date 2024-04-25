<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="media.css">
    <title>Music Website</title>
</head>

<body>
    <header>
        <div class="menu_side">
            <h6 id="menu_list_active_button" ><i class="bi bi-music-note-list"></i></h6>
            <h1>Playlist</h1>
            <div class="playlist">
                <h4 class="active"><span></span><i class="bi bi-music-note-beamed"></i> Playlist</h4>
                <h4><span></span><i class="bi bi-music-note-beamed"></i> Last Listening</h4>
                <h4><span></span><i class="bi bi-music-note-beamed"></i> Recommended</h4>
            </div>
            <div class="menu_song">
                <li class="songItem">
                    <span>01</span>
                    <img src="img/1.jpg" alt="">
                    <h5>On My Way <br>
                        <div class="subtitle">Alan Walker</div>
                    </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="1"></i>
                </li>
                <li class="songItem">
                    <span>02</span>
                    <img src="img/2.jpg" alt="">
                    <h5>On My Way <br>
                        <div class="subtitle">Alan Walker</div>
                    </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="2"></i>
                </li>
                <li class="songItem">
                    <span>03</span>
                    <img src="img/2.jpg" alt="">
                    <h5>On My Way <br>
                        <div class="subtitle">Alan Walker</div>
                    </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="3"></i>
                </li>
                <li class="songItem">
                    <span>04</span>
                    <img src="img/2.jpg" alt="">
                    <h5>On My Way <br>
                        <div class="subtitle">Alan Walker</div>
                    </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="4"></i>
                </li>
                <li class="songItem">
                    <span>05</span>
                    <img src="img/2.jpg" alt="">
                    <h5>On My Way <br>
                        <div class="subtitle">Alan Walker</div>
                    </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="5"></i>
                </li>
                <li class="songItem">
                    <span>06</span>
                    <img src="img/2.jpg" alt="">
                    <h5>On My Way <br>
                        <div class="subtitle">Alan Walker</div>
                    </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="6"></i>
                </li>
                <li class="songItem">
                    <span>07</span>
                    <img src="img/2.jpg" alt="">
                    <h5>On My Way <br>
                        <div class="subtitle">Alan Walker</div>
                    </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="7"></i>
                </li>
                
            </div>
        </div>
        <div class="song_side">
            <nav>
                <ul>
                    <li><a href="http://localhost/Music_last_v_PHP_With_Login_system/welcome.php">Discover </a></li>
                    <li>MY LIBRARY</li>
                    <li><a href="http://localhost/Music_last_v_PHP_With_Login_system/podcast_shows.php">PODCAST SHOWS</a></li>
                    <li>RADIO</li>
                </ul>
                <div class="search">
                    <i class="bi bi-search"></i>
                    <form method="POST" action="podcast_shows.php">
                        <input type="text" name="search" class="form-control" placeholder="Search Podcast...">
                        <input type="submit" value="Search">
                    </form>
                </div>
                <div class="user">
                    <img src="img/KDS CODER.png" alt="">
                </div>
            </nav>
            <div class="content">
                <?php
                    echo "<div class='podcast-episode'>";
                    if(isset($_POST["search"])){
                        $server_name = "localhost";
                        $user_name = 'root';
                        $user_pass = '';
                        $database_name = "music_user";

                        $con  = mysqli_connect($server_name, $user_name, $user_pass, $database_name);

                        if (!$con) {
                            die ('Connection Failed' . mysql_connect_error());
                        } 
                        else {

                            $search = $_POST["search"];

                            $query = "select * from episodes where podcast_id in (select podcast_id from podcast_shows where title LIKE '%$search%')";

                            $result = mysqli_query($con,$query);

                            while ($row = mysqli_fetch_assoc($result)) {
                                $podcast_id = $row['podcast_id'];
                                $result1 = mysqli_query($con,"select  image_path from podcast_shows where podcast_id = '$podcast_id'");
                                $row1 = mysqli_fetch_assoc($result1);
                                echo "<li class='songItem'>";
                                    echo "<img style='width:50px;height:50px;margin-right:10px;' src='". $row1['image_path']."'/>";
                                    echo "<h5>".$row['episode_title'];
                                    echo "<div class='subtitle'>Episode ".$row['episode_number']."</div>";
                                    echo "</h5>";
                                    echo "<audio controls> <source src='".$row['audio_file_path']."' type='audio/mpeg'></audio>";
                                echo "</li>";
                            }
                        }
                    }
                    if(isset($_GET['podcast_id'])){

                        // Database connection
                        $server_name = "localhost";
                        $user_name = 'root';
                        $user_pass = '';
                        $database_name = "music_user";

                        $con = mysqli_connect($server_name, $user_name, $user_pass, $database_name);

                        if (!$con) {
                            die('Connection Failed: ' . mysqli_connect_error());
                        } else {
                            $podcast_id = $_GET['podcast_id'];

                            $query = "select * from episodes where podcast_id in (select podcast_id from podcast_shows where podcast_id = '$podcast_id')";

                            $result = mysqli_query($con,$query);

                            while ($row = mysqli_fetch_assoc($result)) {
                                $podcast_id = $row['podcast_id'];
                                $result1 = mysqli_query($con,"select  image_path from podcast_shows where podcast_id = '$podcast_id'");
                                $row1 = mysqli_fetch_assoc($result1);
                                echo "<li class='songtItem'>";
                                    echo "<img style='width:50px;height:50px;margin-right:10px;' src='". $row1['image_path']."'/>";
                                    echo "<h5>".$row['episode_title'];
                                    echo "<div class='subtitle'>Episode ".$row['episode_number']."</div>";
                                    echo "</h5>";
                                    echo "<audio controls> <source src='".$row['audio_file_path']."' type='audio/mpeg'></audio>";
                                echo "</li>";
                            }
                        }
                    }
                    echo "</div>";
                ?>

            </div>
        </div>
    </header>
    <script src="app.js"></script>
    <script>
    let menu_list_active_button = document.getElementById('menu_list_active_button');
    let menu_side = document.getElementsByClassName('menu_side')[0];
    
    
    let song_side = document.getElementsByClassName('song_side')[0];
    
    
    let xm = window.matchMedia("(max-width: 930px)");
    
    menu_list_active_button.addEventListener('click', () => {
        if (xm.matches) { 
            menu_side.style.transform = "unset";
            menu_list_active_button.style.opacity = 0;
        } 
    })
    
    song_side.addEventListener('click', () => {
        if (xm.matches) {      
            menu_side.style.transform = "translateX(-100%)";
            menu_list_active_button.style.opacity = 1;
        }
    })
    </script>
</body>

</html>
