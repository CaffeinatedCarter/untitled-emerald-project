	.include "MPlayDef.s"

	.equ	se_kaifuku_grp, voicegroup127
	.equ	se_kaifuku_pri, 5
	.equ	se_kaifuku_rev, reverb_set+50
	.equ	se_kaifuku_mvl, 100
	.equ	se_kaifuku_key, 0
	.equ	se_kaifuku_tbs, 1
	.equ	se_kaifuku_exg, 1
	.equ	se_kaifuku_cmp, 1

	.section .rodata
	.global	se_kaifuku
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_kaifuku_1:
	.byte	KEYSH , se_kaifuku_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 132*se_kaifuku_tbs/2
	.byte		VOICE , 91
	.byte		VOL   , 127*se_kaifuku_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N02   , Cn3 , v112
	.byte	W04
	.byte		N02   
	.byte	W04
	.byte		VOICE , 90
	.byte		N15   
	.byte	W16
@ 001   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_kaifuku:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_kaifuku_pri	@ Priority
	.byte	se_kaifuku_rev	@ Reverb.

	.word	se_kaifuku_grp

	.word	se_kaifuku_1

	.end
