<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$conn = new mysqli("localhost","root","","data_iote_teacher");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function safeAttr($text){
    return htmlspecialchars(trim($text ?? ""), ENT_QUOTES);
}

$teacher_result = $conn->query("SELECT * FROM teacher WHERE role='teacher' ORDER BY ID ASC");
$staff_result   = $conn->query("SELECT * FROM teacher WHERE role='staff' ORDER BY ID ASC");
?>
<!DOCTYPE html>
<html lang="th">
<head>
<meta charset="UTF-8">
<title>IOTE Faculty</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
*{margin:0;padding:0;box-sizing:border-box;font-family:'Segoe UI',sans-serif;}

body{
    background:url('/IOT_WEB/pic/BG12B.jpg') center/cover fixed no-repeat;
}
body::before{
    content:"";
    position:fixed;
    top:0;left:0;width:100%;height:100%;
    background:rgba(255,255,255,0.9);
    z-index:-1;
}

.header{background:#2b5797;color:white;}
.header-top{
    width:90%;margin:auto;
    display:flex;align-items:center;
    padding:25px 0;
}
.logo-area{display:flex;align-items:center;gap:20px;}
.logo-area img{height:70px;}
.title-area h1{font-size:20px;}
.title-area p{font-size:14px;color:#ffb366;}

.navbar{background:#c6d9ef;}
.nav-container{
    width:90%;margin:auto;
    display:flex;justify-content:center;
    gap:40px;padding:15px 0;
}
.nav-container a{
    text-decoration:none;
    color:#1e3a8a;font-weight:600;
}

.section-title{
    text-align:center;
    font-size:26px;
    margin:60px 0 30px;
    font-weight:bold;
}

.grid{
    width:90%;
    margin:auto;
    display:flex;
    justify-content:center;
    flex-wrap:wrap;
    gap:40px;
}

.card{
    background:white;
    border-radius:25px;
    padding:25px;
    text-align:center;
    box-shadow:0 15px 35px rgba(0,0,0,0.15);
    width:300px;
    height:480px;
    display:flex;
    flex-direction:column;
    cursor:pointer;
}

.card img{
    width:100%;
    height:300px;
    object-fit:cover;
    border-radius:20px;
    margin-bottom:15px;
}

.card h3{font-size:16px;margin-bottom:5px;}
.card p{font-size:14px;color:#666;}
.card span{
    margin-top:auto;
    color:#1e3a8a;
    font-weight:bold;
}

.modal{
    display:none;
    position:fixed;
    top:0;left:0;
    width:100%;height:100%;
    background:rgba(0,0,0,0.5);
    justify-content:center;
    align-items:center;
    z-index:999;
}
.modal-content{
    background:#f5f5f5;
    width:900px;
    max-width:95%;
    border-radius:20px;
    padding:40px;
    display:flex;
    gap:40px;
    position:relative;
}
.modal img{width:300px;border-radius:15px;}
.modal-close{
    position:absolute;
    top:15px;right:20px;
    cursor:pointer;
    background:#1e3a8a;
    color:white;
    padding:5px 12px;
    border-radius:6px;
}

#modalEducation, #modalExpertise{
    line-height:1.6;
}
</style>
</head>

<body>

<header class="header">
    <div class="header-top">
        <div class="logo-area">
            <img src="/IOT_WEB/pic/LOGO.png">
            <div class="title-area">
                <h1>DEPARTMENT OF IOT AND INFORMATION ENGINEERING</h1>
                <p>King Mongkut's Institute of Technology Ladkrabang</p>
            </div>
        </div>
    </div>
    <nav class="navbar">
        <div class="nav-container">
            <a href="#">HOME</a>
            <a href="#">ABOUT IOTE</a>
            <a href="#">ACADEMICS</a>
            <a href="#">ADMISSION</a>
            <a href="#">FACULTY</a>
        </div>
    </nav>
</header>

<h2 class="section-title">คณาจารย์</h2>
<div class="grid">
<?php while($row = $teacher_result->fetch_assoc()) { ?>
<div class="card"
onclick="openModal(this)"
data-id="<?= $row['ID']; ?>"
data-thai="<?= safeAttr($row['title_thai'].' '.$row['name_thai'].' '.$row['surname_thai']); ?>"
data-eng="<?= safeAttr($row['title_eng'].' '.$row['name_eng'].' '.$row['surname_eng']); ?>"
data-position="<?= safeAttr($row['Position']); ?>"
data-email="<?= safeAttr($row['email']); ?>"
data-education="<?= nl2br(safeAttr($row['Education'])); ?>"
data-expertise="<?= nl2br(safeAttr($row['Expertise'])); ?>"
data-department="<?= safeAttr($row['Department']); ?>"
>
<img src="/IOT_WEB/pic/t_iotpic/<?= $row['ID']; ?>.png">
<h3><?= $row['title_thai']." ".$row['name_thai']." ".$row['surname_thai']; ?></h3>
<p><?= $row['title_eng']." ".$row['name_eng']." ".$row['surname_eng']; ?></p>
<span><?= $row['Position']; ?></span>
</div>
<?php } ?>
</div>

<h2 class="section-title">บุคลากร</h2>
<div class="grid">
<?php while($row = $staff_result->fetch_assoc()) { ?>
<div class="card"
onclick="openModal(this)"
data-id="<?= $row['ID']; ?>"
data-thai="<?= safeAttr($row['title_thai'].' '.$row['name_thai'].' '.$row['surname_thai']); ?>"
data-eng="<?= safeAttr($row['title_eng'].' '.$row['name_eng'].' '.$row['surname_eng']); ?>"
data-position="<?= safeAttr($row['Position']); ?>"
data-email="<?= safeAttr($row['email']); ?>"
data-education="<?= nl2br(safeAttr($row['Education'])); ?>"
data-expertise="<?= nl2br(safeAttr($row['Expertise'])); ?>"
data-department="<?= safeAttr($row['Department']); ?>"
>
<img src="/IOT_WEB/pic/t_iotpic/<?= $row['ID']; ?>.png">
<h3><?= $row['title_thai']." ".$row['name_thai']." ".$row['surname_thai']; ?></h3>
<p><?= $row['title_eng']." ".$row['name_eng']." ".$row['surname_eng']; ?></p>
<span><?= $row['Position']; ?></span>
</div>
<?php } ?>
</div>

<div class="modal" id="profileModal">
<div class="modal-content">
<div class="modal-close" onclick="closeModal()">✕</div>
<img id="modalImg">
<div style="flex:1">
<h2 id="modalThai"></h2>
<h3 id="modalEng"></h3>
<p><strong>ตำแหน่ง:</strong> <span id="modalPosition"></span></p>
<p><strong>Email:</strong> <span id="modalEmail"></span></p>
<p><strong>การศึกษา:</strong></p>
<div id="modalEducation"></div>
<p><strong>ความเชี่ยวชาญ:</strong></p>
<div id="modalExpertise"></div>
<p><strong>Department of:</strong> <span id="modalDepartment"></span></p>
</div>
</div>
</div>

<script>
function openModal(card){
document.getElementById("modalThai").innerText = card.dataset.thai;
document.getElementById("modalEng").innerText = card.dataset.eng;
document.getElementById("modalPosition").innerText = card.dataset.position;
document.getElementById("modalEmail").innerText = card.dataset.email;
document.getElementById("modalEducation").innerHTML = card.dataset.education;
document.getElementById("modalExpertise").innerHTML = card.dataset.expertise;
document.getElementById("modalDepartment").innerText = card.dataset.department;
document.getElementById("modalImg").src =
"/IOT_WEB/pic/t_iotpic/" + card.dataset.id + ".png";
document.getElementById("profileModal").style.display="flex";
}
function closeModal(){
document.getElementById("profileModal").style.display="none";
}
window.onclick = function(e){
if(e.target.id==="profileModal"){closeModal();}
}
</script>

</body>
</html>