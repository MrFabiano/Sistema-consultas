<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/paginas/template/cabecalho.jsp"></c:import>


<div class="container-fluid" style="background:#EEF0F1; height:86%;">

	<div class="row">
		<div class="col-lg-12 abas">
			<ul class="nav nav-tabs">
		
				<li class="active"><a data-toggle="tab" href="#janeiro">Janeiro</a></li>
				<li><a data-toggle="tab" href="#fevereiro">Fevereiro</a></li>
				<li><a data-toggle="tab" href="#marco">Março</a></li>
				<li><a data-toggle="tab" href="#abril">Abril</a></li>
				<li><a data-toggle="tab" href="#maio">Maio</a></li>
				<li><a data-toggle="tab" href="#junho">Junho</a></li>
				<li><a data-toggle="tab" href="#julho">Julho</a></li>
				<li><a data-toggle="tab" href="#agosto">Agosto</a></li>
				<li><a data-toggle="tab" href="#setembro">Setembro</a></li>
				<li><a data-toggle="tab" href="#outubro">Outubro</a></li>
				<li><a data-toggle="tab" href="#novembro">Novembro</a></li> 
				<li><a data-toggle="tab" href="#dezembro">Dezembro</a></li> 
			</ul>

<div class="tab-content" >
 
		 <div id="janeiro" class="tab-pane fade in active" >
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container" >
									<div class="col-md-6 col-md-offset-3" >
										<h3 class="text-left" style="width: 100%; font-weight: 700;" >Relatório Raio-X
											</h3>
								    </div>
					      
				                </div>
		                    </div>
		               </c:when>
				  <c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3" >
									<h3 class="text-center" style="width: 100%; font-weight: 700;"> Raio-X </h3>
							   </div>
						   </div>
		           </c:otherwise>
		           </c:choose>
					
	 	     <div class="table-responsive" align="right" >
	 	      
				     <table class="panel-heading tabela" align="right">
				     <c:if    
			              test="${not iframeJaneiro.equals('') && not empty iframeJaneiro }">
						    <iframe width='45%  margin: 0;' height='460px;' align='right' seamless frameborder='0'
						       scrolling='no'  marginheight="0" marginwidth="0" src='${iframeJaneiro }'> </iframe>
					</c:if>
					
				   </table> 
	                    <br/>
	                    <br/>
			          <table class="table-bordered table"  style="width: 55%;   style="color:black;" >
							<thead>
								<tr style="background:#025a94;color:white"   align="center">
								   <td>Programa</td>
	       						   <td>Esfera Governamental</td>
								   <td>N°Familia Beneficiadas</td>
								   <td>Valor Total Repassado</td>
								   <td>Valor Médio Benefício</td>
							   </tr>
		                   
							</thead>
					        <tbody>
				            	<c:forEach items="${anoJaneiro.subList(0,5) }" var="ano">
							   <tr class="resumo" align="center">
				            
				            	  <c:forEach items="${ano.getInformacoesTabela1() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }">
											<td style="color:black">${info.descricao }</td>
											</c:when></c:choose>
								</c:forEach>
								</tr>
							  </c:forEach>
							</tbody>
						   <thead>
								<tr style="background:#025a94;color:white" align="center"  >
	       						   <td>Numero de Domicilios no CADÚnico</td>
							  </tr>
							</thead>
					           <tbody>
								<c:forEach items="${anoJaneiro.subList(5,6) }"  var="ano">
								   <tr class="resumo" align="center" style="background:#025a94;color:white">
								  
				                <c:forEach items="${ano.getInformacoesTabela4() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }" >
				            	   
										<td style="color:white">${info.descricao }</td> 
											</c:when></c:choose>
										 
								</c:forEach>
								    
							    </c:forEach>
							    
							    	<c:forEach items="${anoJaneiro.subList(6,7) }"  var="ano">
								   <tr class="resumo" align="center">
								  
				                <c:forEach items="${ano.getInformacoesTabela5() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }" >
				            	   
										<td style="color:black">${info.descricao }</td> 
											</c:when></c:choose>
										 
								</c:forEach>
								    
							    </c:forEach>
							    
							</tbody>
		                    </div>
						 </table>
					
				 <div class="table-responsive" style="margin-left: 20px; margin-right: 20px;" >
					<table class="panel-heading tabela" style="margin: 0;">
						<tbody>
							<table border="0" style="width: 100%; font: 700;">
							
                              <tr><td>FONTE: Folhas de pagamento dos PTRs</td></tr>
                              <tr><td>Elaboração: SMADS/CGB</td></tr>
                              <tr><td>*Os valores transferidos pelo PETI estão dentro da folha de pagamento do PBF.</td></tr>
                               </table>
							  </tbody>
							</table>
						</div>
		               </div>
	   		       </div>
	   	   
			
			 
		 <div id="fevereiro" class="tab-pane fade" >
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container" >
									<div class="col-md-6 col-md-offset-3" >
										<h3 class="text-left" style="width: 100%; font-weight: 700;" >Relatório Raio-X
											</h3>
								    </div>
					      
				                </div>
		                    </div>
		               </c:when>
				  <c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3" >
									<h3 class="text-center" style="width: 100%; font-weight: 700;"> Raio-X </h3>
							   </div>
						   </div>
		           </c:otherwise>
		           </c:choose>
					
	 	     <div class="table-responsive" align="right" >
	 	      
				     <table class="panel-heading tabela" align="right">
				     <c:if    
			              test="${not iframeFevereiro.equals('') && not empty iframeFevereiro }">
						    <iframe width='45%  margin: 0;' height='460px;' align='right' seamless frameborder='0'
						       scrolling='no'  marginheight="0" marginwidth="0" src='${iframeFevereiro }'> </iframe>
					</c:if>
					
				   </table> 
	                    <br/>
	                    <br/>
			          <table class="table-bordered table"  style="width: 55%;   style="color:black;" >
							<thead>
								<tr style="background:#025a94;color:white"   align="center">
								   <td>Programa</td>
	       						   <td>Esfera Governamental</td>
								   <td>N°Familia Beneficiadas</td>
								   <td>Valor Total Repassado</td>
								   <td>Valor Médio Benefício</td>
							   </tr>
		                   
							</thead>
					        <tbody>
				            	<c:forEach items="${anoFevereiro.subList(0,5) }" var="ano">
							   <tr class="resumo" align="center">
				            
				            	  <c:forEach items="${ano.getInformacoesTabela1() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }">
											<td style="color:black">${info.descricao }</td>
											</c:when></c:choose>
								</c:forEach>
								</tr>
							  </c:forEach>
							</tbody>
						   <thead>
								<tr style="background:#025a94;color:white" align="center"  >
	       						   <td>Numero de Domicilios no CADÚnico</td>
							  </tr>
							</thead>
					           <tbody>
								<c:forEach items="${anoFevereiro.subList(5,6) }"  var="ano">
								   <tr class="resumo" align="center" style="background:#025a94;color:white">
								  
				                <c:forEach items="${ano.getInformacoesTabela4() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }" >
				            	   
										<td style="color:white">${info.descricao }</td> 
											</c:when></c:choose>
										 
								</c:forEach>
								    
							    </c:forEach>
							    
							    	<c:forEach items="${anoFevereiro.subList(6,7) }"  var="ano">
								   <tr class="resumo" align="center">
								  
				                <c:forEach items="${ano.getInformacoesTabela5() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }" >
				            	   
										<td style="color:black">${info.descricao }</td> 
											</c:when></c:choose>
										 
								</c:forEach>
								    
							    </c:forEach>
							    
							</tbody>
		                    </div>
						 </table>
					
				 <div class="table-responsive" style="margin-left: 20px; margin-right: 20px;" >
					<table class="panel-heading tabela" style="margin: 0;">
						<tbody>
							<table border="0" style="width: 100%; font: 700;">
							
                              <tr><td>FONTE: Folhas de pagamento dos PTRs</td></tr>
                              <tr><td>Elaboração: SMADS/CGB</td></tr>
                              <tr><td>*Os valores transferidos pelo PETI estão dentro da folha de pagamento do PBF.</td></tr>
                               </table>
							  </tbody>
							</table>
						</div>
		               </div>
	   		       </div>
			
 			 <div id="marco" class="tab-pane fade" >
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container" >
									<div class="col-md-6 col-md-offset-3" >
										<h3 class="text-left" style="width: 100%; font-weight: 700;" >Relatório Raio-X
											</h3>
								    </div>
					      
				                </div>
		                    </div>
		               </c:when>
				  <c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3" >
									<h3 class="text-center" style="width: 100%; font-weight: 700;"> Raio-X </h3>
							   </div>
						   </div>
		           </c:otherwise>
		           </c:choose>
					
	 	     <div class="table-responsive" align="right" >
	 	      
				     <table class="panel-heading tabela" align="right">
				     <c:if    
			              test="${not iframeMarco.equals('') && not empty iframeMarco }">
						    <iframe width='45%  margin: 0;' height='460px;' align='right' seamless frameborder='0'
						       scrolling='no'  marginheight="0" marginwidth="0" src='${iframeFevereiro }'> </iframe>
					</c:if>
					
				   </table> 
	                    <br/>
	                    <br/>
			          <table class="table-bordered table"  style="width: 55%;   style="color:black;" >
							<thead>
								<tr style="background:#025a94;color:white"   align="center">
								   <td>Programa</td>
	       						   <td>Esfera Governamental</td>
								   <td>N°Familia Beneficiadas</td>
								   <td>Valor Total Repassado</td>
								   <td>Valor Médio Benefício</td>
							   </tr>
		                   
							</thead>
					        <tbody>
				            	<c:forEach items="${anoMarco.subList(0,5) }" var="ano">
							   <tr class="resumo" align="center">
				            
				            	  <c:forEach items="${ano.getInformacoesTabela1() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }">
											<td style="color:black">${info.descricao }</td>
											</c:when></c:choose>
								</c:forEach>
								</tr>
							  </c:forEach>
							</tbody>
						   <thead>
								<tr style="background:#025a94;color:white" align="center"  >
	       						   <td>Numero de Domicilios no CADÚnico</td>
							  </tr>
							</thead>
					           <tbody>
								<c:forEach items="${anoMarco.subList(5,6) }"  var="ano">
								   <tr class="resumo" align="center" style="background:#025a94;color:white">
								  
				                <c:forEach items="${ano.getInformacoesTabela4() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }" >
				            	   
										<td style="color:white">${info.descricao }</td> 
											</c:when></c:choose>
										 
								</c:forEach>
								    
							    </c:forEach>
							    
							    	<c:forEach items="${anoMarco.subList(6,7) }"  var="ano">
								   <tr class="resumo" align="center">
								  
				                <c:forEach items="${ano.getInformacoesTabela5() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }" >
				            	   
										<td style="color:black">${info.descricao }</td> 
											</c:when></c:choose>
										 
								</c:forEach>
								    
							    </c:forEach>
							    
							</tbody>
		                    </div>
						 </table>
					
				 <div class="table-responsive" style="margin-left: 20px; margin-right: 20px;" >
					<table class="panel-heading tabela" style="margin: 0;">
						<tbody>
							<table border="0" style="width: 100%; font: 700;">
							
                              <tr><td>FONTE: Folhas de pagamento dos PTRs</td></tr>
                              <tr><td>Elaboração: SMADS/CGB</td></tr>
                              <tr><td>*Os valores transferidos pelo PETI estão dentro da folha de pagamento do PBF.</td></tr>
                               </table>
							  </tbody>
							</table>
						</div>
		               </div>
	   		       </div>
		 
 <div id="abril" class="tab-pane fade" >
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container" >
									<div class="col-md-6 col-md-offset-3" >
										<h3 class="text-left" style="width: 100%; font-weight: 700;" >Relatório Raio-X
											</h3>
								    </div>
					      
				                </div>
		                    </div>
		               </c:when>
				  <c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3" >
									<h3 class="text-center" style="width: 100%; font-weight: 700;"> Raio-X </h3>
							   </div>
						   </div>
		           </c:otherwise>
		           </c:choose>
					
	 	     <div class="table-responsive" align="right" >
	 	      
				     <table class="panel-heading tabela" align="right">
				     <c:if    
			              test="${not iframeAbril.equals('') && not empty iframeAbril }">
						    <iframe width='45%  margin: 0;' height='460px;' align='right' seamless frameborder='0'
						       scrolling='no'  marginheight="0" marginwidth="0" src='${iframeFevereiro }'> </iframe>
					</c:if>
					
				   </table> 
	                    <br/>
	                    <br/>
			          <table class="table-bordered table"  style="width: 55%;   style="color:black;" >
							<thead>
								<tr style="background:#025a94;color:white"   align="center">
								   <td>Programa</td>
	       						   <td>Esfera Governamental</td>
								   <td>N°Familia Beneficiadas</td>
								   <td>Valor Total Repassado</td>
								   <td>Valor Médio Benefício</td>
							   </tr>
		                   
							</thead>
					        <tbody>
				            	<c:forEach items="${anoAbril.subList(0,5) }" var="ano">
							   <tr class="resumo" align="center">
				            
				            	  <c:forEach items="${ano.getInformacoesTabela1() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }">
											<td style="color:black">${info.descricao }</td>
											</c:when></c:choose>
								</c:forEach>
								</tr>
							  </c:forEach>
							</tbody>
						   <thead>
								<tr style="background:#025a94;color:white" align="center"  >
	       						   <td>Numero de Domicilios no CADÚnico</td>
							  </tr>
							</thead>
					           <tbody>
								<c:forEach items="${anoAbril.subList(5,6) }"  var="ano">
								   <tr class="resumo" align="center" style="background:#025a94;color:white">
								  
				                <c:forEach items="${ano.getInformacoesTabela4() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }" >
				            	   
										<td style="color:white">${info.descricao }</td> 
											</c:when></c:choose>
										 
								</c:forEach>
								    
							    </c:forEach>
							    
							    	<c:forEach items="${anoAbril.subList(6,7) }"  var="ano">
								   <tr class="resumo" align="center">
								  
				                <c:forEach items="${ano.getInformacoesTabela5() }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }" >
				            	   
										<td style="color:black">${info.descricao }</td> 
											</c:when></c:choose>
										 
								</c:forEach>
								    
							    </c:forEach>
							    
							</tbody>
		                    </div>
						 </table>
					
				 <div class="table-responsive" style="margin-left: 20px; margin-right: 20px;" >
					<table class="panel-heading tabela" style="margin: 0;">
						<tbody>
							<table border="0" style="width: 100%; font: 700;">
							
                              <tr><td>FONTE: Folhas de pagamento dos PTRs</td></tr>
                              <tr><td>Elaboração: SMADS/CGB</td></tr>
                              <tr><td>*Os valores transferidos pelo PETI estão dentro da folha de pagamento do PBF.</td></tr>
                               </table>
							  </tbody>
							</table>
						</div>
		               </div>
	   		       </div>
				
	 	<div id="maio" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3" >
										<h3 class="text-center" style="width: 100%; font-weight: 700;" >Raio-X
											</h3>
								    </div>
					              <div class="col-md-3">
									<a class="btn btn-default"
										style="margin-top: 10px; font-size: 14px;" href="${urlPdf }"
										target="_blank">Visualizar/Imprimir Raio-X</a>
								    </div>  
								</div>
							</div>
					  </c:when>
						
					<c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3" >
									<h3 class="text-center" style="width: 100%; font-weight: 700;"> Raio-X </h3>
							   </div>
						   </div>
				   </c:otherwise>
					
					</c:choose>
					<div class="table-responsive">
						<table class="table table-bordered table-hover" style="background:#AAB7B8; color:"black" border="none" >
							<thead>
								<tr>
								    <c:forEach items="${colunasMaio}" var="coluna" >
										<th>${coluna.toString() }</th>
								  </c:forEach>
								</tr>
							</thead>
							<tbody>
				            	<c:forEach items="${anoMaio }" var="ano">
							   <tr class="resumo">
				            
				            	  <c:forEach items="${ano.informacoes }"  var="info">
				            	  <c:choose><c:when test="${info.tipo.equals('resumo') }">
											<td>${info.descricao }</td>
											</c:when></c:choose>
								</c:forEach>
								</tr>
							    </c:forEach>
								
							</tbody>
						</table>
					</div>
		<div class="panel panel-default"
					style="margin-left: 20px; margin-right: 20px;">
					
					   <div class="panel-heading tabela">
							<p class="text-center" style="width: 100%; margin: 0;">Raio-X Detalhado </p>
					   </div>
						
				     <div class="table-responsive" style="padding: 0;">
							<table class="table table-bordered table-hover"  style="background:#AAB7B8; border="none">
							<thead>
								<tr>
								    <c:forEach items="${colunasMaioDetalhado}" var="colunas">
										<th>${colunas.toString() }</th>
									</c:forEach>
								</tr>
								</thead>
					       </table>
					  </div>
				 </div>
				 	
	 <div class="table-responsive" >
						<table class="table table-bordered table-hover"  style="background:#AAB7B8;"  border="none">
							<tbody>
									<tr>
							<c:forEach items="${anoMaio }" var="ano">
							     <c:choose><c:when test="${ano.titulo.equals('Bolsa Família Total') }">
									    <th>${ano.titulo }</th>
									    <th>${ano.descricao }</th>
									     	
				            
				            	  <c:forEach items="${ano.informacoes }"  var="info">
				            	    <c:choose><c:when test="${info.tipo.equals('bolsaFamilia') }">
							        <tr class="linha">
											<td>${info.titulo } </td>
											<td>${info.descricao } </td>
									 </tr>       
											</c:when></c:choose>
									</c:forEach>
						</c:when></c:choose>
							   </c:forEach>
								    </tr>
								 </tbody>
					       </table>
					</div>
					  
	<div class="table-responsive" >
						<table class="table table-bordered table-hover" style="background:#AAB7B8; color:"black" border="none">
						<tbody>
									<tr>
							<c:forEach items="${anoMaio }" var="ano">
							     <c:choose><c:when test="${ano.titulo.equals('Renda Mínima Total') }">
									    <th>${ano.titulo }</th>
									    <th>${ano.descricao }</th>
									     	
				            
				            	  <c:forEach items="${ano.informacoes }"  var="info">
				            	    <c:choose><c:when test="${info.tipo.equals('rendaMinima') }">
							        <tr class="linha">
											<td>${info.titulo } </td>
											<td>${info.descricao } </td>
							        </tr>       
											</c:when></c:choose>
								</c:forEach>
							</c:when></c:choose>
							   </c:forEach>
								    </tr>
								 </tbody>
					       </table>
					  </div>
		 <div class="table-responsive" style="padding: 0;">
					<table class="table table-bordered table-hover" style="background:#AAB7B8; color:"black" border="none">
						<tbody>
									<tr>
							<c:forEach items="${anoMaio }" var="ano">
							     <c:choose><c:when test="${ano.titulo.equals('Renda Cidadã Total') }">
									    <th>${ano.titulo }</th>
									    <th>${ano.descricao }</th>
									     	
				            
				            	  <c:forEach items="${ano.informacoes }"  var="info">
				            	    <c:choose><c:when test="${info.tipo.equals('rendaCidada') }">
							        <tr class="linha">
											<td>${info.titulo } </td>
											<td>${info.descricao } </td>
									</tr>       
											</c:when></c:choose>
					              </c:forEach>
								</c:when></c:choose>
							   </c:forEach>
								    </tr>
								 </tbody>
					       </table>
					  </div>
		<div class="table-responsive" >
						<table class="table table-bordered table-hover" style="background:#AAB7B8; color:"black" border="none">
						<tbody>
									<tr>
							<c:forEach items="${anoMaio }" var="ano">
							     <c:choose><c:when test="${ano.titulo.equals('Total de Família Beneficiadas') }">
									    <th>${ano.titulo }</th>
									    <th>${ano.descricao }</th>
									     	
				            
				         
							</c:when></c:choose>
							   </c:forEach>
								    </tr>
								 </tbody>
					       </table>
					  </div>
				</div>	
			
	<div id="junho" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X </h3>
									</div>
									
									<div class="col-md-3">
										<a class="btn btn-default" target="_blank"
											style="margin-top: 10px; font-size: 14px;" href="${urlPdf }">Visualizar/Imprimir Raio-X</a>
								    </div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3">
									<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X </h3>
							   </div>
						    </div>
						</c:otherwise>
					</c:choose>
					
	<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
								    <c:forEach items="${colunasJunho}" var="coluna">
										<th>${coluna.toString() }</th>
									</c:forEach>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${anoJunho }" var="ano">
								
								</c:forEach>
							  
								
							</tbody>
						</table>
					</div>
					
	 <div class="panel panel-default"
						style="margin-left: 20px; margin-right: 20px;">
					
			
				<div class="panel-heading tabela">
							<p class="text-center" style="width: 100%; margin: 0;">Raio-X Detalhado </p>
				</div>
						
			
				</div>
			    </div>
				
	<div id="julho" class="tab-pane fade">
			   <c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
									</div>
									
									<div class="col-md-3">
										<a class="btn btn-default" target="_blank"
											style="margin-top: 10px; font-size: 14px;" href="${urlPdf }">Visualizar/Imprimir Raio-X</a>
								   </div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3">
									<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X </h3>
							   </div>
						   </div>
						</c:otherwise>
					</c:choose>
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
								    <c:forEach items="${colunasJulho}" var="coluna">
										<th>${coluna.toString() }</th>
									</c:forEach>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${anoJulho }" var="ano">
								
								</c:forEach>
					
								
							</tbody>
						</table>
					</div>
					
	<div class="panel panel-default"
						style="margin-left: 20px; margin-right: 20px;">
					
			
						<div class="panel-heading tabela">
							<p class="text-center" style="width: 100%; margin: 0;">Raio-X Detalhado</p>
					   </div>
						
			
                 </div>
				</div>
				
	<div id="agosto" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
									</div>
									
									<div class="col-md-3">
										<a class="btn btn-default" target="_blank"
											style="margin-top: 10px; font-size: 14px;" href="${urlPdf }">Visualizar/Imprimir Raio-X</a>
								   </div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3">
									<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
							   </div>
						   </div>
						</c:otherwise>
					</c:choose>
					
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
								    <c:forEach items="${colunasAgosto}" var="coluna">
										<th>${coluna.toString() }</th>
									</c:forEach>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${anoAgosto }" var="ano">
								
								</c:forEach>
					
								
							</tbody>
						</table>
					</div>
					
	     <div class="panel panel-default"
						style="margin-left: 20px; margin-right: 20px;">
					
			
						<div class="panel-heading tabela">
							<p class="text-center" style="width: 100%; margin: 0;">Raio-X Detalhado</p>
					   </div>
		
				</div>
			</div>
			
        <div id="setembro" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
								    </div>
									
									<div class="col-md-3">
										<a class="btn btn-default" target="_blank"
											style="margin-top: 10px; font-size: 14px;" href="${urlPdf }">Visualizar/Imprimir Raio-X</a>
								    </div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3">
									<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
							   </div>
						    </div>
						</c:otherwise>
					</c:choose>
					
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
								    <c:forEach items="${colunasSetembro}" var="coluna">
										<th>${coluna.toString() }</th>
									</c:forEach>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${anoSetembro }" var="ano">
								
								</c:forEach>
					
								
							</tbody>
						</table>
					</div>
					
	  <div class="panel panel-default"
						style="margin-left: 20px; margin-right: 20px;">
					
		
						<div class="panel-heading tabela">
							<p class="text-center" style="width: 100%; margin: 0;">Raio-X Detalhado</p>
					   </div>
			
					</div>
				</div>
				
	<div id="outubro" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
									</div>
									
									<div class="col-md-3">
										<a class="btn btn-default" target="_blank"
											style="margin-top: 10px; font-size: 14px;" href="${urlPdf }">Visualizar/Imprimir Raio-X</a>
								    </div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3">
									<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
								</div>
						   </div>
						</c:otherwise>
					</c:choose>
	   <div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
								    <c:forEach items="${colunasOutubro}" var="coluna">
										<th>${coluna.toString() }</th>
									</c:forEach>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${anoOutubro }" var="ano">
								
								</c:forEach>
				
								
							</tbody>
						</table>
					</div>
					
	     <div class="panel panel-default"
						style="margin-left: 20px; margin-right: 20px;">
					
			
						<div class="panel-heading tabela">
							<p class="text-center" style="width: 100%; margin: 0;">Raio-X Detalhado</p>
					   </div>
						
			
                    </div>
				</div>
				
	<div id="novembro" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
								    </div>
									<div class="col-md-3">
										<a class="btn btn-default" target="_blank"
											style="margin-top: 10px; font-size: 14px;" href="${urlPdf }">Visualizar/Imprimir Raio-X</a>
								   </div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3">
									<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X </h3>
							  </div>
						   </div>
						</c:otherwise>
					</c:choose>
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
								    <c:forEach items="${colunasNovembro}" var="coluna">
										<th>${coluna.toString() }</th>
									</c:forEach>
								</tr>
							</thead>
							<tbody>
					 		<c:forEach items="${anoNovembro }" var="ano">
					 		
					 		</c:forEach>
			
								
							</tbody>
						</table>
					</div>
	     <div class="panel panel-default"
						style="margin-left: 20px; margin-right: 20px;">
					
	
						
						<div class="panel-heading tabela">
							<p class="text-center" style="width: 100%; margin: 0;">Raio-X Detalhado</p>
				       </div>
						
			
				 </div>
				</div>
				
	<div id="dezembro" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
								    </div>
									
									<div class="col-md-3">
										<a class="btn btn-default" target="_blank"
											style="margin-top: 10px; font-size: 14px;" href="${urlPdf }">Visualizar/Imprimir Raio-X</a>
								   </div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3">
									<h3 class="text-center" style="width: 100%; font-weight: 700;">Raio-X</h3>
							   </div>
						   </div>
						</c:otherwise>
					</c:choose>
					<div class="table-responsive">
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
								    <c:forEach items="${colunasDezembro}" var="coluna">
										<th>${coluna.toString() }</th>
									</c:forEach>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${anoDezembro }" var="ano">
								</c:forEach>
					
								
							</tbody>
						</table>
					</div>
					
	     <div class="panel panel-default"
						style="margin-left: 20px; margin-right: 20px;">
				
		
						<div class="panel-heading tabela">
							<p class="text-center" style="width: 100%; margin: 0;">Raio-X Detalhado</p>
						</div>
						
	  
				</div>
			</div>
		</div>
    </div>
 </div>
</div>

<c:import url="/WEB-INF/paginas/template/rodape.jsp"></c:import>


