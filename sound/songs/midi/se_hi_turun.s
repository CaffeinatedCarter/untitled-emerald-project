	.include "MPlayDef.s"

	.equ	se_hi_turun_grp, voicegroup128
	.equ	se_hi_turun_pri, 4
	.equ	se_hi_turun_rev, reverb_set+50
	.equ	se_hi_turun_mvl, 90
	.equ	se_hi_turun_key, 0
	.equ	se_hi_turun_tbs, 1
	.equ	se_hi_turun_exg, 1
	.equ	se_hi_turun_cmp, 1

	.section .rodata
	.global	se_hi_turun
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_hi_turun_1:
	.byte	KEYSH , se_hi_turun_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 220*se_hi_turun_tbs/2
	.byte		VOICE , 9
	.byte		VOL   , 127*se_hi_turun_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gn4 , v112
	.byte	W03
@ 001   ----------------------------------------
	.byte		        Dn4 
	.byte	W03
@ 002   ----------------------------------------
	.byte		        Gn4 
	.byte	W03
@ 003   ----------------------------------------
	.byte		N21   , Gn5 
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
@ 005   ----------------------------------------
	.byte		VOL   , 115*se_hi_turun_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W03
@ 006   ----------------------------------------
	.byte		VOL   , 102*se_hi_turun_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W03
@ 007   ----------------------------------------
	.byte		VOL   , 65*se_hi_turun_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W03
@ 008   ----------------------------------------
	.byte		VOL   , 34*se_hi_turun_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W03
@ 009   ----------------------------------------
	.byte		VOL   , 10*se_hi_turun_mvl/mxv
	.byte	W03
@ 010   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_hi_turun:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_hi_turun_pri	@ Priority
	.byte	se_hi_turun_rev	@ Reverb.

	.word	se_hi_turun_grp

	.word	se_hi_turun_1

	.end
