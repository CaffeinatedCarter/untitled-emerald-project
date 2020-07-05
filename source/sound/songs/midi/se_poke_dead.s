	.include "MPlayDef.s"

	.equ	se_poke_dead_grp, voicegroup127
	.equ	se_poke_dead_pri, 5
	.equ	se_poke_dead_rev, reverb_set+50
	.equ	se_poke_dead_mvl, 110
	.equ	se_poke_dead_key, 0
	.equ	se_poke_dead_tbs, 1
	.equ	se_poke_dead_exg, 1
	.equ	se_poke_dead_cmp, 1

	.section .rodata
	.global	se_poke_dead
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_poke_dead_1:
	.byte	KEYSH , se_poke_dead_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 90*se_poke_dead_tbs/2
	.byte		VOICE , 90
	.byte		VOL   , 127*se_poke_dead_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N09   , Cn4 , v100
	.byte	W06
@ 001   ----------------------------------------
	.byte	W06
@ 002   ----------------------------------------
	.byte	W06
@ 003   ----------------------------------------
	.byte	W06
@ 004   ----------------------------------------
	.byte	W06
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

se_poke_dead_2:
	.byte	KEYSH , se_poke_dead_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 124
	.byte		BENDR , 12
	.byte		VOL   , 95*se_poke_dead_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N05   , Gs4 , v060
	.byte	W03
	.byte		VOL   , 109*se_poke_dead_mvl/mxv
	.byte	W03
@ 001   ----------------------------------------
	.byte		        119*se_poke_dead_mvl/mxv
	.byte		N22   
	.byte	W03
	.byte		VOL   , 127*se_poke_dead_mvl/mxv
	.byte	W03
@ 002   ----------------------------------------
	.byte	W06
@ 003   ----------------------------------------
	.byte	W06
@ 004   ----------------------------------------
	.byte	W06
@ 005   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

se_poke_dead_3:
	.byte	KEYSH , se_poke_dead_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*se_poke_dead_mvl/mxv
	.byte		N06   , Cn3 , v080
	.byte	W06
@ 001   ----------------------------------------
	.byte		N18   , Cn3 , v092
	.byte	W06
@ 002   ----------------------------------------
	.byte	W06
@ 003   ----------------------------------------
	.byte	W06
@ 004   ----------------------------------------
	.byte	W06
@ 005   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_poke_dead:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_poke_dead_pri	@ Priority
	.byte	se_poke_dead_rev	@ Reverb.

	.word	se_poke_dead_grp

	.word	se_poke_dead_1
	.word	se_poke_dead_2
	.word	se_poke_dead_3

	.end
