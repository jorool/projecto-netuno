<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-BR">
<head>
	<meta http-equiv="Content-Type" content="text/html; utf-8" />
	<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'login.css')}"/>
</head>
<body>
	<div id='login'>
		<div>
			<div class='fheader'>
				<g:message code="springSecurity.login.header" />
			</div>

			<g:if test='${flash.message}'>
				<div class='login_message'>
					${flash.message}
				</div>
			</g:if>

			<form action='${postUrl}' method='POST' id='loginForm'
				class='cssform' autocomplete='off'>
				<p>
					<label for='username'><g:message code="springSecurity.login.username.label" />:</label> 
					<input type='text' class='required' name='j_username' id='username' />
				</p>

				<p>
					<label for='password'><g:message code="springSecurity.login.password.label" />:</label> 
					<input type='password' class='text_' name='j_password' id='password' />
				</p>

				<p id="remember_me_holder">
<%--					<label for='remember_me'><g:message code="springSecurity.login.remember.me.label" /></label>--%>
					<input type='checkbox' class='checkbox' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if> /> 
					<g:message code="springSecurity.login.remember.me.label" />
				</p>

				<p>
					<sol:button id="submit" ajax="true" controller="LoginController" action="auth">Login</sol:button>
				</p>
			</form>
		</div>
	</div>
	<script type='text/javascript'>	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	</script>
</body>
</html>
