<%-- 
    Document   : login
    Created on : Feb 17, 2017, 4:38:36 PM
    Author     : EJAZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>

    
<div class="col_1_of_login span_1_of_login" >
				  <div class="login-title">
	           		<h4 class="title">Registered Customers</h4>
					 <div class="comments-area">
						<form action="validate_users.jsp">
							<p>
								<label>Name</label>
								<span>*</span>
								<input type="text" name="username" value="">
							</p>
							<p>
								<label>Password</label>
								<span>*</span>
								<input type="password" name="password" value="">
							</p>
							 <p id="login-form-remember">
								<label><a href="#">New User ? </a></label>
							 </p>
							 <p>
								<input type="submit" value="Login">
							</p>
						</form>
					</div>
			      </div>
				</div>

    </body>
</html>
