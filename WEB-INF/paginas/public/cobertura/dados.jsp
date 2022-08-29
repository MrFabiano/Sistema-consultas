<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/paginas/template/cabecalho.jsp"></c:import>

<div class="container-fluid" style="background: #EEF0F1; height: 87%;">
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
							
    <div class="tab-content">
            <div id="janeiro" class="tab-pane fade in active">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<div class="col-md-6 col-md-offset-3">
									<h3 class="text-center" style="width: 100%; font-weight: 700;">
									</h3>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
					<div class="table-responsive" align="left">

					  <table class="panel-heading tabela" align="left">
							<c:if
								test="${not iframeJaneiro.equals('') && not empty iframeJaneiro }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeJaneiro }'> </iframe>
							</c:if> 

						</table> 	
						
						<br /> <br />
						<table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
							<thead>
								<tr style="background: #025a94; color: white" align="center">
								
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício </td> 
								
								</tr>
							</thead>
							<tbody>
						
								<c:forEach  items="${mesJaneiro.subList(0,5)  }"  var="mes" > 
									<tr class="resumo" align="center" >
									
										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
												
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>

			              	<tbody>
								<c:forEach items="${mesJaneiro.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white" border="none">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
								</c:forEach>
								<c:forEach items="${mesJaneiro.subList(6,7) }" var="mes">
									<tr class="resumo" align="center" border="none">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
								</c:forEach>
								<c:forEach items="${mesJaneiro.subList(6,6) }" var="mes">
									<tr class="resumo" align="center" border="none">

										<c:forEach items="${mes.getInformacoesTabela6() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
								</c:forEach>
							</tbody>
						</table>
						
						<div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">
										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
						</div>
					</div>
				</div>

		<div id="fevereiro" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>
								</div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="left"> 
						<table class="panel-heading tabela">
							<c:if
								test="${not iframeFevereiro.equals('') && not empty iframeFevereiro }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeFevereiro }'> </iframe>
							</c:if>
						</table>
						<br /><br />
						
				   <table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
							<thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${mesFevereiro.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">
										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>

							<tbody>
								<c:forEach items="${mesFevereiro.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>

										</c:forEach>
								</c:forEach>
								<c:forEach items="${mesFevereiro.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
								</c:forEach>
							</tbody>
						</table>

						<div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div id="marco" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>
								</div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="left">

						<table class="panel-heading tabela">
							<c:if
								test="${not iframeMarco.equals('') && not empty iframeMarco }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeMarco }'> </iframe>
							</c:if>
                        </table>
						<br /> <br />

                      <table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
						    <thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
                                </tr>
                            </thead>

							<tbody>
								<c:forEach items="${mesMarco.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>

                            <tbody>
								<c:forEach items="${mesMarco.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>
                                        </c:forEach>
								</c:forEach>

								<c:forEach items="${mesMarco.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
								</c:forEach>
							</tbody>
						</table>

                       <div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
                         </div>
					</div>
				</div>

				<div id="abril" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>
                               </div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="left">

						<table class="panel-heading tabela">
							<c:if
								test="${not iframeAbril.equals('') && not empty iframeAbril }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeAbril }'> </iframe>
							</c:if>
                       </table>
						<br /> <br />

                    <table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
							<thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
							    </tr>
                           </thead>

							<tbody>
								<c:forEach items="${mesAbril.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>

                            <tbody>
								<c:forEach items="${mesAbril.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>
                                       </c:forEach>
								</c:forEach>

								<c:forEach items="${mesAbril.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
                                         </c:forEach>
								</c:forEach>
                             </tbody>
                       </table>
                       
					<div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
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
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>
                                </div>
							</div>
						</c:when>
                  </c:choose>
                  
					<div class="table-responsive" align="left">

						<table class="panel-heading tabela">
							<c:if
								test="${not iframeMaio.equals('') && not empty iframeMaio }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeMaio }'> </iframe>
							</c:if>
					    </table>
						<br /> <br />

                         <table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
						    <thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
                                </tr>
                           </thead>

							<tbody>
								<c:forEach items="${mesMaio.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>

                            <tbody>
								<c:forEach items="${mesMaio.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>
                                       </c:forEach>
								</c:forEach>

								<c:forEach items="${mesMaio.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
                                       </c:forEach>
								</c:forEach>
                            </tbody>
					</table>
						
                       <div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
                          </div>
					</div>
				</div>

				<div id="junho" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>
                                 </div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="left">

						<table class="panel-heading tabela">
							<c:if
								test="${not iframeJunho.equals('') && not empty iframeJunho }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeJunho }'> </iframe>
							</c:if>
                       </table>
						<br /> <br />

                    <table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
							<thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
						        </tr>
                            </thead>

							<tbody>
								<c:forEach items="${mesJunho.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>

                            <tbody>
								<c:forEach items="${mesJunho.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>
                                      </c:forEach>
								</c:forEach>

								<c:forEach items="${mesJunho.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
									   </c:forEach>
								</c:forEach>
                            </tbody>
                     </table>
                     
                       <div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
                        </div>
					</div>
				</div>

				<div id="julho" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>
                                </div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="lefth">

						<table class="panel-heading tabela">
							<c:if
								test="${not iframeJulho.equals('') && not empty iframeJulho }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeJulho }'> </iframe>
							</c:if>
                       </table>
						<br /> <br />

                         <table class="table table-bordered" style="width: 55%;"
							right"  style="color:black;">

							<thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
                                 </tr>
                            </thead>

							<tbody>
								<c:forEach items="${mesJulho.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>
							
                             <tbody>
								<c:forEach items="${mesJulho.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>
                                          </c:forEach>
								</c:forEach>

								<c:forEach items="${mesJulho.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
                                          </c:forEach>
								</c:forEach>
                            </tbody>
                    </table>
 
                       <div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
                         </div>
					</div>
				</div>
				<div id="agosto" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>
                                </div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="left">

						<table class="panel-heading tabela">
							<c:if
								test="${not iframeAgosto.equals('') && not empty iframeAgosto }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeAgosto }'> </iframe>
							</c:if>
					    </table>
						<br /> <br />
						
                       <table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
						  <thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
                                 </tr>
                           </thead>

							<tbody>
								<c:forEach items="${mesAgosto.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>

                             <tbody>
								<c:forEach items="${mesAgosto.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>
                                       </c:forEach>
								</c:forEach>

								<c:forEach items="${mesAgosto.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
                                       </c:forEach>
								</c:forEach>
                              </tbody>
                       </table>

                     <div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
                         </div>
					</div>
				</div>

				<div id="setembro" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>
							   </div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="lefth">

						<table class="panel-heading tabela">
							<c:if
								test="${not iframeSetembro.equals('') && not empty iframeSetembro }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeSetembro }'> </iframe>
							</c:if>
					    </table>
						<br /> <br />


						<table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
							<thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
                                </tr>
                           </thead>

							<tbody>
								<c:forEach items="${mesSetembro.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>
							
							<tbody>
								<c:forEach items="${mesSetembro.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>
                                       </c:forEach>
								</c:forEach>

								<c:forEach items="${mesSetembro.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
									</c:forEach>
								</c:forEach>
                              </tbody>
                      </table>
                      
                    <div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>

						</div>
					</div>
				</div>

				<div id="outubro" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									  </div>
                                 </div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="left">

						<table class="panel-heading tabela" align="lefth">
							<c:if
								test="${not iframeOutubro.equals('') && not empty iframeOutubro }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeOutubro }'> </iframe>
							</c:if>
                       </table>
						<br /> <br />


						<table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
						    <thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
                                </tr>
                           </thead>

							<tbody>
								<c:forEach items="${mesOutubro.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>
							
							<tbody>
								<c:forEach items="${mesOutubro.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>

										</c:forEach>
								</c:forEach>

								<c:forEach items="${mesOutubro.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>

										</c:forEach>
								</c:forEach>
                              </tbody>
                        </table>
						
                        <div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
                         </div>
					</div>
				</div>


				<div id="novembro" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									  </div>
                                 </div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="left">

						<table class="panel-heading tabela" align="lefth">
							<c:if
								test="${not iframeNovembro.equals('') && not empty iframeNovembro }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeNovembro }'> </iframe>
							</c:if>
                       </table>
						<br /> <br />


						<table class="table table-bordered" style="width: 55%;" right"  style="color:black;">
						    <thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>
                                </tr>
                           </thead>

							<tbody>
								<c:forEach items="${mesNovembro.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>
							
							<tbody>
								<c:forEach items="${mesNovembro.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>

										</c:forEach>
								</c:forEach>

								<c:forEach items="${mesNovembro.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>

										</c:forEach>
								</c:forEach>
                              </tbody>
                        </table>
						
                        <div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
                         </div>
					</div>
				</div>

				<div id="dezembro" class="tab-pane fade">
					<c:choose>
						<c:when test="${relatorio}">
							<div class="row">
								<div class="container">
									<div class="col-md-6 col-md-offset-3">
										<h3 class="text-left" style="width: 100%; font-weight: 700;">Relatório
											Raio-X</h3>
									</div>

								</div>
							</div>
						</c:when>

					</c:choose>
					<div class="table-responsive" align="left">

						<table class="panel-heading tabela">
							<c:if
								test="${not iframeDezembro.equals('') && not empty iframeDezembro }">
								<iframe width='45%  margin: 0;' height='540px;' align='right'
									seamless frameborder='0' scrolling='no' marginheight="0"
									marginwidth="0" src='${iframeDezembro }'> </iframe>
							</c:if>

						</table>
						<br /> <br />


						<table class="table table-bordered" style="width: 55%;"
							right"  style="color:black;">

							<thead>
								<tr style="background: #025a94; color: white" align="center">
									<td>Programa</td>
									<td>Esfera Governamental</td>
									<td>N°Famílias Beneficiadas</td>
									<td>Valor Total Repassado</td>
									<td>Valor Médio Benefício</td>

								</tr>
						   </thead>

							<tbody>
								<c:forEach items="${mesDezembro.subList(0,5) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela1() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">
													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>
							
                             <tbody>
								<c:forEach items="${mesDezembro.subList(5,6) }" var="mes">
									<tr class="resumo" align="center"
										style="background: #025a94; color: white">

										<c:forEach items="${mes.getInformacoesTabela4() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: white">${info.descricao }</td>
												</c:when>
											</c:choose>

										</c:forEach>
								</c:forEach>

								<c:forEach items="${mesDezembro.subList(6,7) }" var="mes">
									<tr class="resumo" align="center">

										<c:forEach items="${mes.getInformacoesTabela5() }" var="info">
											<c:choose>
												<c:when test="${info.tipo.equals('resumo') }">

													<td style="color: black">${info.descricao }</td>
												</c:when>
											</c:choose>

										</c:forEach>
								</c:forEach>

							</tbody>
					</table>
					
                  <div class="table-responsive"
							style="margin-left: 20px; margin-right: 20px;">
							<table class="panel-heading tabela" style="margin: 0;">
								<tbody>
									<table border="0" style="width: 100%; font: 700;">

										<tr>
											<td>FONTE: Folhas de pagamento dos PTRs</td>
										</tr>
										<tr>
											<td>Elaboração: SMADS/CGB</td>
										</tr>
										<tr>
											<td>*Os valores transferidos pelo PETI estão dentro da
												folha de pagamento do PBF.</td>
										</tr>
									</table>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			
			</div>
		</div>
	</div>
	
</div>
<c:import url="/WEB-INF/paginas/template/rodape.jsp"></c:import>


