	.include "MPlayDef.s"

	.equ	se_nigeru_grp, voicegroup127
	.equ	se_nigeru_pri, 5
	.equ	se_nigeru_rev, reverb_set+50
	.equ	se_nigeru_mvl, 90
	.equ	se_nigeru_key, 0
	.equ	se_nigeru_tbs, 1
	.equ	se_nigeru_exg, 1
	.equ	se_nigeru_cmp, 1

	.section .rodata
	.global	se_nigeru
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_nigeru_1:
	.byte	KEYSH , se_nigeru_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_nigeru_tbs/2
	.byte		VOICE , 126
	.byte		VOL   , 127*se_nigeru_mvl/mxv
	.byte		N03   , Fn4 , v120
	.byte	W03
@ 001   ----------------------------------------
	.byte		        Gs4 , v112
	.byte	W03
@ 002   ----------------------------------------
	.byte		N02   , Fs3 
	.byte	W03
@ 003   ----------------------------------------
	.byte		N03   , Gs4 , v072
	.byte	W03
@ 004   ----------------------------------------
	.byte		N02   , Fs3 , v096
	.byte	W03
@ 005   ----------------------------------------
	.byte		N03   , Gs4 , v056
	.byte	W03
@ 006   ----------------------------------------
	.byte		N02   , Fs3 , v080
	.byte	W03
@ 007   ----------------------------------------
	.byte		N03   , Gs4 , v040
	.byte	W03
@ 008   ----------------------------------------
	.byte		N02   , Fs3 , v064
	.byte	W03
@ 009   ----------------------------------------
	.byte		N03   , Gs4 , v024
	.byte	W03
@ 010   ----------------------------------------
	.byte		N02   , Fs3 , v048
	.byte	W03
@ 011   ----------------------------------------
	.byte		N03   , Gs4 , v020
	.byte	W03
@ 012   ----------------------------------------
	.byte		        Fs3 , v028
	.byte	W03
@ 013   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_nigeru:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_nigeru_pri	@ Priority
	.byte	se_nigeru_rev	@ Reverb.

	.word	se_nigeru_grp

	.word	se_nigeru_1

	.end
