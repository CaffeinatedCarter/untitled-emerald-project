	.include "MPlayDef.s"

	.equ	se_suikomu_grp, voicegroup127
	.equ	se_suikomu_pri, 5
	.equ	se_suikomu_rev, reverb_set+50
	.equ	se_suikomu_mvl, 100
	.equ	se_suikomu_key, 0
	.equ	se_suikomu_tbs, 1
	.equ	se_suikomu_exg, 1
	.equ	se_suikomu_cmp, 1

	.section .rodata
	.global	se_suikomu
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_suikomu_1:
	.byte	KEYSH , se_suikomu_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 13
	.byte		BENDR , 12
	.byte		VOL   , 16*se_suikomu_mvl/mxv
	.byte		BEND  , c_v+49
	.byte		N06   , Gn4 , v080
	.byte	W01
	.byte		VOL   , 56*se_suikomu_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 96*se_suikomu_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
@ 001   ----------------------------------------
	.byte		VOL   , 111*se_suikomu_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 127*se_suikomu_mvl/mxv
	.byte		BEND  , c_v+54
	.byte	W01
	.byte		        c_v+63
	.byte	W01
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte		N03   , Gn4 , v040
	.byte	W03
@ 004   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_suikomu_2:
	.byte	KEYSH , se_suikomu_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 123
	.byte		VOL   , 75*se_suikomu_mvl/mxv
	.byte		N06   , Gs4 , v052
	.byte	W01
	.byte		VOL   , 92*se_suikomu_mvl/mxv
	.byte	W01
	.byte		        115*se_suikomu_mvl/mxv
	.byte	W01
@ 001   ----------------------------------------
	.byte		        127*se_suikomu_mvl/mxv
	.byte	W03
@ 002   ----------------------------------------
	.byte	W03
@ 003   ----------------------------------------
	.byte		N03   , Gs4 , v024
	.byte	W03
@ 004   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_suikomu:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_suikomu_pri	@ Priority
	.byte	se_suikomu_rev	@ Reverb.

	.word	se_suikomu_grp

	.word	se_suikomu_1
	.word	se_suikomu_2

	.end
