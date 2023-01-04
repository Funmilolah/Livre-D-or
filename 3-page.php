<!DOCTYPE html>
<html>
  <head>
    <title>Livre d'or</title>
    <link rel="stylesheet" href="4-page.css"/>
  </head>
  <body>
<header
    <?php
    require "2-core.php";
    $pid = 1;

    // (A2) SAVE GUEST BOOK ENTRY
    if (isset($_POST["name"])) {
      if ($_GB->save($pid, $_POST['email'], $_POST['name'], $_POST['comment'])) {
      } else {
        echo "<div>$_GB->error</div>";
      }
    }

    // (A3) GET GUEST BOOK ENTRIES
    $entries = $_GB->get($pid);
    ?>
  <div class="corps">
    <!-- (B) GUEST BOOK ENTRIES -->
    <div id="gb-entries">
    <?php if (count($entries)>0) { foreach ($entries as $e) { ?>
    <div class="gb-row">
      <div class="gb-datetime"><?=$e['datetime']?></div>
      <div class="gb-name">
        <span class="gb-name-a"><?=$e['name']?></span>
        <span class="gb-name-b">signé:</span>
      </div>
      <div class="gb-comment"><?=$e['comment']?></div>
    </div>
    <?php }} ?></div>

    <!-- (C) ADD NEW ENTRY -->
    <form method="post" target="_self" id="gb-form">
      <div>
        <div class="box1">
      <label for="name">Nom:</label>
      <input type="text" name="name" required/>
    </div>
    <div class="box2">
      <label for="email">E-mail:</label>
      <input type="email" name="email" required/>
    </div>
    </div>
      <label for="comment">Commentaire:</label>
      <textarea name="comment" required></textarea>
      <input type="submit" value="VALIDER"/>
    </form>
    </div>
  </body>
</html>
