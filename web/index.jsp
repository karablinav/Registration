<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <link rel="stylesheet" href="bootstrap-3.3.2-dist/css/bootstrap.min.css">
    <script src="bootstrap-3.3.2-dist/jquery-2.2.2.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.2-dist/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Регистрация</title>
</head>
<body>
<header>
    <div>
        <h2> Привет, гость!</h2>
        <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
            Зарегестрироваться
        </button>
    </div>
</header>

<form role="form" method="post" action="work" class="form-horizontal">
    <div class="form-group has-feedback">
        <label for="login" class="control-label col-xs-3">Логин:</label>
        <div class="col-xs-6">
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input class="form-control" name="login" pattern="[A-Za-z]{6,}" type="text">
            </div>
            <span class="glyphicon form-control-feedback"></span>
        </div>
    </div>

    <div class="form-group has-feedback">
        <label for="password" class="control-label col-xs-3">Пароль:</label>
        <div class="col-xs-6">
            <div class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-sunglasses"></i></span>
                <input class="form-control" name="password" type="password">
            </div>
            <span class="glyphicon form-control-feedback"></span>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Войти</button>
</form>



<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <form role="form" class="form-horizontal" method="post" action="main">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">Регистрация</h4>
                </div>
                <div class="modal-body">

                    <div class="form-group has-feedback">
                        <label for="login" class="control-label col-xs-3">Логин:</label>
                        <div class="col-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input class="form-control" required="required" name="login" type="text">
                            </div>
                            <span class="glyphicon form-control-feedback"></span>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="password" class="control-label col-xs-3">Пароль:</label>
                        <div class="col-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-sunglasses"></i></span>
                                <input class="form-control" required="required" name="password" type="password">
                            </div>
                            <span class="glyphicon form-control-feedback"></span>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="admin" class="control-label col-xs-3">Админка:</label>
                        <div class="col-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-ok"></i></span>
                                <input class="form-control" name="admin" type="checkbox">
                            </div>
                            <span class="glyphicon form-control-feedback"></span>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Отмена</button>
                    <button type="submit" class="btn btn-primary">Регистрация</button>
                </div>
            </div>
        </div>
    </form>
</div>


</body>
</html>