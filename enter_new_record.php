<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
<head>
    <meta charset="utf-8">
    <meta name=viewport content="width=device-width, initial-scale=1">
    <title>Snub Entry</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
<div id="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <header class="text-center mt-3">
                <h1>Grammy Snub Submission</h1>
                <a class="btn btn-primary mt-2 mb-3" href="snub_list.php" role="button">View Database</a>
            </header>

            <div id="snubs">
                <!-- this form is handled by the JavaScript file linked at bottom -->
                <form class="flex-row" id="snubform" method="post" action="" autocomplete="off">

                    <div class="my-3">
                        <label for="title">Album/Song Title</label>
                        <input type="text" name="title" id="title" maxlength="50" required>
                    </div>

                    <div class="mb-3">
                        <label for="type">Type</label>
                        <select name="type" id="type" required>
                            <option value=""></option>
                            <option value="Album">Album</option>
                            <option value="Song">Song</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="artist">Artist</label>
                        <input type="text" name="artist" id="artist" maxlength="50" required>
                    </div>

                    <div class="mb-3">
                        <label for="genre">Genre</label>
                        <select name="genre" id="genre" required>
                            <option value=""></option>
                            <option value="Alternative">Alternative</option>
                            <option value="Classical">Classical</option>
                            <option value="Country">Country</option>
                            <option value="Dance/Electronic">Dance/Electronic</option>
                            <option value="Jazz">Jazz</option>
                            <option value="Metal">Metal</option>
                            <option value="Pop">Pop</option>
                            <option value="R&B">R&B</option>
                            <option value="Rap">Rap</option>
                            <option value="Rock">Rock</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="notes" class="form-label">Why should this song/album be considered for a Grammy?</label>
                        <textarea class="form-control" id="notes" name="notes" rows="5"></textarea>
                    </div>

                    <input type="submit" id="submit" value="Submit">
                </form>
                <!-- close the form -->
            </div> <!-- close #socks -->
        </div>
    </div>


<!-- empty div -->
<div id="response"></div>

</div> <!-- close container -->

<script src="js/enter.js"></script>

</body>
</html>