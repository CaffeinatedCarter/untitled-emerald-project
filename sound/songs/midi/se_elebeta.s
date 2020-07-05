	.include "MPlayDef.s"

	.equ	se_elebeta_grp, voicegroup128
	.equ	se_elebeta_pri, 4
	.equ	se_elebeta_rev, reverb_set+50
	.equ	se_elebeta_mvl, 100
	.equ	se_elebeta_key, 0
	.equ	se_elebeta_tbs, 1
	.equ	se_elebeta_exg, 1
	.equ	se_elebeta_cmp, 1

	.section .rodata
	.global	se_elebeta
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_elebeta_1:
	.byte	KEYSH , se_elebeta_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_elebeta_tbs/2
	.byte		VOICE , 38
	.byte		BENDR , 2
	.byte		VOL   , 127*se_elebeta_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Fs4 , v080
	.byte	W24
@ 001   ----------------------------------------
	.byte	W24
@ 002   ----------------------------------------
	.byte	W24
@ 003   ----------------------------------------
	.byte	W24
@ 004   ----------------------------------------
	.byte	W24
@ 005   ----------------------------------------
	.byte	W24
@ 006   ----------------------------------------
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
@ 008   ----------------------------------------
	.byte	W24
	.byte		EOT   
@ 009   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_elebeta_2:
	.byte	KEYSH , se_elebeta_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		VOL   , 127*se_elebeta_mvl/mxv
	.byte		TIE   , Fn3 , v032
	.byte	W24
@ 001   ----------------------------------------
	.byte	W24
@ 002   ----------------------------------------
	.byte	W24
@ 003   ----------------------------------------
	.byte	W24
@ 004   ----------------------------------------
	.byte	W24
@ 005   ----------------------------------------
	.byte	W24
@ 006   ----------------------------------------
	.byte	W24
@ 007   ----------------------------------------
	.byte	W24
@ 008   ----------------------------------------
	.byte	W24
	.byte		EOT   
@ 009   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_elebeta:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_elebeta_pri	@ Priority
	.byte	se_elebeta_rev	@ Reverb.

	.word	se_elebeta_grp

	.word	se_elebeta_1
	.word	se_elebeta_2

	.end
