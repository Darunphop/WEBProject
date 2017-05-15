<?php require_once("header.php"); ?>

    <!-- MAIN SECTION -->
     <section class="mainContent full-width clearfix">
      <div class="container">
        <div class="row">
          	 <div class="col-xs-offset-1 col-xs-10">
             		<div class="panel panel-default formPanel">
                          <div class="panel-heading bg-color-1 border-color-1">
                            <h3 class="panel-title">Add Student</h3>
                          </div>
                          <div class="panel-body">
                                <form action="addStudent.php" method="POST" role="form" enctype="multipart/form-data">
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
                                              <label for="">ชื่อเล่น</label>
                                               <input type="text" class="form-control" name="nick_name" placeholder="ชื่อเล่น" required>
                                        </div>
                                      </div>
                                      <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">รหัสนักศึกษา</label>
                                               <input type="text" class="form-control" name="student_ID" placeholder="รหัสนักศึกษา" required>
                                        </div>
                                      </div>
									   <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">ช่องทางการเข้าศึกษา</label>
                                               <input type="text" class="form-control" name="entrance" placeholder="entrance" required>
                                        </div>
                                      </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">รุ่นที่</label></br>
                                               <input type="radio" name="cpe_group" value="22" required> 22&nbsp;&nbsp;<input type="radio" name="cpe_group" value="23" required> 23&nbsp;&nbsp;<input type="radio" name="cpe_group" value="24" required> 24&nbsp;&nbsp;<input type="radio" name="cpe_group" value="25" required> 25&nbsp;&nbsp;
                                        </div>
                                      </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">Email</label>
                                               <input type="text" class="form-control" name="email" placeholder="email" required>
                                        </div>
                                      </div>
										<div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">อาจารย์ที่ปรึกษา</label>
                                               <input type="text" class="form-control" name="advisor" placeholder="advisor" required>
                                        </div>
                                      </div>
									  <div class="form-group formField">
                                        <div class="col-xs-12">
                                              <label for="">จบการศึกษา</label>
                                               <input type="text" class="form-control" name="garduate" placeholder="garduate" required>
                                        </div>
                                      </div>
                                         <div class="form-group">
                                        <div class="col-xs-12">
                                              <label for="">รูปภาพ</label>
                                              <input type="file" name="img" id="img" required>
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
    