	.include "MPlayDef.s"

	.equ	se_rg_nawamiss_grp, voicegroup127
	.equ	se_rg_nawamiss_pri, 5
	.equ	se_rg_nawamiss_rev, reverb_set+50
	.equ	se_rg_nawamiss_mvl, 127
	.equ	se_rg_nawamiss_key, 0
	.equ	se_rg_nawamiss_tbs, 1
	.equ	se_rg_nawamiss_exg, 1
	.equ	se_rg_nawamiss_cmp, 1

	.section .rodata
	.global	se_rg_nawamiss
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_rg_nawamiss_1:
	.byte	KEYSH , se_rg_nawamiss_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 240*se_rg_nawamiss_tbs/2
	.byte		VOICE , 92
	.byte		BENDR , 12
	.byte		VOL   , 127*se_rg_nawamiss_mvl/mxv
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

se_rg_nawamiss:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_rg_nawamiss_pri	@ Priority
	.byte	se_rg_nawamiss_rev	@ Reverb.

	.word	se_rg_nawamiss_grp

	.word	se_rg_nawamiss_1

	.end
