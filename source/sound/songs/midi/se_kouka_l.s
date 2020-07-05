	.include "MPlayDef.s"

	.equ	se_kouka_l_grp, voicegroup127
	.equ	se_kouka_l_pri, 5
	.equ	se_kouka_l_rev, reverb_set+50
	.equ	se_kouka_l_mvl, 110
	.equ	se_kouka_l_key, 0
	.equ	se_kouka_l_tbs, 1
	.equ	se_kouka_l_exg, 1
	.equ	se_kouka_l_cmp, 1

	.section .rodata
	.global	se_kouka_l
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_kouka_l_1:
	.byte	KEYSH , se_kouka_l_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 90*se_kouka_l_tbs/2
	.byte		VOICE , 127
	.byte		VOL   , 127*se_kouka_l_mvl/mxv
	.byte		N03   , Gn2 , v100
	.byte	W03
@ 001   ----------------------------------------
	.byte		N06   , As2 
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_kouka_l_2:
	.byte	KEYSH , se_kouka_l_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*se_kouka_l_mvl/mxv
	.byte		N09   , As1 , v127
	.byte	W03
@ 001   ----------------------------------------
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_kouka_l:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_kouka_l_pri	@ Priority
	.byte	se_kouka_l_rev	@ Reverb.

	.word	se_kouka_l_grp

	.word	se_kouka_l_1
	.word	se_kouka_l_2

	.end
