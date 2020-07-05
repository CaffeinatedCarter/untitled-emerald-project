	.include "MPlayDef.s"

	.equ	se_fu_zuzuzu_grp, voicegroup127
	.equ	se_fu_zuzuzu_pri, 4
	.equ	se_fu_zuzuzu_rev, reverb_set+50
	.equ	se_fu_zuzuzu_mvl, 127
	.equ	se_fu_zuzuzu_key, 0
	.equ	se_fu_zuzuzu_tbs, 1
	.equ	se_fu_zuzuzu_exg, 1
	.equ	se_fu_zuzuzu_cmp, 1

	.section .rodata
	.global	se_fu_zuzuzu
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

se_fu_zuzuzu_1:
	.byte	KEYSH , se_fu_zuzuzu_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*se_fu_zuzuzu_tbs/2
	.byte		VOICE , 126
	.byte		VOL   , 127*se_fu_zuzuzu_mvl/mxv
	.byte		N08   , An2 , v112
	.byte	W03
@ 001   ----------------------------------------
	.byte	W03
@ 002   ----------------------------------------
	.byte	W02
	.byte		N01   , Gs2 
	.byte	W01
@ 003   ----------------------------------------
	.byte	W01
	.byte		N08   , An2 , v096
	.byte	W02
@ 004   ----------------------------------------
	.byte	W03
@ 005   ----------------------------------------
	.byte	W03
@ 006   ----------------------------------------
	.byte	W01
	.byte		N01   , Gs2 , v092
	.byte	W01
	.byte		N08   , An2 , v080
	.byte	W01
@ 007   ----------------------------------------
	.byte	W03
@ 008   ----------------------------------------
	.byte	W03
@ 009   ----------------------------------------
	.byte	W02
	.byte		N01   , Gs2 , v076
	.byte	W01
@ 010   ----------------------------------------
	.byte		N08   , An2 , v064
	.byte	W03
@ 011   ----------------------------------------
	.byte	W03
@ 012   ----------------------------------------
	.byte	W03
@ 013   ----------------------------------------
	.byte		N01   , Gs2 , v060
	.byte	W02
	.byte		N09   , An2 , v048
	.byte	W01
@ 014   ----------------------------------------
	.byte	W03
@ 015   ----------------------------------------
	.byte	W03
@ 016   ----------------------------------------
	.byte	W02
	.byte		N01   , Gs2 , v040
	.byte	W01
@ 017   ----------------------------------------
	.byte	W03
@ 018   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

se_fu_zuzuzu:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	se_fu_zuzuzu_pri	@ Priority
	.byte	se_fu_zuzuzu_rev	@ Reverb.

	.word	se_fu_zuzuzu_grp

	.word	se_fu_zuzuzu_1

	.end
