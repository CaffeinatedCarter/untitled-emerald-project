	.include "MPlayDef.s"

	.equ	se_w028_grp, voicegroup128
	.equ	se_w028_pri, 4
	.equ	se_w028_rev, reverb_set+50
	.equ	se_w028_mvl, 110
	.equ	se_w028_key, 0
	.equ	se_w028_tbs, 1
	.equ	se_w028_exg, 1
	.equ	se_w028_cmp, 1

	.section .rodata
	.global	se_w028
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_w028_1:
	.byte	KEYSH , se_w028_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_w028_tbs/2
	.byte		VOICE , 26
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*se_w028_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Gn5 , v092
	.byte	W02
	.byte		        Cn5 
	.byte	W04
	.byte		VOICE , 36
	.byte		VOL   , 97*se_w028_mvl/mxv
	.byte		PAN   , c_v+5
	.byte		N15   , Gn5 , v040
	.byte	W01
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		VOL   , 109*se_w028_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		VOL   , 127*se_w028_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		VOL   , 111*se_w028_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		VOL   , 79*se_w028_mvl/mxv
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		VOL   , 18*se_w028_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v-10
	.byte	W03
@ 001   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_w028_2:
	.byte	KEYSH , se_w028_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 25
	.byte		VOL   , 127*se_w028_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Cn3 , v040
	.byte	W02
	.byte		N01   
	.byte	W22
@ 001   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_w028:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_w028_pri	@ Priority
	.byte	se_w028_rev	@ Reverb.

	.word	se_w028_grp

	.word	se_w028_1
	.word	se_w028_2

	.end
