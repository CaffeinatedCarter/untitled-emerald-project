	.include "MPlayDef.s"

	.equ	se_kon_grp, voicegroup128
	.equ	se_kon_pri, 4
	.equ	se_kon_rev, reverb_set+50
	.equ	se_kon_mvl, 100
	.equ	se_kon_key, 0
	.equ	se_kon_tbs, 1
	.equ	se_kon_exg, 1
	.equ	se_kon_cmp, 1

	.section .rodata
	.global	se_kon
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_kon_1:
	.byte	KEYSH , se_kon_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_kon_tbs/2
	.byte		VOICE , 16
	.byte		VOL   , 127*se_kon_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N12   , Fn4 , v112
	.byte	W12
@ 001   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_kon_2:
	.byte	KEYSH , se_kon_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 127*se_kon_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N09   , Fn4 , v100
	.byte	W12
@ 001   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_kon:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_kon_pri	@ Priority
	.byte	se_kon_rev	@ Reverb.

	.word	se_kon_grp

	.word	se_kon_1
	.word	se_kon_2

	.end
