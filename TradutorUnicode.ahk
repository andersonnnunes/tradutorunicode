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
::existe::{U+2203}
::para todo::{U+2200}
::capital sigma::{U+03A3}
;::::{U+220}
;::::{U+220}
;::::{U+220}
;::::{U+220}
;::::{U+220}
;::::{U+220}
;::::{U+220}
;::::{U+220}
;::::{U+220}
::e::{U+22C0}
::ou::{U+22C1}
::intersecção::{U+22C2}
::união::{U+22C3}

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
