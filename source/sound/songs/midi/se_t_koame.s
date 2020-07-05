	.include "MPlayDef.s"

	.equ	se_t_koame_grp, voicegroup128
	.equ	se_t_koame_pri, 2
	.equ	se_t_koame_rev, reverb_set+50
	.equ	se_t_koame_mvl, 80
	.equ	se_t_koame_key, 0
	.equ	se_t_koame_tbs, 1
	.equ	se_t_koame_exg, 1
	.equ	se_t_koame_cmp, 1

	.section .rodata
	.global	se_t_koame
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_t_koame_1:
	.byte	KEYSH , se_t_koame_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 220*se_t_koame_tbs/2
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 24*se_t_koame_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Bn3 , v052
	.byte	W03
	.byte		VOL   , 43*se_t_koame_mvl/mxv
	.byte	W03
	.byte		        62*se_t_koame_mvl/mxv
	.byte	W03
	.byte		        70*se_t_koame_mvl/mxv
	.byte	W03
	.byte		        83*se_t_koame_mvl/mxv
	.byte	W03
	.byte		        94*se_t_koame_mvl/mxv
	.byte	W03
	.byte		        108*se_t_koame_mvl/mxv
	.byte	W03
	.byte		        127*se_t_koame_mvl/mxv
	.byte	W03
se_t_koame_1_B1:
@ 001   ----------------------------------------
	.byte		N60   , Bn3 , v052
	.byte	W24
@ 002   ----------------------------------------
	.byte	W24
@ 003   ----------------------------------------
	.byte	W12
	.byte	GOTO
	 .word	se_t_koame_1_B1
se_t_koame_1_B2:
	.byte	W12
@ 004   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_t_koame:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_t_koame_pri	@ Priority
	.byte	se_t_koame_rev	@ Reverb.

	.word	se_t_koame_grp

	.word	se_t_koame_1

	.end
