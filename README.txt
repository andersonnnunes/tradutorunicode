Autor
	Anderson Nascimento Nunes | andersonnnunes.org

Licença
	Conforme o arquivo "License.md", este projeto está em domínio público.

Nome do Projeto
	Tradutor Unicode

Objetivo
	Tomar nota de conteúdo matemático usando um editor de texto convencional.

Problema
	Impraticabilidade de inclusão de símbolos matemáticos no texto devido a dificuldade de memorização dos códigos Unicode para caracteres matemáticos.

Solução
	Tradução assistida por máquina de vocábulos derivados de linguagem natural para símbolos matemáticos da tabela Unicode.

Linguagem de Programação
	AutoHotkey_L

Comportamento
	Quando executado, o programa aguarda que o usuário digite uma cadeia de caracteres que seja correspondente a uma auto-expansão conhecida e realiza a troca da cadeia digitada pelo usuário pelo respectivo caractere Unicode. O reconhecimento de padrões pode ser desativado temporariamente para que o usuário possa digitar vocábulos de linguagem natural sem que uma auto-expansão ocorra.

Exemplo de Caso de Uso
	Usuário executa o programa, abre um editor de texto com suporte a Unicode, digita "paratodo" e digita um caractere de finalização (-()[]{}':;"/\,.?!`n `t). Neste caso, o Tradutor Unicode apaga o conteúdo digitado pelo usuário e insere o caractere relativo à notação Unicode "U+2200".

	Para desativar temporariamente o Tradutor Unicode, o usuário deve digitar "unisw", não necessariamente em um editor de texto, basta que as teclas "unisw" sejam pressionadas em sequência. Para reativar o Tradutor, o usuário deve tornar a digitar a sequência "unisw". Uma mensagem confirmará a ativação/desativação do programa, ela aparecerá na região noroeste da janela ativa.

Limitações
	No momento, o programa não aceita argumentos. O programa também não tem interface gráfica. Para fechá-lo, deverás matar o processo.

	Ao ser executado, o programa inicia com o modo de tradução ativo. Executar o programa quando ele já está em execução causa a finalização da instância atual e a criação de uma nova instância de execução.

	O modo de tradução tem validade global para o usuário que o executa, isto é, a auto-expansão não é restrita a algum console ou interface gráfica de usuário. O programa não afeta outras contas de usuário que estejam usando concorrentemente o sistema operacional. Para que a auto-expansão funcione em programas com privilégios de administrador, o TradutorUnicode deve ser executado com privilégios elevados.

Referência do Padrão Unicode
	Obtive o correspondente Unicode para os símbolos matemáticos em:
		1. https://en.wikipedia.org/wiki/Mathematical_operators_and_symbols_in_Unicode
		2. http://www.fileformat.info/info/unicode/char/search.htm

Exemplos

	Objetivo: expressar "∀ x ∀ y|P(x) → P(y) ∎" - tamanho: 21.
	Sem o Tradutor Unicode: "Para todo x, para todo y, se P(x) então P(y). Fim de prova." - tamanho: 59.
	Com o Tradutor Unicode: "paratodo x paratodo y|P(x) implica P(y) fimdeprova " - tamanho: 51.
