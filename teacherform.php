<?php require_once("header.php"); ?>

    <!-- MAIN SECTION -->
     <section class="mainContent full-width clearfix">
      <div class="container">
        <div class="row">
          	 <div class="col-xs-offset-1 col-xs-10">
             		<div class="panel panel-default formPanel">
                          <div class="panel-heading bg-color-1 border-color-1">
                            <h3 class="panel-title">Add teacher</h3>
                          </div>
                          <div class="panel-body">
                                <form action="addteacher.php" method="POST" role="form" enctype="multipart/form-data">
                                      <div class="form-group formField">
                                        <div class="col-xs-12">
                                           <label for="">ชื่อ</label>
                                           <input type="text" class="form-control" name="name_TH" placeholder="ชื่อ" required>
                                        </div>
                                      </div>
                                       <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">นามสกุล</label>
                                               <input type="text" class="form-control" name="surname_TH" placeholder="นามสกุล" required>
                                        </div>
                                      </div>
									   <div class="form-group formField">
                                        <div class="col-xs-12">
                                           <label for="">Name</label>
                                           <input type="text" class="form-control" name="name_ENG" placeholder="name" required>
                                        </div>
                                      </div>
                                       <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">Surname</label>
                                               <input type="text" class="form-control" name="surname_ENG" placeholder="surname" required>
                                        </div>
                                      </div>
                                      <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">ตำแหน่ง</label>
                                               <input type="text" class="form-control" name="position_TH" placeholder="ตำแหน่ง" required>
                                        </div>
                                      </div>
									   <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">Position</label>
                                               <input type="text" class="form-control" name="position_ENG" placeholder="position" required>
                                        </div>
                                      </div>
                                       <div class="form-group">
                                        <div class="col-xs-12">
                                              <label for="">สำเร็จการศึกษาจาก</label>
                                              <textarea class="form-control" name="graduate" rows="10"></textarea>
                                            </div>

                                        </div>
									 <div class="form-group">
                                        <div class="col-xs-12">
                                              <label for="">เชี่ยวชาญด้าน</label>
                                              <textarea class="form-control" name="specialist" rows="10"></textarea>
                                            </div>

                                        </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">E-mail</label>
                                               <input type="text" class="form-control" name="email" placeholder="E-mail" required>
                                        </div>
                                      </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">Phone number</label>
                                               <input type="text" class="form-control" name="phone" placeholder="Phone number" required>
                                        </div>
                                      </div>

                                         <div class="form-group">
                                        <div class="col-xs-12">
                                              <label for="">รูปภาพ</label>
                                              <input type="file" name="image" id="image" required>
                                            </div>

                                        </div>
										
                                      <div class="form-group formField">
                                            <div class="col-xs-12">
                                            	<label></label>
                                                <input type="submit" class="btn btn-primary btn-block bg-color-3 border-color-3" value="Submit">
                                            </div>
                                      </div>
                                </form>
             			 </div>
            		</div>
             </div>
        </div>
          
      </div>
    </section>
<?php require_once("footer.php"); ?>
    