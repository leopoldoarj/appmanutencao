<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"  %>
<%@ taglib  uri="http://java.sun.com/jsf/html" prefix="h" %>


<html>


<f:view>
	<body>
		<h:form>			
			<table>
					<tr>
						<td>
							<h:outputText value="Login"/>
						</td>
						<td>
							<h:inputText id="login" binding="#{cadastroBean.loginComponente}" required="true"/>
							<h:message for="login"/>
						</td>
					</tr>
					<tr>
						<td>
							<h:outputText value="Senha"/>
						</td>
						<td>
							<h:inputSecret id="senha" value="#{cadastroBean.senha}" required="true"/> 
							<h:message for="senha"/>							
						</td>
					</tr>			
					<tr>
						<td>
							<h:outputText value="E-mail" />
						</td>
						<td>
							<h:inputText id="mail"  value="#{cadastroBean.mail}" required="true"/> 
							<h:message for="mail"/>							
						</td>
					</tr>			
					
				<tr>
					<td>
						<h:commandButton action="#{cadastroBean.cadastraUsuarioAction}" value="Enviar Dados"/> 
					</td>
				</tr>			
			</table>
		
		</h:form>
		<h:form id="removeUsuario">		
			<h:dataTable var="usuario" value="#{cadastroBean.usuariosCadastrados}" border="1">
				<h:column>
					<f:facet name="header">
						<h:outputText value="Login"/>
					</f:facet>
					<h:outputText value="#{usuario.login}"></h:outputText>
	
				<f:facet name="footer">
						<h:outputText value="Login"/>
					</f:facet>
					
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="E-mail"/>
					</f:facet>
					<h:outputText value="#{usuario.mail}"></h:outputText>
					<f:facet name="footer">
						<h:outputText value="E-mail"/>
					</f:facet>
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Ação"/>
					</f:facet>
					<h:commandLink value="#{usuario.id}" actionListener="#{cadastroBean.removeUsuarioAction}">
						<h:outputText value="Excluir"></h:outputText>
					</h:commandLink>
					<f:facet name="footer">
						<h:outputText value="Ação"/>
					</f:facet>				
				</h:column>										
			</h:dataTable>
		</h:form>
	<body>
</f:view>
<html>
