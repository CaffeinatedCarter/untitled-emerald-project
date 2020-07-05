	.include "MPlayDef.s"

	.equ	se_bowa2_grp, voicegroup127
	.equ	se_bowa2_pri, 5
	.equ	se_bowa2_rev, reverb_set+50
	.equ	se_bowa2_mvl, 100
	.equ	se_bowa2_key, 0
	.equ	se_bowa2_tbs, 1
	.equ	se_bowa2_exg, 1
	.equ	se_bowa2_cmp, 1

	.section .rodata
	.global	se_bowa2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_bowa2_1:
	.byte	KEYSH , se_bowa2_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 90*se_bowa2_tbs/2
	.byte		VOICE , 86
	.byte		VOL   , 127*se_bowa2_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Gn1 , v100
	.byte	W03
@ 001   ----------------------------------------
	.byte		N05   , Fn2 
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte		N06   , Fn2 , v052
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_bowa2_2:
	.byte	KEYSH , se_bowa2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*se_bowa2_mvl/mxv
	.byte		BENDR , 12
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 , v052
	.byte	W03
@ 001   ----------------------------------------
	.byte		        Cn2 , v112
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte		        Cn1 , v092
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

se_bowa2_3:
	.byte	KEYSH , se_bowa2_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 124
	.byte		VOL   , 127*se_bowa2_mvl/mxv
	.byte		N03   , Gn3 , v052
	.byte	W03
@ 001   ----------------------------------------
	.byte		N06   , Gs4 
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte		        Gs4 , v020
	.byte	W03
@ 004   ----------------------------------------
	.byte	W03
@ 005   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_bowa2:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_bowa2_pri	@ Priority
	.byte	se_bowa2_rev	@ Reverb.

	.word	se_bowa2_grp

	.word	se_bowa2_1
	.word	se_bowa2_2
	.word	se_bowa2_3

	.end
