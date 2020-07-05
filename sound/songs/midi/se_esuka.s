	.include "MPlayDef.s"

	.equ	se_esuka_grp, voicegroup128
	.equ	se_esuka_pri, 4
	.equ	se_esuka_rev, reverb_set+50
	.equ	se_esuka_mvl, 100
	.equ	se_esuka_key, 0
	.equ	se_esuka_tbs, 1
	.equ	se_esuka_exg, 1
	.equ	se_esuka_cmp, 1

	.section .rodata
	.global	se_esuka
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_esuka_1:
	.byte	KEYSH , se_esuka_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_esuka_tbs/2
	.byte		VOICE , 38
	.byte		BENDR , 2
	.byte		VOL   , 65*se_esuka_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		TIE   , En5 , v080
	.byte	W01
	.byte		BEND  , c_v-26
	.byte	W01
	.byte		VOL   , 72*se_esuka_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		VOL   , 79*se_esuka_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		VOL   , 88*se_esuka_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 96*se_esuka_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		VOL   , 108*se_esuka_mvl/mxv
	.byte	W02
	.byte		        117*se_esuka_mvl/mxv
	.byte	W02
	.byte		        127*se_esuka_mvl/mxv
	.byte	W08
@ 001   ----------------------------------------
	.byte	W24
@ 002   ----------------------------------------
	.byte	W24
@ 003   ----------------------------------------
	.byte	W24
@ 004   ----------------------------------------
	.byte	W03
	.byte		        122*se_esuka_mvl/mxv
	.byte	W03
	.byte		        112*se_esuka_mvl/mxv
	.byte	W03
	.byte		        103*se_esuka_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		VOL   , 94*se_esuka_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W02
	.byte		VOL   , 79*se_esuka_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W02
	.byte		VOL   , 63*se_esuka_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W03
	.byte		VOL   , 50*se_esuka_mvl/mxv
	.byte		BEND  , c_v-26
	.byte	W02
	.byte		VOL   , 32*se_esuka_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W03
	.byte		EOT   
@ 005   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_esuka:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_esuka_pri	@ Priority
	.byte	se_esuka_rev	@ Reverb.

	.word	se_esuka_grp

	.word	se_esuka_1

	.end
