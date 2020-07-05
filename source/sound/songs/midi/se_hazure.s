	.include "MPlayDef.s"

	.equ	se_hazure_grp, voicegroup127
	.equ	se_hazure_pri, 4
	.equ	se_hazure_rev, reverb_set+50
	.equ	se_hazure_mvl, 120
	.equ	se_hazure_key, 0
	.equ	se_hazure_tbs, 1
	.equ	se_hazure_exg, 1
	.equ	se_hazure_cmp, 1

	.section .rodata
	.global	se_hazure
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_hazure_1:
	.byte	KEYSH , se_hazure_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 240*se_hazure_tbs/2
	.byte		VOICE , 92
	.byte		BENDR , 12
	.byte		VOL   , 127*se_hazure_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cn2 , v127
	.byte	W03
@ 001   ----------------------------------------
	.byte		        Cn2 , v020
	.byte	W03
@ 002   ----------------------------------------
	.byte		N18   , Cn2 , v127
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
	.byte	W03
@ 008   ----------------------------------------
	.byte		N09   , Cn2 , v020
	.byte	W03
@ 009   ----------------------------------------
	.byte	W03
@ 010   ----------------------------------------
	.byte	W03
@ 011   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_hazure:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_hazure_pri	@ Priority
	.byte	se_hazure_rev	@ Reverb.

	.word	se_hazure_grp

	.word	se_hazure_1

	.end
