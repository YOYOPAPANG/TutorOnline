<%-- 
    Document   : AddVideo
    Created on : Nov 15, 2020, 6:34:30 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutor Online</title>
    </head>
    <body>
        <form  action="Addvideo" method="POST" ">

            <div class="row pb-md-5" style="">
                <div class="col-12  border-right-md-1 pt-3 pb-2 pr-md-3">
                    <div class="form-group form-group-feedback form-group-feedback-right" >
                        <input type="text" name="Videoname" id="VideoName" class="form-control border-gray border" placeholder="Video name" value="" required=""  >
                    </div>

                    <div class="form-group form-group-feedback form-group-feedback-">
                        <input type="text" name="VideoURL" id="VideoURL" class="form-control border-gray border" placeholder="Video url" value="" required="">
                    </div>

                    <div class="form-group form-group-feedback form-group-feedback-">
                        <input type="text" name="Subject" id="Subjects_SubjectName" class="form-control border-gray border" placeholder="Subject name" value="" required="">
                    </div>
                    <div class="mx-auto">

                        <button type="submit" class="btn btn_grey_login py-1 btn-block" name ="addvideo" style="border-radius: 5rem;
                                font-size: 1.2rem;
                                padding: .1375rem .875rem;
                                color: #FFF;
                                background-color: #D4D4D4;
                                border: 1px solid #D4D4D4;">Submit</button>

                    </div>
                </div>
            </div>

        </form>

    </body>
</html>
