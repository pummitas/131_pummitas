<%-- 
    Document   : login
    Created on : Oct 21, 2017, 5:25:56 PM
    Author     : BomBamPC
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>บันทึกรายการภาพยนตร์</title>
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
                    <form name="formMovie" action="saveMovie" method="post" id="formMovie" enctype="multipart/form-data">
                        <div class="form-group">
                            <div class="panel panel-success">
                                <div class="panel panel-heading">
                                    <h3 class="panel-title">:: ฟอร์มบันทึกรายการภาพยนตร์ ::</h3>
                                </div>
                                <div class="panel-body">


                                    <div class="control-group" align="center">
                                        <label class="control-label">อัปโหลดรูปภาพ</label>
                                        <div class="controls">
                                            <s:file id="fileUpload" name="fileUpload" label="Select a File to upload" size="40" />
                                        </div>
                                    </div>
                                    <br>
                                    <br>

                                    <div class=" form-group col-md-12">
                                        <label class="col-md-4 control-label">ชื่อภาพยนตร์ : <span class="require" style="color:red;">*</span></label>
                                        <div class="col-md-8">
                                            <input type="text" id="mv_name" name="movieModel.mv_name" placeholder="กรุณากรอกชื่อภาพยนตร์" required="" class="form-control"/>
                                        </div>                                 
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-4 control-label">ประเภทของภาพยนตร์ : <span class="require" style="color:red;">*</span></label>
                                        <div class="col-md-8">
                                            <input type="text" id="mv_category" name="movieModel.mv_category" placeholder="กรุณากรอกประเภทของภาพยนตร์" required="" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-4 control-label">ระยะเวลาความยาวของภาพยนตร์ : <span class="require" style="color:red;">*</span></label>
                                        <div class="col-md-8">
                                            <input type="text" id="mv_length" name="movieModel.mv_length" placeholder="กรุณากรอกระยะเวลาความยาวของภาพยนตร์" required="" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="col-md-4 control-label">รอบฉายภาพยนตร์ : <span class="require" style="color:red;">*</span></label>
                                        <div class="col-md-8">
                                            <input type="text" name="movieModel.mv_screen" id="mv_screen" class="form-control" required="" placeholder="กรุณากรอกรอบฉายภาพยนตร์"/>
                                        </div>
                                    </div>
                                     <div class="form-group col-md-12">
                                        <label class="col-md-4 control-label">โรงฉายที่ : <span class="require" style="color:red;">*</span></label>
                                        <div class="col-md-8">
                                            <input type="text" name="movieModel.seat_Id" id="mv_screen" class="form-control" required="" placeholder="กรุณากรอกโรงฉายที่"/>
                                        </div>
                                    </div>
                                </div>

                                <div align="center">
                                    <input type="submit" value="ยืนยัน" class="btn btn-success"/>
                                    <input type="reset" value="ยกเลิก" class="btn btn-warning"/>
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

