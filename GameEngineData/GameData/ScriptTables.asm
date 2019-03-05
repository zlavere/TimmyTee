;; *************** ScriptTables.asm ***************
;; Script link export. Tuesday, March 5, 2019 7:17:54 AM
ScriptAddressLo:
	.db #<Script00, #<Script01, #<Script02, #<Script03, #<Script04, #<Script05, #<Script06, #<Script07
ScriptAddressHi:
	.db #>Script00, #>Script01, #>Script02, #>Script03, #>Script04, #>Script05, #>Script06, #>Script07

TargetScriptBank:
	.db #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1

;;=======================PRESSED=======================
DefinedInputs_Pressed:


DefinedScriptGameStates_Pressed:


DefinedTargetObjects_Pressed:


TargetState_Pressed:


DefinedTargetScripts_Pressed:


;;=======================RELEASE=======================
DefinedInputs_Released:
	.db #%10000000, #%01000000

DefinedScriptGameStates_Released:
	.db #GS_MainGame, #GS_MainGame

DefinedTargetObjects_Released:
	.db #$01, #$01

TargetState_Released:
	.db #$00, #$00

DefinedTargetScripts_Released:
	.db #$06, #$05

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
	.db #$01, #$02

