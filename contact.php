<?php require_once("header.php"); ?>

        <div class="medical-breadcrumb">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Contact us</h2>
                    </div>
                </div>
            </div>
        </div><!--breadcrumb-->
        <!--g map start-->
        <div id="map-canvas" style="width: 100%; height: 400px;"></div>
        <!--g map end-->
        <div class="divide70"></div>

        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="contact-form-col">
                        <h3>Keep in touch with us</h3>
                        <form action="mail/contact_me.php" name="sentMessage" id="contactForm" method="post" novalidate>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="row control-group">
                                        <div class="form-group col-xs-12 controls">                                        
                                            <input type="text" class="form-control" placeholder="Name" id="name" name="name"required data-validation-required-message="Please enter your name.">
                                            <p class="help-block"></p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="row control-group">
                                        <div class="form-group col-xs-12 controls">                                          
                                            <input type="email" class="form-control" placeholder="Email Address" id="email" name="email"required data-validation-required-message="Please enter your email address.">
                                            <p class="help-block"></p>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="row control-group">
                                <div class="form-group col-xs-12  controls">                                  
                                    <input type="tel" class="form-control" placeholder="Phone Number" id="phone" name="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            <div class="row control-group">
                                <div class="form-group col-xs-12 controls">                                  
                                    <textarea rows="5" class="form-control" placeholder="Message" id="message" name="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block"></p>
                                </div>
                            </div>

                            <div id="success"></div>
                            <div class="row">
                                <div class="form-group col-xs-12">
                                    <button type="submit" class="btn btn-theme-bg btn-lg">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div><!--form col end-->
                <div class="col-md-4">
                    <div class="contact-info">
                        <div class="media">
                            <div class="media-left">
                                <i class="pe-7s-home"></i>
                            </div>
                            <div class="media-body">
                                <p>124, Munna wali street, Jaipur, 302012</p>
                            </div>
                        </div><!--media-->
                         <div class="media">
                            <div class="media-left">
                                <i class="pe-7s-mail"></i>
                            </div>
                            <div class="media-body">
                                <p>support@assan-medical.com</p>
                            </div>
                        </div><!--media-->
                           <div class="media">
                            <div class="media-left">
                                <i class="pe-7s-call"></i>
                            </div>
                            <div class="media-body">
                                <p>+01 1800 3459 4543</p>
                            </div>
                        </div><!--media-->
                        <div class="divide30"></div>
                        <div class="socials-colored">
                            <a href="#" class="social-icon si-dark si-colored-facebook">
                                <i class="fa fa-facebook"></i>
                                <i class="fa fa-facebook"></i>
                            </a>
                            <a href="#" class="social-icon si-dark si-colored-twitter">
                                <i class="fa fa-twitter"></i>
                                <i class="fa fa-twitter"></i>
                            </a>
                            <a href="#" class="social-icon si-dark si-colored-google-plus">
                                <i class="fa fa-google-plus"></i>
                                <i class="fa fa-google-plus"></i>
                            </a>
                            <a href="#" class="social-icon si-dark si-colored-google-plus">
                                <i class="fa fa-youtube-play"></i>
                                <i class="fa fa-youtube-play"></i>
                            </a>
                            <a href="#" class="social-icon si-dark si-colored-linkedin">
                                <i class="fa fa-linkedin"></i>
                                <i class="fa fa-linkedin"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
                <!--cantact form script-->
        <script src="js/contact_me.js" type="text/javascript"></script>
        <script src="js/jqBootstrapValidation.js" type="text/javascript"></script>
        <script src="js/medical-custom.js" type="text/javascript"></script>
        <!--gmap js-->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=true"></script>
        <script type="text/javascript">
            var myLatlng;
            var map;
            var marker;

            function initialize() {
                myLatlng = new google.maps.LatLng(18.795638, 98.952815);
                //18.795638, 98.952815
                var mapOptions = {
                    zoom: 15,
                    center: myLatlng,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    scrollwheel: false,
                    draggable: false
                };
                map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

                var contentString = '<p style="line-height: 20px; margin-bottom:4px;"><strong style="font-size:20px;text-transform:uppercase;">Assan Medical</strong></p><p style=" margin-bottom:4px;">Vailshali, assan City, 302012</p>';

                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });

                marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: 'Marker'
                });

                google.maps.event.addListener(marker, 'click', function () {
                    infowindow.open(map, marker);
                });
            }

            google.maps.event.addDomListener(window, 'load', initialize);
        </script>

<?php require_once("footer.php"); ?>