

		<h2 class="ui-state-default">Listagem de Pais</h2>
			
			<sol:toolBarEdicaoGrid controller="pais" idGrid="gridPais" />
			
			<sol:mensagens/>
			
			<sol:jgrid id="gridPais" modelo="netuno.administracao.Pais">
				<sol:column name="codigoIBGE" label="Código IBGE" width="100" />
				<sol:column name="nome" label="Descrição" width="300" />
			</sol:jgrid>
			
