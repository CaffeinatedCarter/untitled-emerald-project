	.include "MPlayDef.s"

	.equ	se_expmax_grp, voicegroup128
	.equ	se_expmax_pri, 5
	.equ	se_expmax_rev, reverb_set+50
	.equ	se_expmax_mvl, 94
	.equ	se_expmax_key, 0
	.equ	se_expmax_tbs, 1
	.equ	se_expmax_exg, 1
	.equ	se_expmax_cmp, 1

	.section .rodata
	.global	se_expmax
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_expmax_1:
	.byte	KEYSH , se_expmax_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_expmax_tbs/2
	.byte		VOICE , 46
	.byte		VOL   , 127*se_expmax_mvl/mxv
	.byte		BENDR , 2
	.byte		LFOS  , 40
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+15
	.byte		N06   , An5 , v112
	.byte	W01
	.byte		N15   , En6 , v104
	.byte	W02
@ 001   ----------------------------------------
	.byte	W01
	.byte		MOD   , 5
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
@ 005   ----------------------------------------
	.byte	W01
	.byte		        0
	.byte	W02
@ 006   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_expmax_2:
	.byte	KEYSH , se_expmax_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 53
	.byte		BENDR , 2
	.byte		VOL   , 59*se_expmax_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+15
	.byte		N06   , An4 , v108
	.byte	W01
	.byte		N12   , Cs6 , v104
	.byte	W02
@ 001   ----------------------------------------
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
@ 005   ----------------------------------------
	.byte	W03
@ 006   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_expmax:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_expmax_pri	@ Priority
	.byte	se_expmax_rev	@ Reverb.

	.word	se_expmax_grp

	.word	se_expmax_1
	.word	se_expmax_2

	.end
