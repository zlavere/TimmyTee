;; *************** ScriptTables.asm ***************
;; Script link export. Monday, March 11, 2019 3:06:29 PM
ScriptAddressLo:
	.db #<Script00, #<Script01, #<Script02, #<Script03, #<Script04, #<Script05, #<Script06
ScriptAddressHi:
	.db #>Script00, #>Script01, #>Script02, #>Script03, #>Script04, #>Script05, #>Script06

TargetScriptBank:
	.db #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1

;;=======================PRESSED=======================
DefinedInputs_Pressed:
	.db #%00000001, #%00000010

DefinedScriptGameStates_Pressed:
	.db #GS_MainGame, #GS_MainGame

DefinedTargetObjects_Pressed:
	.db #$01, #$01

TargetState_Pressed:
	.db #$00, #$00

DefinedTargetScripts_Pressed:
	.db #$05, #$06

;;=======================RELEASE=======================
DefinedInputs_Released:
	.db #%10000000, #%01000000, #%00000001

DefinedScriptGameStates_Released:
	.db #GS_MainGame, #GS_MainGame, #GS_MainGame

DefinedTargetObjects_Released:
	.db #$01, #$01, #$01

TargetState_Released:
	.db #$00, #$00, #$00

DefinedTargetScripts_Released:
	.db #$03, #$02, #$04

;;=======================HOLD=======================
DefinedInputs_Held:
	.db #%01000000, #%10000000

DefinedScriptGameStates_Held:
	.db #GS_MainGame, #GS_MainGame

DefinedTargetObjects_Held:
	.db #$01, #$01

TargetState_Held:
	.db #$00, #$00

DefinedTargetScripts_Held:
	.db #$00, #$01

