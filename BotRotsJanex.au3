#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Misc.au3>
; Wspolrzedne okna Battle do targetingu
$Battle1 = 1710 ; Lewo Góra Okna x
$Battle2 = 295 ; Lewo Góra Okna y
$Battle3 = 1882 ; Prawy doł okna x
$Battle4 = 368 ; Prawy doł okna y
$BattlePix = 0x888888 ; Kolor mobów na battle

; Wspolrzedne paska hp
$Heal1 = 178 ; Lewo Góra Okna x
$Heal2 = 91 ; Lewo Góra Okna y
$Heal3 = 185 ; Prawy doł okna x
$Heal4 = 93 ; Prawy doł okna y
$HealPix = 0xCD4230 ; Kolor mobów na battle

; Wspolrzedne trainów
$Train1 = 868 ; Lewo Góra Okna x
$Train2 = 351 ; Lewo Góra Okna y
$Train3 = 1048 ; Prawy doł okna x
$Train4 = 530 ; Prawy doł okna y
$TrainPix = 0x5E051F ; Kolor mobów na battle

; Wspolrzedne paska hp
$Mana1 = 1052 ; Lewo Góra Okna x
$Mana2 = 942 ; Lewo Góra Okna y
$Mana3 = 1054 ; Prawy doł okna x
$Mana4 = 944 ; Prawy doł okna y
$ManaPix = 0x2483A2 ; Kolor mobów na battle


$Counter = 5000

Example()

Func Example()
    Local $sFilePath = "..\GUI\logo_autoit_210x72.gif"

    ; Create a GUI with various controls.
    Local $hGUI = GUICreate("Bot do RoTS by Janiu 😎🤙", 400, 100)

	Local $idHeal = GUICtrlCreateButton("Heal", 5, 3, 130, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$Heal_on = 0
	Local $idFood = GUICtrlCreateButton("Food", 135, 3, 130, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$Food_on = 0
	Local $idAutoTarget = GUICtrlCreateButton("AutoTarget", 265, 3, 130, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$AutoTarget_on = 0

   	Local $idTrainy = GUICtrlCreateButton("Trainy", 5, 78, 50, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$Trainy_on = 0

    Local $idF1 = GUICtrlCreateButton("F1", 20, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F1_on = 0
    Local $idF2 = GUICtrlCreateButton("F2", 50, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F2_on = 0
    Local $idF3 = GUICtrlCreateButton("F3", 80, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F3_on = 0
    Local $idF4 = GUICtrlCreateButton("F4", 110, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F4_on = 0
    Local $idF5 = GUICtrlCreateButton("F5", 140, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F5_on = 0
    Local $idF6 = GUICtrlCreateButton("F6", 170, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F6_on = 0
    Local $idF7 = GUICtrlCreateButton("F7", 200, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F7_on = 0
    Local $idF8 = GUICtrlCreateButton("F8", 230, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F8_on = 0
    Local $idF9 = GUICtrlCreateButton("F9", 260, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F9_on = 0
    Local $idF10 = GUICtrlCreateButton("F10", 290, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F10_on = 0
    Local $idF11 = GUICtrlCreateButton("F11", 320, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
	$F11_on = 0
    Local $idF12 = GUICtrlCreateButton("F12", 350, 23, 30, 20)
	GUICtrlSetBkColor(-1, 0xFF0000)
    $F12_on = 0



    Local $idWyjscie = GUICtrlCreateButton("Wyjście", 310, 70, 80, 20)




    GUICtrlCreatePic("..\GUI\msoobe.jpg", 0, 0, 400, 100)

    ; Display the GUI.
    GUISetState(@SW_SHOW, $hGUI)

    Local $hChild = GUICreate("", 0, 0, 20, 15, $WS_POPUP, BitOR($WS_EX_LAYERED, $WS_EX_MDICHILD), $hGUI)

    ; Create a picture control with a transparent image.
    GUICtrlCreatePic($sFilePath, 0, 0, 210, 72)

    ; Display the child GUI.
    GUISetState(@SW_SHOW)

    ; Loop until the user exits.

   While 1

	  Switch GUIGetMsg()
         Case $GUI_EVENT_CLOSE, $idWyjscie
			Exit
		 Case $idHeal
			If ($Heal_on) Then
			   $Heal_on = 0
			   GUICtrlSetBkColor($idHeal, 0xFF0000)
			Else
			   $Heal_on = 1
			   GUICtrlSetBkColor($idHeal, 0x00FF00)
			EndIf
		 Case $idFood
			If ($Food_on) Then
			   $Food_on = 0
			   GUICtrlSetBkColor($idFood, 0xFF0000)
			Else
			   $Food_on = 1
			   GUICtrlSetBkColor($idFood, 0x00FF00)
			EndIf
		 Case $idAutoTarget
			If ($AutoTarget_on) Then
			   $AutoTarget_on = 0
			   GUICtrlSetBkColor($idAutoTarget, 0xFF0000)
			Else
			   $AutoTarget_on = 1
			   GUICtrlSetBkColor($idAutoTarget, 0x00FF00)
			EndIf
		 Case $idTrainy
			If ($Trainy_on) Then
			   $Trainy_on = 0
			   GUICtrlSetBkColor($idTrainy, 0xFF0000)
			Else
			   $Trainy_on = 1
			   GUICtrlSetBkColor($idTrainy, 0x00FF00)
			EndIf
		 Case $idF1
			If ($F1_on) Then
			   $F1_on = 0
			   GUICtrlSetBkColor($idF1, 0xFF0000)
			Else
			   $F1_on = 1
			   GUICtrlSetBkColor($idF1, 0x00FF00)
			EndIf
		 Case $idF2
			If ($F2_on) Then
			   $F2_on = 0
			   GUICtrlSetBkColor($idF2, 0xFF0000)
			Else
			   $F2_on = 1
			   GUICtrlSetBkColor($idF2, 0x00FF00)
			EndIf
		 Case $idF3
			If ($F3_on) Then
			   $F3_on = 0
			   GUICtrlSetBkColor($idF3, 0xFF0000)
			Else
			   $F3_on = 1
			   GUICtrlSetBkColor($idF3, 0x00FF00)
			EndIf
		 Case $idF4
			If ($F4_on) Then
			   $F4_on = 0
			   GUICtrlSetBkColor($idF4, 0xFF0000)
			Else
			   $F4_on = 1
			   GUICtrlSetBkColor($idF4, 0x00FF00)
			EndIf
		 Case $idF5
			If ($F5_on) Then
			   $F5_on = 0
			   GUICtrlSetBkColor($idF5, 0xFF0000)
			Else
			   $F5_on = 1
			   GUICtrlSetBkColor($idF5, 0x00FF00)
			EndIf
		 Case $idF6
			If ($F6_on) Then
			   $F6_on = 0
			   GUICtrlSetBkColor($idF6, 0xFF0000)
			Else
			   $F6_on = 1
			   GUICtrlSetBkColor($idF6, 0x00FF00)
			EndIf
		 Case $idF7
			If ($F7_on) Then
			   $F7_on = 0
			   GUICtrlSetBkColor($idF7, 0xFF0000)
			Else
			   $F7_on = 1
			   GUICtrlSetBkColor($idF7, 0x00FF00)
			EndIf
		 Case $idF8
			If ($F8_on) Then
			   $F8_on = 0
			   GUICtrlSetBkColor($idF8, 0xFF0000)
			Else
			   $F8_on = 1
			   GUICtrlSetBkColor($idF8, 0x00FF00)
			EndIf
		 Case $idF9
			If ($F9_on) Then
			   $F9_on = 0
			   GUICtrlSetBkColor($idF9, 0xFF0000)
			Else
			   $F9_on = 1
			   GUICtrlSetBkColor($idF9, 0x00FF00)
			EndIf
		 Case $idF10
			If ($F10_on) Then
			   $F10_on = 0
			   GUICtrlSetBkColor($idF10, 0xFF0000)
			Else
			   $F10_on = 1
			   GUICtrlSetBkColor($idF10, 0x00FF00)
			EndIf
		 Case $idF11
			If ($F11_on) Then
			   $F11_on = 0
			   GUICtrlSetBkColor($idF11, 0xFF0000)
			Else
			   $F11_on = 1
			   GUICtrlSetBkColor($idF11, 0x00FF00)
			EndIf
		 Case $idF12
			If ($F12_on) Then
			   $F12_on = 0
			   GUICtrlSetBkColor($idF12, 0xFF0000)
			Else
			   $F12_on = 1
			   GUICtrlSetBkColor($idF12, 0x00FF00)
			EndIf

         EndSwitch


	  If WinActive("Return Of The Saiyans") Then

	  $pix1 = PixelSearch($Heal1, $Heal2, $Heal3, $Heal4, $HealPix, 1) ; Szukaj
	  If IsArray ($pix1) = 0 and $F1_on = 1 and $Counter > 4800 Then
		 Send("{F1}")
	  EndIF

	  $pix2 = PixelSearch($Battle1, $Battle2, $Battle3, $Battle4, $BattlePix, 1)
	  If IsArray ($pix2) = 1 and $AutoTarget_on = 1 and $Counter > 4800 Then
		 Send("{Space}")
	  EndIF

	  $pix3 = PixelSearch($Heal1, $Heal2, $Heal3, $Heal4, $HealPix, 1) ; Szukaj
	  If IsArray ($pix3) = 0 and $Heal_on = 1 and $Counter > 4800 Then
		 Send("{F1}")
	  EndIF

	  $pix4 = PixelSearch($Train1, $Train2, $Train3, $Train4, $TrainPix, 1) ; Szukaj
	  If IsArray ($pix4) = 1 and $Trainy_on = 1 Then; wyczysc
		 Sleep(100)
		 MouseClick ("right",$pix4[0],$pix4[1], 1, 2)
		 Sleep(100)
	  EndIF

	  $pix5 = PixelSearch($Mana1, $Mana2, $Mana3, $Mana4, $ManaPix, 1) ; Szukaj
	  If IsArray ($pix1) = 1 and $F12_on = 1 and $Counter > 4800 Then
		 Send("{F12}")
	  EndIF


	  $Counter = $Counter - 600

	  If $Counter <= 0 Then
		 $Counter = 5000
	  EndIf

	  EndIf
   WEnd



    ; Delete the previous GUIs and all controls.
    GUIDelete($hGUI)
    GUIDelete($hChild)
 EndFunc   ;==>Example

