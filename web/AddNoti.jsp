<%-- 
    Document   : AddNoti
    Created on : Jan 26, 2024, 9:40:56 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: 'Arial', sans-serif;
                background-color: #f4f4f4;
            }

            /* Style the modal */
            .modal {
                background-color: #fff;
                border-radius: 8px;
            }

            /* Style the modal content */
            .modal-content {
                border: none;
            }

            /* Style the modal header */
            .modal-header {
                background-color: #007bff;
                color: #fff;
                padding: 15px;
                border-bottom: none;
            }

            /* Style the modal body */
            .modal-body {
                padding: 20px;
            }

            /* Style the form labels */
            .control-label {
                font-weight: bold;
            }

            /* Style the form inputs and selects */
            .form-control {
                width: 100%;
                padding: 8px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            /* Style the save and cancel buttons */
            .btn-save {
                background-color: #28a745;
                color: #fff;
                border: none;
                padding: 10px 20px;
                border-radius: 4px;
                cursor: pointer;
            }

            .btn-cancel {
                background-color: #ea0000;
                color: #fff;
                border: none;
                padding: 10px 20px;
                border-radius: 4px;
                cursor: pointer;
            }

            /* Style the link for advanced editing */
            a {
                text-decoration: none;
                color: #007bff;
            }

            a:hover {
                text-decoration: underline;
                color: #0056b3;
            }
        </style>
        
    </head>
    
    <body>
        <form action="addNoti" method="post">
        
            <div class="modal fade" id="ModalUP" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
                 data-keyboard="false">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        

                        <div class="modal-body">
                            <div class="row">
                                <div class="form-group  col-md-12">
                                    <span class="thong-tin-thanh-toan">
                                        <h5>Add notifications</h5>
                                    </span>
                                </div>
                            </div>
                            <div class="row">
                                
                                <div class="form-group col-md-6">
                                    <label class="control-label">Image</label>
                                    <input class="form-control" type="text" name="image" required >
                                </div>
                                <div class="form-group  col-md-6">
                                    <label class="control-label">Content</label>
                                    <input class="form-control" type="text" name="content" required >
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="exampleSelect1" class="control-label">Category</label>
                                    <select class="form-control" name="cate" id="exampleSelect1">
                                        
                                        <option value="1">Quảng cáo</option>
                                        <option value="2">Events</option>
                                    
                                    </select>
                                </div>
                                
                                
                            </div>
                            <BR>

                            <BR>
                            <BR>
                            <button class="btn btn-save" type="submit">Add</button>
                            
                            <a class="btn btn-cancel" data-dismiss="modal" href="notiShop">Thoát</a>
                            <BR>
                        </div>
                        <div class="modal-footer">
                        </div>
                    </div>
                </div>
            </div>
        
        </form>
    </body>
</html>
