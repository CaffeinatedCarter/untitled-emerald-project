	.include "MPlayDef.s"

	.equ	se_basabasa_grp, voicegroup128
	.equ	se_basabasa_pri, 5
	.equ	se_basabasa_rev, reverb_set+50
	.equ	se_basabasa_mvl, 105
	.equ	se_basabasa_key, 0
	.equ	se_basabasa_tbs, 1
	.equ	se_basabasa_exg, 1
	.equ	se_basabasa_cmp, 1

	.section .rodata
	.global	se_basabasa
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_basabasa_1:
	.byte	KEYSH , se_basabasa_key+0
se_basabasa_1_B1:
@ 000   ----------------------------------------
	.byte	TEMPO , 220*se_basabasa_tbs/2
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 49*se_basabasa_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		N07   , An1 , v127
	.byte	W01
	.byte		VOL   , 63*se_basabasa_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 83*se_basabasa_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 100*se_basabasa_mvl/mxv
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 127*se_basabasa_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+37
	.byte	W02
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+63
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 49*se_basabasa_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+1
	.byte		N06   
	.byte	W02
@ 001   ----------------------------------------
	.byte		VOL   , 63*se_basabasa_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		VOL   , 96*se_basabasa_mvl/mxv
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+48
	.byte	W01
	.byte		VOL   , 127*se_basabasa_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte	W10
@ 002   ----------------------------------------
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte	GOTO
	 .word	se_basabasa_1_B1
se_basabasa_1_B2:
@ 004   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_basabasa_2:
	.byte	KEYSH , se_basabasa_key+0
se_basabasa_2_B1:
@ 000   ----------------------------------------
	.byte		VOICE , 27
	.byte		PAN   , c_v+0
	.byte		VOL   , 63*se_basabasa_mvl/mxv
	.byte		N07   , Gn2 , v040
	.byte	W01
	.byte		VOL   , 84*se_basabasa_mvl/mxv
	.byte	W01
	.byte		        101*se_basabasa_mvl/mxv
	.byte	W01
	.byte		        127*se_basabasa_mvl/mxv
	.byte	W01
	.byte		        82*se_basabasa_mvl/mxv
	.byte	W02
	.byte		        28*se_basabasa_mvl/mxv
	.byte	W04
	.byte		VOICE , 25
	.byte		VOL   , 63*se_basabasa_mvl/mxv
	.byte		N06   , Gs4 
	.byte	W02
@ 001   ----------------------------------------
	.byte		VOL   , 98*se_basabasa_mvl/mxv
	.byte	W01
	.byte		        127*se_basabasa_mvl/mxv
	.byte	W02
	.byte		        63*se_basabasa_mvl/mxv
	.byte	W09
@ 002   ----------------------------------------
	.byte	W12
@ 003   ----------------------------------------
	.byte	W12
	.byte	GOTO
	 .word	se_basabasa_2_B1
se_basabasa_2_B2:
@ 004   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_basabasa:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_basabasa_pri	@ Priority
	.byte	se_basabasa_rev	@ Reverb.

	.word	se_basabasa_grp

	.word	se_basabasa_1
	.word	se_basabasa_2

	.end
