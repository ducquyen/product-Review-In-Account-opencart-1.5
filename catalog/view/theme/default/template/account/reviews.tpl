<?php echo $header; ?>

<?php if ($success) { ?>
    <div class="success"><?php echo $success; ?></div>
<?php } ?>

<?php echo $column_left; ?>
<?php echo $column_right; ?>

<style>
    .review-list{
        float: left;
        width: 90%;
        border: none;
    }
    .review-list > ul {
        margin: 0;
        padding: 0;
    }

    .review-list > ul > li {
        list-style: none;
        float: left;
        margin: 0 0 10px;
        padding: 0;
        clear: both;
    }

    .review-list > ul > li div {
        clear: both;
        float: left;
        width: 100%;
    }

    .review-list > ul > li .review a {
        float: left;
        display: inline-block;
        vertical-align: bottom;
    }

    .review-list > ul > li .review a + a {
        line-height: 47px;
        margin-left: 10px;
        text-decoration: none;
    }
</style>

<div id="content"><?php echo $content_top; ?>

    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?>
            <a href="<?php echo $breadcrumb['href']; ?>">
                <?php echo $breadcrumb['text']; ?>
            </a>
        <?php } ?>
    </div>

    <h1><?php echo $heading_title; ?></h1>
    <div class="content">
        <div class="review-list">
            <?php if ($reviews) { ?>
                <ul>
                    <?php foreach ($reviews as $review)  { ?>
                        <li>
                            <div class="review">
                                <div>
                                    <a href="<?php echo $review['href'] ?>">
                                        <img src="<?php echo $review['image'] ?>"  alt="<?php echo $review['name'] ?>"/>
                                    </a>

                                    <a href="<?php echo $review['href'] ?>">
                                        <?php echo $review['name'] ?>
                                    </a>
                                    <div><span class="date"><?php echo $review['date_added']; ?></span></div>
                                </div>

                                <div>
                                    <div class="rating">
                                        <img src="catalog/view/theme/default/image/stars-<?php echo $review['rating']; ?>.png" alt="<?php echo $review['name']; ?>" />
                                    </div>

                                    <div>
                                        <?php echo $review['text'] ?>
                                    </div>
                                </div>
                            </div>
                        </li>
                    <?php } ?>
                </ul>
            <?php } ?>
        </div>
    </div>

<?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 