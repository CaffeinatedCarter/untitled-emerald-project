	.include "MPlayDef.s"

	.equ	mus_bd_time_grp, voicegroup038
	.equ	mus_bd_time_pri, 0
	.equ	mus_bd_time_rev, reverb_set+50
	.equ	mus_bd_time_mvl, 80
	.equ	mus_bd_time_key, 0
	.equ	mus_bd_time_tbs, 1
	.equ	mus_bd_time_exg, 1
	.equ	mus_bd_time_cmp, 1

	.section .rodata
	.global	mus_bd_time
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_bd_time_1:
	.byte	KEYSH , mus_bd_time_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 180*mus_bd_time_tbs/2
	.byte	W48
@ 001   ----------------------------------------
	.byte		VOICE , 38
	.byte		VOL   , 127*mus_bd_time_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		N06   , Dn1 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        An0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 003   ----------------------------------------
	.byte	TEMPO , 170*mus_bd_time_tbs/2
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	TEMPO , 160*mus_bd_time_tbs/2
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	TEMPO , 150*mus_bd_time_tbs/2
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
@ 004   ----------------------------------------
	.byte	TEMPO , 140*mus_bd_time_tbs/2
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	TEMPO , 130*mus_bd_time_tbs/2
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte	TEMPO , 120*mus_bd_time_tbs/2
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	TEMPO , 110*mus_bd_time_tbs/2
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 005   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 006   ----------------------------------------
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 007   ----------------------------------------
mus_bd_time_1_007:
	.byte		N06   , An1 , v127
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_1_007
mus_bd_time_1_B1:
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_1_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_1_007
	.byte	GOTO
	 .word	mus_bd_time_1_B1
mus_bd_time_1_B2:
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_bd_time_2:
	.byte	KEYSH , mus_bd_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 127*mus_bd_time_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Dn3 , v092
	.byte	W06
	.byte		        Fs3 , v072
	.byte	W06
	.byte		        An3 , v040
	.byte	W06
	.byte		        Cs4 , v048
	.byte	W06
	.byte		        En4 , v056
	.byte	W06
	.byte		        Gn4 , v064
	.byte	W06
	.byte		        Bn4 , v068
	.byte	W06
	.byte		        Dn5 , v076
	.byte	W06
@ 001   ----------------------------------------
	.byte		N03   , Dn5 , v080
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N03   , Dn5 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W12
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W12
	.byte		N12   , An4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N03   , Fn5 
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N03   , Fn5 
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N03   , Fn5 
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N03   , Fn5 
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N03   , Fn5 
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N03   , Fn5 
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
	.byte		N03   , Fn5 
	.byte	W12
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N03   , Fn5 
	.byte	W12
	.byte		N12   , Cn5 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N32   , Gn4 
	.byte	W36
	.byte		N03   
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N03   , Gn5 
	.byte	W12
	.byte		N12   , Dn5 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N32   , Gn4 
	.byte	W36
	.byte		N03   
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N03   , Gn5 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
@ 007   ----------------------------------------
mus_bd_time_2_007:
	.byte		N06   , An4 , v080
	.byte	W12
	.byte		N06   
	.byte	W36
	.byte		N24   , En4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_bd_time_2_008:
	.byte		N06   , An4 , v080
	.byte	W12
	.byte		N06   
	.byte	W60
	.byte		N06   
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	PEND
mus_bd_time_2_B1:
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_2_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_2_008
	.byte	GOTO
	 .word	mus_bd_time_2_B1
mus_bd_time_2_B2:
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_bd_time_3:
	.byte	KEYSH , mus_bd_time_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 127*mus_bd_time_mvl/mxv
	.byte		PAN   , c_v-10
	.byte	W03
	.byte		N06   , En3 , v080
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Bn3 , v044
	.byte	W06
	.byte		        Dn4 , v052
	.byte	W06
	.byte		        Fs4 , v060
	.byte	W06
	.byte		        An4 , v064
	.byte	W06
	.byte		        Cs5 , v072
	.byte	W06
	.byte		N03   , En5 , v080
	.byte	W03
@ 001   ----------------------------------------
	.byte		        An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N03   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N03   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N03   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N03   , An4 
	.byte	W12
	.byte		N12   , An3 
	.byte	W12
	.byte		N03   , An4 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , An4 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N03   , Cn5 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N03   
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
@ 005   ----------------------------------------
	.byte		N32   , Dn4 
	.byte	W36
	.byte		N03   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N32   , Dn4 
	.byte	W36
	.byte		N03   
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N03   , Dn5 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
@ 007   ----------------------------------------
mus_bd_time_3_007:
	.byte		N06   , En4 , v080
	.byte	W12
	.byte		N06   
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte	PEND
@ 008   ----------------------------------------
mus_bd_time_3_008:
	.byte		N06   , En4 , v080
	.byte	W12
	.byte		N06   
	.byte	W60
	.byte		N06   
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	PEND
mus_bd_time_3_B1:
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_3_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_3_008
	.byte	GOTO
	 .word	mus_bd_time_3_B1
mus_bd_time_3_B2:
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_bd_time_4:
	.byte	KEYSH , mus_bd_time_key+0
@ 000   ----------------------------------------
	.byte	W48
@ 001   ----------------------------------------
	.byte		VOICE , 4
	.byte		VOL   , 127*mus_bd_time_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Dn5 , v052
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 003   ----------------------------------------
mus_bd_time_4_003:
	.byte		N06   , Fn5 , v052
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_4_003
@ 005   ----------------------------------------
mus_bd_time_4_005:
	.byte		N06   , Gn5 , v052
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_4_005
@ 007   ----------------------------------------
mus_bd_time_4_007:
	.byte		N06   , An5 , v052
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_4_007
mus_bd_time_4_B1:
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_4_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_4_007
	.byte	GOTO
	 .word	mus_bd_time_4_B1
mus_bd_time_4_B2:
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_bd_time_5:
	.byte	KEYSH , mus_bd_time_key+0
@ 000   ----------------------------------------
	.byte	W48
@ 001   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 127*mus_bd_time_mvl/mxv
	.byte		PAN   , c_v+48
	.byte	W12
	.byte		N06   , Dn5 , v032
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        An4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Cn5 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
@ 008   ----------------------------------------
mus_bd_time_5_008:
	.byte		N06   , En5 , v032
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte	PEND
mus_bd_time_5_B1:
@ 009   ----------------------------------------
	.byte		N06   , En5 , v032
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        An5 
	.byte	W06
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_5_008
	.byte	GOTO
	 .word	mus_bd_time_5_B1
mus_bd_time_5_B2:
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_bd_time_6:
	.byte	KEYSH , mus_bd_time_key+0
@ 000   ----------------------------------------
	.byte	W48
@ 001   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 127*mus_bd_time_mvl/mxv
	.byte		N03   , Dn2 , v064
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 002   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Fn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
@ 005   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
@ 007   ----------------------------------------
mus_bd_time_6_007:
	.byte		N03   , An2 , v064
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte	PEND
@ 008   ----------------------------------------
mus_bd_time_6_008:
	.byte		N03   , An2 , v064
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	PEND
mus_bd_time_6_B1:
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_6_007
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_6_008
	.byte	GOTO
	 .word	mus_bd_time_6_B1
mus_bd_time_6_B2:
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_bd_time_7:
	.byte	KEYSH , mus_bd_time_key+0
@ 000   ----------------------------------------
	.byte	W48
@ 001   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_bd_time_mvl/mxv
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
@ 002   ----------------------------------------
mus_bd_time_7_002:
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte	PEND
@ 003   ----------------------------------------
mus_bd_time_7_003:
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W12
	.byte		        Fs1 , v072
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_7_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_7_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_7_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_7_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_7_002
mus_bd_time_7_B1:
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_7_003
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_bd_time_7_002
	.byte	GOTO
	 .word	mus_bd_time_7_B1
mus_bd_time_7_B2:
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_bd_time:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_bd_time_pri	@ Priority
	.byte	mus_bd_time_rev	@ Reverb.

	.word	mus_bd_time_grp

	.word	mus_bd_time_1
	.word	mus_bd_time_2
	.word	mus_bd_time_3
	.word	mus_bd_time_4
	.word	mus_bd_time_5
	.word	mus_bd_time_6
	.word	mus_bd_time_7

	.end
