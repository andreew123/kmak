<main role="main" class="container">
    <h1 class="mt-2"><?php echo $params['gallery_name']; ?></h1>
    
    <div id="galleryController" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner mb-5">
            <?php foreach($params['files'] as $param) { ?>
                <div class="carousel-item">
                    <img class="d-block w-100 c-rounded" src="<?=$param->filepath; ?>">
                </div>
            <?php } ?>
        </div>
        <a class="carousel-control-prev" href="#galleryController" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#galleryController" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</main>