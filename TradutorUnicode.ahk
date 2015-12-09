; Projeto de Anderson Nascimento Nunes | andersonnnunes.org | e-Mail: contato@andersonnnunes.org
; Este trabalho está licenciado com uma Licença Creative Commons – Atribuição-CompartilhaIgual 4.0 Internacional.
; Detalhes completos de licenciamento: http://creativecommons.org/licenses/by-sa/4.0/legalcode

; ---------------- Declaração de inicialização ----------------
{
#noTrayIcon
#singleInstance force
#noEnv
#warn
sendMode Input
setWorkingDir %A_ScriptDir%
#installKeybdHook
#usehook
}
; ---------------- Declaração de atalhos ----------------
#Hotstring C1
::paratodo::{U+2200}
::existe::{U+2203}
::nãoexiste::{U+2204}
::conjuntovazio::{U+2205}
::pertence::{U+2208}
::nãopertence::{U+2209}
::contém::{U+220B}
::nãocontém::{U+220C}
::fimdeprova::{U+220E}
::anel::{U+2218}
:*:infinito::{U+221E}
:*:ângulo::{U+2220}
::e::{U+2227}
::ou::{U+2228}
::intersecção::{U+2229}
::união::{U+222A}
::integral::{U+222B}
::integraldefinida::F(x) = {U+222B}[,] dx
::derivada::{U+0307}
::derivadade::f'(x) = 
;::::{U+220}
;::::{U+220}
;::::{U+220}
::narioe::{U+22C0}
::narioou::{U+22C1}
::nariointersecção::{U+22C2}
::nariounião::{U+22C3}

::duplo=::{U+2A75}
::capitaldelta::{U+0394}
:*:variação::{U+0394}
::maiorigual::{U+2265}
::menor::{U+003C}
::menorigual::{U+2264}

::capital sigma::{U+03A3}
::contradição::{U+203B}
::contradição2::{U+21AF}
::ortogonalidade::{U+22A5}
::pi::{U+03A0}

::complexos::{U+2102}
::racionais::{U+211A}
::reais::{U+211D}
::inteiros::{U+2124}
::expoentenatural::{U+212F}
::maisoumenos::{U+00B1}
::inclinação::{U+2333}
::eg::e.g. 


::não::{U+00AC}
::recebe::{U+2190}
::implica::{U+2192}
::mapeia::{U+2192}
::tendea::{U+2192}
::biimplica::{U+2194}
:*:unisw:: ;Cambiar estado do Tradutor
	Suspend
	{
	if ( A_IsSuspended )
	{
		; SoundBeep
		tooltip, Modo de tradução para Unicode está desativado., 10, 10
		SetTimer, RemoveToolTip, 3000
	}
	if ( !A_IsSuspended )
	{
		; SoundBeep, 523,850
		tooltip, Modo de tradução para Unicode está ativado., 10, 10
		SetTimer, RemoveToolTip, 3000
	}
	return
}
; ---------------- Declaração de rótulos ----------------
RemoveToolTip:
{
SetTimer, RemoveToolTip, Off
ToolTip
return
}
