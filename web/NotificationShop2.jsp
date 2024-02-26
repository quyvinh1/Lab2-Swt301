<%-- 
    Document   : NotificationShop2
    Created on : Jan 27, 2024, 9:49:15 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">


        <title>Notification</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
            body{
                margin-top:20px;
                background-color: #f0f2f5;
            }
            .dropdown-list-image {
                position: relative;
                height: 2.5rem;
                width: 2.5rem;
            }
            .dropdown-list-image img {
                height: 2.5rem;
                width: 2.5rem;
            }
            .btn-light {
                color: #2cdd9b;
                background-color: #e5f7f0;
                border-color: #d8f7eb;
            }
        </style>
    </head>
    <body>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
        <div class="container">
            <div class="row">
                <div class="col-lg-3 left">
                    <div class="box shadow-sm mb-3 rounded bg-white ads-box text-center">
                        <img src="${avatar}" class="img-fluid" alt="Responsive image" />
                        <div class="p-3 border-bottom">
                            <h6 class="font-weight-bold text-dark">Notifications</h6>
                            <c:if test="${countNotiToday==0}">
                                <p  class="mb-0 text-muted">You’re all caught up! Check back later for new notifications.</p>
                            </c:if>
                            <c:if test="${countNotiToday!=0}">
                                <p  class="mb-0 text-muted">Today, you have ${countNotiToday} new notifications unread.</p>
                            </c:if>

                        </div>
                        <div class="p-3">
                            <form action="notiShop">
                                <button type="submit" class="btn btn-outline-success btn-sm pl-4 pr-4">View post advertisement and events</button>
                            </form>                          
                        </div>
                        <div class="p-3">
                            <form action="notiShop1">
                                <button type="submit" class="btn btn-outline-success btn-sm pl-4 pr-4">View post notifications</button>
                            </form>                          
                        </div>
                        <div class="p-3">
                            <form action="notiShop2">
                                <button type="submit" class="btn btn-outline-success btn-sm pl-4 pr-4">View new notifications</button>
                            </form>                         
                        </div>
                        <div class="p-3">
                            <form action="unreadNotiShop">
                                <button type="submit" class="btn btn-outline-success btn-sm pl-4 pr-4">View unread notifications</button>
                            </form>                         
                        </div>
                    </div>

                </div>
                <div class="col-lg-9 right">

                    <div class="box shadow-sm rounded bg-white mb-3">
                        <div class="box-title border-bottom p-3">
                            <h6 class="m-0">Today</h6>
                        </div>
                        <c:forEach items="${listNotiToday}" var="a">
                            <div class="box-body p-0">
                                <div class="p-3 d-flex align-items-center bg-light border-bottom osahan-post-header">
                                    <div class="dropdown-list-image mr-3">
                                        <img style="width: 50px; height: 50px" class="rounded-circle" src="https://png.pngtree.com/png-vector/20190223/ourlarge/pngtree-admin-rolls-glyph-black-icon-png-image_691507.jpg" alt />
                                    </div>
                                    <div class="font-weight-bold mr-3">
                                        <div class="text-truncate">
                                            THÔNG BÁO
                                        </div>
                                        <div class="text-truncate">
                                            Đơn hàng mã số: ${a.maHD} 
                                        </div>
                                        <div class="small">${a.contentNoti}</div>
                                        <a href="viewNoti2?id=${a.maNoti}">
                                            <img style="width: 150px" src="${a.image}" alt /> 
                                        </a>

                                    </div>
                                    <span class="ml-auto mb-auto">

                                        <c:forEach items="${listDateNoti}" var="d">
                                            <c:if test="${d.maNoti==a.maNoti}">
                                                <c:if test="${d.date==0}">
                                                    <div class="text-right text-muted pt-1">Today</div>
                                                </c:if>
                                                <c:if test="${d.date!=0}">
                                                    <div class="text-right text-muted pt-1">${d.date}d</div>
                                                </c:if>

                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${a.trangthai==0}">
                                            <div class="text-right text-muted pt-1">Chưa xem</div>
                                        </c:if>
                                            <c:if test="${a.trangthai==1}">
                                            <div class="text-right text-muted pt-1">Chưa xem</div>
                                        </c:if>
                                        <c:if test="${a.trangthai==2}">
                                            <div class="text-right text-muted pt-1">Đã xem</div>
                                        </c:if>
                                            <c:if test="${a.trangthai==3}">
                                            <div class="text-right text-muted pt-1">Đã xem</div>
                                        </c:if> 


                                    </span>
                                </div>

                            </div>
                        </c:forEach>

                    </div>
                    <div class="box shadow-sm rounded bg-white mb-3">
                        <div class="box-title border-bottom p-3">
                            <h6 class="m-0">Earlier</h6>
                        </div>
                        <c:forEach items="${listAllNoti}" var="a">
                            <div class="box-body p-0">
                                <div class="p-3 d-flex align-items-center bg-light border-bottom osahan-post-header">
                                    <div class="dropdown-list-image mr-3">
                                        <img style="width: 50px; height: 50px" class="rounded-circle" src="https://png.pngtree.com/png-vector/20190223/ourlarge/pngtree-admin-rolls-glyph-black-icon-png-image_691507.jpg" alt />
                                    </div>
                                    <div class="font-weight-bold mr-3">
                                        <div class="text-truncate">
                                            THÔNG BÁO
                                        </div>
                                        <div class="text-truncate">
                                            Đơn hàng mã số: ${a.maHD} 
                                        </div>
                                        <div class="small">${a.contentNoti}</div>
                                        <a href="viewNoti2?id=${a.maNoti}">
                                            <img style="width: 150px" src="${a.image}" alt /> 
                                        </a>

                                    </div>
                                    <span class="ml-auto mb-auto">

                                        <c:forEach items="${listDateNoti}" var="d">
                                            <c:if test="${d.maNoti==a.maNoti}">
                                                <c:if test="${d.date==0}">
                                                    <div class="text-right text-muted pt-1">Today</div>
                                                </c:if>
                                                <c:if test="${d.date!=0}">
                                                    <div class="text-right text-muted pt-1">${d.date}d</div>
                                                </c:if>

                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${a.trangthai==0}">
                                            <div class="text-right text-muted pt-1">Chưa xem</div>
                                        </c:if>
                                            <c:if test="${a.trangthai==1}">
                                            <div class="text-right text-muted pt-1">Chưa xem</div>
                                        </c:if>
                                        <c:if test="${a.trangthai==2}">
                                            <div class="text-right text-muted pt-1">Đã xem</div>
                                        </c:if>
                                            <c:if test="${a.trangthai==3}">
                                            <div class="text-right text-muted pt-1">Đã xem</div>
                                        </c:if> 


                                    </span>
                                </div>

                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript">

        </script>
    </body>
</html>

