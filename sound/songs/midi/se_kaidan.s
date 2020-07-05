	.include "MPlayDef.s"

	.equ	se_kaidan_grp, voicegroup127
	.equ	se_kaidan_pri, 5
	.equ	se_kaidan_rev, reverb_set+50
	.equ	se_kaidan_mvl, 120
	.equ	se_kaidan_key, 0
	.equ	se_kaidan_tbs, 1
	.equ	se_kaidan_exg, 1
	.equ	se_kaidan_cmp, 1

	.section .rodata
	.global	se_kaidan
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_kaidan_1:
	.byte	KEYSH , se_kaidan_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_kaidan_tbs/2
	.byte		VOICE , 126
	.byte		VOL   , 127*se_kaidan_mvl/mxv
	.byte		N02   , An2 , v068
	.byte	W02
	.byte		        Cn3 , v127
	.byte	W01
@ 001   ----------------------------------------
	.byte	W01
	.byte		        En4 , v068
	.byte	W02
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte	W03
@ 004   ----------------------------------------
	.byte		        An2 
	.byte	W02
	.byte		        Cn3 , v100
	.byte	W01
@ 005   ----------------------------------------
	.byte	W01
	.byte		        En4 , v068
	.byte	W02
@ 006   ----------------------------------------
	.byte	W03
@ 007   ----------------------------------------
	.byte	W03
@ 008   ----------------------------------------
	.byte		        An2 , v032
	.byte	W02
	.byte		        Cn3 , v052
	.byte	W01
@ 009   ----------------------------------------
	.byte	W03
@ 010   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_kaidan:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_kaidan_pri	@ Priority
	.byte	se_kaidan_rev	@ Reverb.

	.word	se_kaidan_grp

	.word	se_kaidan_1

	.end
