*Settings*
Documentation	Suite de testes do cadastro de personagens da API da Marvel

Library		RequestsLibrary
Library		./factories/Character.py

*Test Cases*
Deve cadastrar um personagem
	
	Header Builder	golias@zoo.ny

	&{personagem}	Factory Character

	${response}	POST
	...		http://marvel.qaninja.academy/characters
	...		json=${personagem}
	...		headers=${headers}

	Status Should Be	200	${response}

*Keywords*
Header Builder
	[Arguments]	${email}

	&{usuario}	Create Dictionary
	...		email=${email}

	${response}	POST
	...		http://marvel.qaninja.academy/accounts
	...		json=${usuario}

	${client_key}	Set Variable
	...		${response.json()}[client_key]

	&{HEADERS}	Create Dictionary
	...		client_key=${client_key}

	Set Suite Variable	${HEADERS}
