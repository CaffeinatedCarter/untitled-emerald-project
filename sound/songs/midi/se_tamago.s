	.include "MPlayDef.s"

	.equ	se_tamago_grp, voicegroup128
	.equ	se_tamago_pri, 5
	.equ	se_tamago_rev, reverb_set+50
	.equ	se_tamago_mvl, 120
	.equ	se_tamago_key, 0
	.equ	se_tamago_tbs, 1
	.equ	se_tamago_exg, 1
	.equ	se_tamago_cmp, 1

	.section .rodata
	.global	se_tamago
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_tamago_1:
	.byte	KEYSH , se_tamago_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 150*se_tamago_tbs/2
	.byte		VOICE , 21
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 127*se_tamago_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N01   , Bn5 , v127
	.byte	W01
	.byte		        Cn5 , v100
	.byte	W01
	.byte		VOICE , 18
	.byte		N01   , Cn4 , v127
	.byte	W02
	.byte		VOICE , 36
	.byte		N19   , Cn6 , v040
	.byte	W02
	.byte		VOL   , 67*se_tamago_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOL   , 82*se_tamago_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 97*se_tamago_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 113*se_tamago_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 127*se_tamago_mvl/mxv
	.byte	W05
	.byte		        116*se_tamago_mvl/mxv
	.byte	W01
	.byte		        108*se_tamago_mvl/mxv
	.byte	W02
	.byte		        89*se_tamago_mvl/mxv
	.byte	W01
	.byte		        72*se_tamago_mvl/mxv
	.byte	W01
	.byte		        60*se_tamago_mvl/mxv
	.byte	W01
	.byte		        26*se_tamago_mvl/mxv
	.byte	W01
	.byte		        11*se_tamago_mvl/mxv
	.byte	W02
@ 001   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_tamago_2:
	.byte	KEYSH , se_tamago_key+0
@ 000   ----------------------------------------
	.byte		VOL   , 127*se_tamago_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte	W07
	.byte		VOICE , 46
	.byte		N01   , Cn6 , v100
	.byte	W02
	.byte		BEND  , c_v+4
	.byte		N01   , Gn5 , v088
	.byte	W03
	.byte		BEND  , c_v+8
	.byte		N01   , Cn6 , v072
	.byte	W02
	.byte		BEND  , c_v+16
	.byte		N01   , Gn5 , v056
	.byte	W02
	.byte		BEND  , c_v+23
	.byte		N01   , Cn6 , v040
	.byte	W03
	.byte		BEND  , c_v+33
	.byte		N01   , Gn5 , v028
	.byte	W02
	.byte		BEND  , c_v+53
	.byte		N01   , Cn6 , v012
	.byte	W03
@ 001   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_tamago:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_tamago_pri	@ Priority
	.byte	se_tamago_rev	@ Reverb.

	.word	se_tamago_grp

	.word	se_tamago_1
	.word	se_tamago_2

	.end
