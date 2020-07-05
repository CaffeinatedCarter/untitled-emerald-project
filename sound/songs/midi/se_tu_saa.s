	.include "MPlayDef.s"

	.equ	se_tu_saa_grp, voicegroup127
	.equ	se_tu_saa_pri, 4
	.equ	se_tu_saa_rev, reverb_set+50
	.equ	se_tu_saa_mvl, 90
	.equ	se_tu_saa_key, 0
	.equ	se_tu_saa_tbs, 1
	.equ	se_tu_saa_exg, 1
	.equ	se_tu_saa_cmp, 1

	.section .rodata
	.global	se_tu_saa
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_tu_saa_1:
	.byte	KEYSH , se_tu_saa_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 220*se_tu_saa_tbs/2
	.byte		VOICE , 123
	.byte		VOL   , 127*se_tu_saa_mvl/mxv
	.byte		N03   , Cn4 , v060
	.byte	W03
	.byte		VOL   , 88*se_tu_saa_mvl/mxv
	.byte		N32   , Gs4 
	.byte	W03
@ 001   ----------------------------------------
	.byte		VOL   , 96*se_tu_saa_mvl/mxv
	.byte	W03
	.byte		        102*se_tu_saa_mvl/mxv
	.byte	W03
@ 002   ----------------------------------------
	.byte		        111*se_tu_saa_mvl/mxv
	.byte	W03
	.byte		        120*se_tu_saa_mvl/mxv
	.byte	W03
@ 003   ----------------------------------------
	.byte		        127*se_tu_saa_mvl/mxv
	.byte	W06
@ 004   ----------------------------------------
	.byte	W06
@ 005   ----------------------------------------
	.byte	W06
@ 006   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_tu_saa:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_tu_saa_pri	@ Priority
	.byte	se_tu_saa_rev	@ Reverb.

	.word	se_tu_saa_grp

	.word	se_tu_saa_1

	.end
