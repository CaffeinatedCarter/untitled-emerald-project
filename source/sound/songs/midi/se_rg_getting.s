	.include "MPlayDef.s"

	.equ	se_rg_getting_grp, voicegroup129
	.equ	se_rg_getting_pri, 5
	.equ	se_rg_getting_rev, reverb_set+50
	.equ	se_rg_getting_mvl, 100
	.equ	se_rg_getting_key, 0
	.equ	se_rg_getting_tbs, 1
	.equ	se_rg_getting_exg, 1
	.equ	se_rg_getting_cmp, 1

	.section .rodata
	.global	se_rg_getting
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_rg_getting_1:
	.byte	KEYSH , se_rg_getting_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 310*se_rg_getting_tbs/2
	.byte		VOICE , 3
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 127*se_rg_getting_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Bn3 , v120
	.byte	W03
@ 001   ----------------------------------------
	.byte	W03
@ 002   ----------------------------------------
	.byte	W02
	.byte		        En4 , v127
	.byte	W01
@ 003   ----------------------------------------
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
@ 005   ----------------------------------------
	.byte	W03
@ 006   ----------------------------------------
	.byte	W03
@ 007   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_rg_getting_2:
	.byte	KEYSH , se_rg_getting_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 126
	.byte		VOL   , 127*se_rg_getting_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte	W01
	.byte		N01   , Cn2 , v120
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
@ 005   ----------------------------------------
	.byte	W03
@ 006   ----------------------------------------
	.byte	W03
@ 007   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_rg_getting:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_rg_getting_pri	@ Priority
	.byte	se_rg_getting_rev	@ Reverb.

	.word	se_rg_getting_grp

	.word	se_rg_getting_1
	.word	se_rg_getting_2

	.end
