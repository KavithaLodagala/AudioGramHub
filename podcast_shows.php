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
                    <form method="POST" action="search_podcast.php">
                        <i class="bi bi-search"></i>
                        <input type="text" name="search" class="form-control" placeholder="Search Podcast..." required>
                        <input type="submit" value="Search">
                    </form>
                </div>
                <div class="user">
                    <img src="img/KDS CODER.png" alt="">
                </div>
            </nav>
            <div class="content">
            </div>
            <div class="popular_song">
                <div class="h4">
                    <h4>Popular Podcast</h4>
                    <div class="btn_s">
                        <i class="bi bi-arrow-left-short" id="pop_song_left"></i>
                        <i class="bi bi-arrow-right-short" id="pop_song_right"></i>
                    </div>
                </div>
                <div class="pop_song">
                    <li class='podcastItem'>
                        <div class='img_play'>
                            <a href='search_podcast.php?podcast_id=1'>
                                <img src='./podcast/twigImg.jpg' alt='TWiG'>
                                <h5>TWiG<br></h5>
                            </a>
                        </div>
                    </li>
                    <li class='podcastItem'>
                        <div class='img_play'>
                            <a href='search_podcast.php?podcast_id=2'>
                                <img src='./podcast/loveOfCinemaImg.JPG' alt='Love of Cinema'>
                                <h5>Love of Cinema<br></h5>
                            </a>
                        </div>
                    </li>
                    <li class='podcastItem'>
                        <div class='img_play'>
                            <a href='search_podcast.php?podcast_id=3'>
                                <img src='./podcast/chittiPottiKathaluImg.jpg' alt='Chitti Potti Kathalu'>
                                <h5>Chitti Potti Kathalu<br></h5>
                            </a>
                        </div>
                    </li>
                    <li class='podcastItem'>
                        <div class='img_play'>
                            <a href='search_podcast.php?podcast_id=4'>
                                <img src='./podcast/CBS_News_RoundupImg.JPG' alt='CBS News Roundup'>
                                <h5>CBS News Roundup<br></h5>
                            </a>
                        </div>
                    </li>
                </div>
            </div>
        <div class="master_play">
            <div class="wave" id="wave">
                <div class="wave1"></div>
                <div class="wave1"></div>
                <div class="wave1"></div>
            </div>
            <img src="img/20.jpg" alt="" id="poster_master_play">
            <h5 id="title"> Vande mataram <div class="subtitle">Bankim Chandra</div>
            </h5>
            <div class="icon">
                <i class="bi shuffle bi-music-note-beamed">next</i>
                <i class="bi bi-skip-start-fill" id="back"></i>
                <i class="bi bi-play-fill" id="masterPlay"></i>
                <i class="bi bi-skip-end-fill" id="next"></i>
                <a href="" download id="download_music"><i class="bi bi-cloud-arrow-down-fill"></i></a>
            </div>
            <span id="currentStart">0:00</span>
            <div class="bar">
                <input type="range" id="seek" min="0" max="100">
                <div class="bar2" id="bar2"></div>
                <div class="dot"></div>
            </div>
            <span id="currentEnd">0:30</span>
            <div class="vol">
                <i class="bi bi-volume-up-fill" id="vol_icon"></i>
                <input type="range" min="0" max="100" id="vol">
                <div class="vol_bar"></div>
                <div class="dot" id="vol_dot"></div>
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
