<%-- 
    Document   : login
    Created on : Oct 21, 2017, 5:25:56 PM
    Author     : BomBamPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>แก้ไขข้อมูลสมาชิก</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/Bootstrap/css/bootstrap_paper.min.css">
        <script src="<%=request.getContextPath()%>/Bootstrap/js/jquery-3.2.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/Bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="row">
            <div class="container">
                <%@include  file="Layout/header.jsp" %>
                <!--<h1>Hello World!</h1>-->
                <fieldset class="col-md-8 col-md-offset-2">
                    <form name="formReGister" action="saveUserByUser" method="post" id="formReGister">
                        <s:hidden name="userModel.id"/>
                        <div class="form-group">
                            <div class="panel panel-success">
                                <div class="panel panel-heading">
                                    <h3 class="panel-title">:: แก้ไขข้อมูล ::</h3>
                                </div>
                                <div class="panel-body">

                                    <div class=" form-group col-md-12">
                                        <label class="col-md-4 control-label">ชื่อ : <span class="require" style="color:red;">*</span></label>
                                        <div class="col-md-8">
                                            <input type="text" id="cus_fname" value="${userModel.cus_fname}" name="userModel.cus_fname" placeholder="กรุณากรอกชื่อ" required="" class="form-control"/>
                                        </div>                                 
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-4 control-label">นามสกุล : <span class="require" style="color:red;">*</span></label>
                                        <div class="col-md-8">
                                            <input type="text" id="cus_lname" value="${userModel.cus_lname}" name="userModel.cus_lname" placeholder="กรุณากรอกนามสกุล" required="" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-4 control-label">เบอร์โทรศัพท์ : <span class="require" style="color:red;">*</span></label>
                                        <div class="col-md-8">
                                            <input type="text" id="cus_phone" value="${userModel.cus_phone}" name="userModel.cus_phone" placeholder="กรุณากรอกเบอร์โทร" required="" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-4 control-label">Email : <span class="require" style="color:red;">*</span></label>
                                        <div class="col-md-8">
                                            <input type="text" id="cus_email" value="${userModel.cus_email}" name="userModel.cus_email" class="form-control" required="" placeholder="กรุณากรอกEmail"/>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">:: แก้ไขข้อมูลเข้าสู่ระบบ ::</h3>
                                    </div>
                                    <div class="panel-body">

                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label">ชื่อผู้เข้าใช้ระบบ : <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8">
                                                <input type="text" id="username" value="${userModel.username}" name="userModel.username" placeholder="กรุณากรอกชื่อผู้เข้าใช้ระบบ" required="" class="form-control"/>
                                            </div>
                                        </div>

                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label">รหัสผ่านผู้เข้าใช้ : <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8">
                                                <input type="password" id="password" value="${userModel.password}" name="userModel.password" placeholder="กรุณากรอกรหัสผ่านผู้เข้าใช้" required="" class="form-control"/>
                                            </div>
                                        </div> 
                                            <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label">ระดับผู้เข้าใช้ : <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8">
                                                <input type="text" id="password" value="${userModel.role}" name="userModel.role" placeholder="กรุณากรอกรหัสผ่านผู้เข้าใช้" required="" class="form-control"/>
                                            </div>
                                        </div> 
                                            <div align="center">
                                                <input type="submit" value="ยืนยัน" class="btn btn-success"/>
                                                <a href="ListUser.action" class="btn btn-danger">ยกเลิก</a>
                                    </div>

                                   
                                </div>
                            </div>
                        </div>
                    </form>
                </fieldset>

                <br><br>
                <%@include  file="Layout/footer.jsp" %>
            </div>
        </div>
    </body>
</html>
