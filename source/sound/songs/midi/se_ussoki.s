	.include "MPlayDef.s"

	.equ	se_ussoki_grp, voicegroup129
	.equ	se_ussoki_pri, 5
	.equ	se_ussoki_rev, reverb_set+50
	.equ	se_ussoki_mvl, 77
	.equ	se_ussoki_key, 0
	.equ	se_ussoki_tbs, 1
	.equ	se_ussoki_exg, 1
	.equ	se_ussoki_cmp, 1

	.section .rodata
	.global	se_ussoki
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_ussoki_1:
	.byte	KEYSH , se_ussoki_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 100*se_ussoki_tbs/2
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*se_ussoki_mvl/mxv
	.byte		N03   , Cn5 , v096
	.byte	W06
	.byte		N01   , Gn5 , v064
	.byte	W06
@ 001   ----------------------------------------
	.byte		N03   , Cn5 , v100
	.byte	W06
	.byte		N01   , Gn5 , v064
	.byte	W06
@ 002   ----------------------------------------
se_ussoki_1_002:
	.byte		N03   , Cn5 , v096
	.byte	W06
	.byte		N01   , Gn5 , v064
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
	.byte	PATT
	 .word	se_ussoki_1_002
@ 004   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_ussoki:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_ussoki_pri	@ Priority
	.byte	se_ussoki_rev	@ Reverb.

	.word	se_ussoki_grp

	.word	se_ussoki_1

	.end
