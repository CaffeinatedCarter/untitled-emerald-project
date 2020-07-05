	.include "MPlayDef.s"

	.equ	se_ru_bari_grp, voicegroup127
	.equ	se_ru_bari_pri, 4
	.equ	se_ru_bari_rev, reverb_set+50
	.equ	se_ru_bari_mvl, 100
	.equ	se_ru_bari_key, 0
	.equ	se_ru_bari_tbs, 1
	.equ	se_ru_bari_exg, 1
	.equ	se_ru_bari_cmp, 1

	.section .rodata
	.global	se_ru_bari
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_ru_bari_1:
	.byte	KEYSH , se_ru_bari_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_ru_bari_tbs/2
	.byte		VOICE , 9
	.byte		VOL   , 127*se_ru_bari_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Gn5 , v088
	.byte	W01
	.byte		N01   
	.byte	W02
@ 001   ----------------------------------------
	.byte		        Cn6 , v072
	.byte	W03
@ 002   ----------------------------------------
	.byte		        Cn6 , v056
	.byte	W03
@ 003   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_ru_bari_2:
	.byte	KEYSH , se_ru_bari_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 122
	.byte		VOL   , 127*se_ru_bari_mvl/mxv
	.byte		N01   , Gn2 , v112
	.byte	W02
	.byte		VOICE , 123
	.byte	W01
@ 001   ----------------------------------------
	.byte		N01   , Gs4 , v096
	.byte	W03
@ 002   ----------------------------------------
	.byte		        Gs4 , v112
	.byte	W03
@ 003   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_ru_bari:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_ru_bari_pri	@ Priority
	.byte	se_ru_bari_rev	@ Reverb.

	.word	se_ru_bari_grp

	.word	se_ru_bari_1
	.word	se_ru_bari_2

	.end
