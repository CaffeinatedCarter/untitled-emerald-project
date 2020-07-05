	.include "MPlayDef.s"

	.equ	se_dansa_grp, voicegroup127
	.equ	se_dansa_pri, 4
	.equ	se_dansa_rev, reverb_set+50
	.equ	se_dansa_mvl, 100
	.equ	se_dansa_key, 0
	.equ	se_dansa_tbs, 1
	.equ	se_dansa_exg, 1
	.equ	se_dansa_cmp, 1

	.section .rodata
	.global	se_dansa
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_dansa_1:
	.byte	KEYSH , se_dansa_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_dansa_tbs/2
	.byte		VOICE , 85
	.byte		VOL   , 127*se_dansa_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N02   , Ds2 , v052
	.byte	W02
	.byte		VOICE , 86
	.byte		N06   , Gn3 , v092
	.byte	W01
@ 001   ----------------------------------------
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_dansa:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_dansa_pri	@ Priority
	.byte	se_dansa_rev	@ Reverb.

	.word	se_dansa_grp

	.word	se_dansa_1

	.end
