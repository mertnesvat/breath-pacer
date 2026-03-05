subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og1 "

pagewidth 120

	opt flic

	processor	12F675
include "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/12f675.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 52 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
INDF equ 00h ;# 
# 72 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TMR0 equ 01h ;# 
# 92 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PCL equ 02h ;# 
# 112 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
STATUS equ 03h ;# 
# 198 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
FSR equ 04h ;# 
# 218 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
GPIO equ 05h ;# 
# 306 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PCLATH equ 0Ah ;# 
# 326 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
INTCON equ 0Bh ;# 
# 404 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PIR1 equ 0Ch ;# 
# 452 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TMR1 equ 0Eh ;# 
# 459 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TMR1L equ 0Eh ;# 
# 479 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TMR1H equ 0Fh ;# 
# 499 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
T1CON equ 010h ;# 
# 564 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
CMCON equ 019h ;# 
# 623 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
ADRESH equ 01Eh ;# 
# 643 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
ADCON0 equ 01Fh ;# 
# 727 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
OPTION_REG equ 081h ;# 
# 797 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TRISIO equ 085h ;# 
# 847 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PIE1 equ 08Ch ;# 
# 895 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PCON equ 08Eh ;# 
# 929 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
OSCCAL equ 090h ;# 
# 989 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
WPU equ 095h ;# 
# 1034 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
IOC equ 096h ;# 
# 1039 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
IOCB equ 096h ;# 
# 1208 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
VRCON equ 099h ;# 
# 1268 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EEDATA equ 09Ah ;# 
# 1273 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EEDAT equ 09Ah ;# 
# 1306 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EEADR equ 09Bh ;# 
# 1326 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EECON1 equ 09Ch ;# 
# 1364 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EECON2 equ 09Dh ;# 
# 1384 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
ADRESL equ 09Eh ;# 
# 1404 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
ANSEL equ 09Fh ;# 
# 52 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
INDF equ 00h ;# 
# 72 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TMR0 equ 01h ;# 
# 92 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PCL equ 02h ;# 
# 112 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
STATUS equ 03h ;# 
# 198 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
FSR equ 04h ;# 
# 218 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
GPIO equ 05h ;# 
# 306 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PCLATH equ 0Ah ;# 
# 326 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
INTCON equ 0Bh ;# 
# 404 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PIR1 equ 0Ch ;# 
# 452 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TMR1 equ 0Eh ;# 
# 459 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TMR1L equ 0Eh ;# 
# 479 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TMR1H equ 0Fh ;# 
# 499 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
T1CON equ 010h ;# 
# 564 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
CMCON equ 019h ;# 
# 623 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
ADRESH equ 01Eh ;# 
# 643 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
ADCON0 equ 01Fh ;# 
# 727 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
OPTION_REG equ 081h ;# 
# 797 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
TRISIO equ 085h ;# 
# 847 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PIE1 equ 08Ch ;# 
# 895 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
PCON equ 08Eh ;# 
# 929 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
OSCCAL equ 090h ;# 
# 989 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
WPU equ 095h ;# 
# 1034 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
IOC equ 096h ;# 
# 1039 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
IOCB equ 096h ;# 
# 1208 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
VRCON equ 099h ;# 
# 1268 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EEDATA equ 09Ah ;# 
# 1273 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EEDAT equ 09Ah ;# 
# 1306 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EEADR equ 09Bh ;# 
# 1326 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EECON1 equ 09Ch ;# 
# 1364 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
EECON2 equ 09Dh ;# 
# 1384 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
ADRESL equ 09Eh ;# 
# 1404 "/Applications/microchip/mplabx/v6.30/packs/Microchip/PIC10-12Fxxx_DFP/1.8.184/xc8/pic/include/proc/pic12f675.h"
ANSEL equ 09Fh ;# 
	debug_source C
	FNCALL	_main,___awmod
	FNCALL	_main,_breathe
	FNCALL	_main,_enter_sleep
	FNCALL	_breathe,_fade_led
	FNCALL	_breathe,_hold_led
	FNCALL	_hold_led,___wmul
	FNCALL	_hold_led,_pwm_frame
	FNCALL	_fade_led,_pwm_frame
	FNROOT	_main
	global	_btn_count
	global	_GPIO
_GPIO	set	0x5
	global	_GPIE
_GPIE	set	0x5B
	global	_GPIF
_GPIF	set	0x58
	global	_GP3
_GP3	set	0x2B
	global	_TRISIO
_TRISIO	set	0x85
	global	_ANSEL
_ANSEL	set	0x9F
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "INTRCIO"
	config WDTE = "OFF"
	config PWRTE = "ON"
	config MCLRE = "OFF"
	config BOREN = "ON"
	config CP = "OFF"
	config CPD = "OFF"
	file	"dist/BreathPacer.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_btn_count:
       ds      1

	file	"dist/BreathPacer.s"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	clrf	((__pbssBANK0)+0)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
??_fade_led:	; 1 bytes @ 0x0
??_breathe:	; 1 bytes @ 0x0
??_enter_sleep:	; 1 bytes @ 0x0
??___wmul:	; 1 bytes @ 0x0
??___awmod:	; 1 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_pwm_frame:	; 1 bytes @ 0x0
?_enter_sleep:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	pwm_frame@duty
pwm_frame@duty:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
??_pwm_frame:	; 1 bytes @ 0x1
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	pwm_frame@led
pwm_frame@led:	; 1 bytes @ 0x3
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	_pwm_frame$43
_pwm_frame$43:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	pwm_frame@i
pwm_frame@i:	; 1 bytes @ 0x6
	ds	1
?_fade_led:	; 1 bytes @ 0x7
?_hold_led:	; 1 bytes @ 0x7
	global	fade_led@duration_sec
fade_led@duration_sec:	; 1 bytes @ 0x7
	global	hold_led@duration_sec
hold_led@duration_sec:	; 1 bytes @ 0x7
	ds	1
	global	fade_led@f
fade_led@f:	; 1 bytes @ 0x8
??_hold_led:	; 1 bytes @ 0x8
	ds	1
	global	fade_led@f_52
fade_led@f_52:	; 1 bytes @ 0x9
	ds	1
	global	fade_led@led
fade_led@led:	; 1 bytes @ 0xA
	global	hold_led@frames
hold_led@frames:	; 2 bytes @ 0xA
	ds	1
	global	fade_led@fps
fade_led@fps:	; 1 bytes @ 0xB
	ds	1
	global	fade_led@duty
fade_led@duty:	; 1 bytes @ 0xC
	global	hold_led@led
hold_led@led:	; 1 bytes @ 0xC
	ds	1
	global	fade_led@duty_51
fade_led@duty_51:	; 1 bytes @ 0xD
	global	hold_led@f
hold_led@f:	; 2 bytes @ 0xD
	ds	2
?_breathe:	; 1 bytes @ 0xF
	global	breathe@hold1
breathe@hold1:	; 1 bytes @ 0xF
	ds	1
	global	breathe@exhale
breathe@exhale:	; 1 bytes @ 0x10
	ds	1
	global	breathe@hold2
breathe@hold2:	; 1 bytes @ 0x11
	ds	1
	global	breathe@inhale
breathe@inhale:	; 1 bytes @ 0x12
	ds	1
??_main:	; 1 bytes @ 0x13
	ds	2
	global	main@mode
main@mode:	; 1 bytes @ 0x15
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            62     22      23

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_breathe
;!    _breathe->_hold_led
;!    _hold_led->_pwm_frame
;!    _fade_led->_pwm_frame

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0    1292
;!                                             19 BANK0      3     3      0
;!                            ___awmod
;!                            _breathe
;!                        _enter_sleep
;! ---------------------------------------------------------------------------------
;! (1) _enter_sleep                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _breathe                                              4     1      3     948
;!                                             15 BANK0      4     1      3
;!                           _fade_led
;!                           _hold_led
;! ---------------------------------------------------------------------------------
;! (2) _hold_led                                             8     7      1     340
;!                                              7 BANK0      8     7      1
;!                             ___wmul
;!                          _pwm_frame
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4      94
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _fade_led                                             7     6      1     457
;!                                              7 BANK0      7     6      1
;!                          _pwm_frame
;! ---------------------------------------------------------------------------------
;! (3) _pwm_frame                                            7     6      1     146
;!                                              0 BANK0      7     6      1
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              6     2      4     298
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awmod
;!   _breathe
;!     _fade_led
;!       _pwm_frame
;!     _hold_led
;!       ___wmul
;!       _pwm_frame
;!   _enter_sleep
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON            0      0       0      0.0%
;!BITBANK0            62      0       0      0.0%
;!COMMON               0      0       0      0.0%
;!BANK0               62     22      23     37.1%
;!STACK                0      0       0      0.0%
;!DATA                 0      0      23      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 106 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mode            1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       1
;;      Temps:          0       2
;;      Totals:         0       3
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___awmod
;;		_breathe
;;		_enter_sleep
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	106
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	106
	
_main:	
;incstack = 0
	callstack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	107
	
l1034:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	line	108
	
l1036:	
	movlw	08h
	movwf	(133)^080h	;volatile
	line	109
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	111
	clrf	(main@mode)
	goto	l1050
	line	115
	
l1038:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(breathe@hold1)
	movlw	low(04h)
	movwf	(breathe@exhale)
	clrf	(breathe@hold2)
	movlw	low(04h)
	fcall	_breathe
	xorlw	0
	skipnz
	goto	u681
	goto	u680
u681:
	goto	l1038
u680:
	goto	l87
	line	116
	
l1040:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(breathe@hold1)
	movlw	low(06h)
	movwf	(breathe@exhale)
	clrf	(breathe@hold2)
	movlw	low(06h)
	fcall	_breathe
	xorlw	0
	skipnz
	goto	u691
	goto	u690
u691:
	goto	l1040
u690:
	goto	l87
	line	117
	
l1042:	
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(breathe@hold1)
	movlw	low(04h)
	movwf	(breathe@exhale)
	movlw	low(04h)
	movwf	(breathe@hold2)
	movlw	low(04h)
	fcall	_breathe
	xorlw	0
	skipnz
	goto	u701
	goto	u700
u701:
	goto	l1042
u700:
	goto	l87
	line	118
	
l1044:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(breathe@hold1)
	movlw	low(08h)
	movwf	(breathe@exhale)
	clrf	(breathe@hold2)
	movlw	low(04h)
	fcall	_breathe
	xorlw	0
	skipnz
	goto	u711
	goto	u710
u711:
	goto	l1044
u710:
	goto	l87
	line	119
	
l1046:	
	fcall	_enter_sleep
	goto	l87
	line	120
	
l1050:	
	movf	(main@mode),w
	; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           11     6 (fixed)
; simple_byte           16     9 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	asmopt push
	asmopt off
	xorlw	0^0	; case 0
	skipnz
	goto	l1038
	xorlw	1^0	; case 1
	skipnz
	goto	l1040
	xorlw	2^1	; case 2
	skipnz
	goto	l1042
	xorlw	3^2	; case 3
	skipnz
	goto	l1044
	xorlw	4^3	; case 4
	skipnz
	goto	l1046
	goto	l87
	asmopt pop

	line	123
	
l87:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u721
	goto	u720
u721:
	goto	l87
u720:
	line	124
	
l1052:	
	asmopt push
asmopt off
movlw	65
movwf	((??_main)+1)
	movlw	238
movwf	((??_main))
	u737:
decfsz	((??_main)),f
	goto	u737
	decfsz	((??_main)+1),f
	goto	u737
	nop
asmopt pop

	line	125
	
l1054:	
	movlw	05h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(main@mode),w
	addlw	low(01h)
	movwf	(___awmod@dividend)
	movlw	high(01h)
	skipnc
	movlw	(high(01h)+1)&0ffh
	movwf	((___awmod@dividend))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(main@mode)
	goto	l1050
	global	start
	ljmp	start
	callstack 0
	line	127
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_enter_sleep

;; *************** function _enter_sleep *****************
;; Defined at:
;;		line 94 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	94
global __ptext1
__ptext1:	;psect for function _enter_sleep
psect	text1
	file	"main.c"
	line	94
	
_enter_sleep:	
;incstack = 0
	callstack 7
; Regs used in _enter_sleep: [wreg+status,2]
	line	95
	
l778:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	96
	
l780:	
	movf	(5),w	;volatile
	line	97
	
l782:	
	bcf	(88/8),(88)&7	;volatile
	line	98
	
l784:	
	bsf	(91/8),(91)&7	;volatile
	line	99
# 99 "main.c"
sleep ;# 
psect	text1
	line	100
	
l786:	
	asmopt	push
	asmopt	off
	nop
	asmopt	pop
	line	101
	
l788:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(5),w	;volatile
	line	102
	
l790:	
	bcf	(88/8),(88)&7	;volatile
	line	103
	
l792:	
	bcf	(91/8),(91)&7	;volatile
	line	104
	
l62:	
	return
	callstack 0
GLOBAL	__end_of_enter_sleep
	__end_of_enter_sleep:
	signat	_enter_sleep,89
	global	_breathe

;; *************** function _breathe *****************
;; Defined at:
;;		line 84 in file "main.c"
;; Parameters:    Size  Location     Type
;;  inhale          1    wreg     unsigned char 
;;  hold1           1   15[BANK0 ] unsigned char 
;;  exhale          1   16[BANK0 ] unsigned char 
;;  hold2           1   17[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  inhale          1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       3
;;      Locals:         0       1
;;      Temps:          0       0
;;      Totals:         0       4
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_fade_led
;;		_hold_led
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	84
global __ptext2
__ptext2:	;psect for function _breathe
psect	text2
	file	"main.c"
	line	84
	
_breathe:	
;incstack = 0
	callstack 5
; Regs used in _breathe: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(breathe@inhale)
	line	86
	
l964:	
	movf	(breathe@inhale),w
	movwf	(fade_led@duration_sec)
	movlw	low(01h)
	fcall	_fade_led
	xorlw	0
	skipnz
	goto	u531
	goto	u530
u531:
	goto	l970
u530:
	
l966:	
	movlw	low(01h)
	goto	l56
	line	87
	
l970:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((breathe@hold1)),w
	btfsc	status,2
	goto	u541
	goto	u540
u541:
	goto	l978
u540:
	
l972:	
	movf	(breathe@hold1),w
	movwf	(hold_led@duration_sec)
	movlw	low(04h)
	fcall	_hold_led
	xorlw	0
	skipnz
	goto	u551
	goto	u550
u551:
	goto	l978
u550:
	goto	l966
	line	88
	
l978:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(breathe@exhale),w
	movwf	(fade_led@duration_sec)
	movlw	low(02h)
	fcall	_fade_led
	xorlw	0
	skipnz
	goto	u561
	goto	u560
u561:
	goto	l984
u560:
	goto	l966
	line	89
	
l984:	
	bcf	status, 5	;RP0=0, select bank0
	movf	((breathe@hold2)),w
	btfsc	status,2
	goto	u571
	goto	u570
u571:
	goto	l992
u570:
	
l986:	
	movf	(breathe@hold2),w
	movwf	(hold_led@duration_sec)
	movlw	low(04h)
	fcall	_hold_led
	xorlw	0
	skipnz
	goto	u581
	goto	u580
u581:
	goto	l992
u580:
	goto	l966
	line	90
	
l992:	
	movlw	low(0)
	line	91
	
l56:	
	return
	callstack 0
GLOBAL	__end_of_breathe
	__end_of_breathe:
	signat	_breathe,16505
	global	_hold_led

;; *************** function _hold_led *****************
;; Defined at:
;;		line 76 in file "main.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;;  duration_sec    1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1   12[BANK0 ] unsigned char 
;;  f               2   13[BANK0 ] unsigned short 
;;  frames          2   10[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       1
;;      Locals:         0       5
;;      Temps:          0       2
;;      Totals:         0       8
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___wmul
;;		_pwm_frame
;; This function is called by:
;;		_breathe
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	76
global __ptext3
__ptext3:	;psect for function _hold_led
psect	text3
	file	"main.c"
	line	76
	
_hold_led:	
;incstack = 0
	callstack 5
; Regs used in _hold_led: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(hold_led@led)
	line	77
	
l948:	
	movf	(hold_led@duration_sec),w
	movwf	(??_hold_led)
	clrf	(??_hold_led+1)
	movf	(0+(??_hold_led)),w
	movwf	(___wmul@multiplier)
	movf	(1+(??_hold_led)),w
	movwf	(___wmul@multiplier+1)
	movlw	064h
	movwf	(___wmul@multiplicand)
	movlw	0
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___wmul)),w
	movwf	(hold_led@frames+1)
	movf	(0+(?___wmul)),w
	movwf	(hold_led@frames)
	line	78
	
l950:	
	clrf	(hold_led@f)
	clrf	(hold_led@f+1)
	goto	l48
	line	79
	
l952:	
	movlw	low(032h)
	movwf	(pwm_frame@duty)
	movf	(hold_led@led),w
	fcall	_pwm_frame
	xorlw	0
	skipnz
	goto	u511
	goto	u510
u511:
	goto	l958
u510:
	
l954:	
	movlw	low(01h)
	goto	l51
	
l958:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(hold_led@f),f
	skipnc
	incf	(hold_led@f+1),f
	movlw	0
	addwf	(hold_led@f+1),f
	
l48:	
	movf	(hold_led@frames+1),w
	subwf	(hold_led@f+1),w
	skipz
	goto	u525
	movf	(hold_led@frames),w
	subwf	(hold_led@f),w
u525:
	skipc
	goto	u521
	goto	u520
u521:
	goto	l952
u520:
	line	80
	
l960:	
	movlw	low(0)
	line	81
	
l51:	
	return
	callstack 0
GLOBAL	__end_of_hold_led
	__end_of_hold_led:
	signat	_hold_led,8313
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/Applications/microchip/xc8/v3.10/pic/sources/c99/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       4
;;      Locals:         0       2
;;      Temps:          0       0
;;      Totals:         0       6
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hold_led
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v3.10/pic/sources/c99/common/Umul16.c"
	line	15
global __ptext4
__ptext4:	;psect for function ___wmul
psect	text4
	file	"/Applications/microchip/xc8/v3.10/pic/sources/c99/common/Umul16.c"
	line	15
	
___wmul:	
;incstack = 0
	callstack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l888:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	45
	
l890:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u411
	goto	u410
u411:
	goto	l178
u410:
	line	46
	
l892:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l178:	
	line	47
	movlw	01h
	
u425:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u425
	line	48
	
l894:	
	movlw	01h
	
u435:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u435
	line	49
	
l896:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u441
	goto	u440
u441:
	goto	l890
u440:
	line	52
	
l898:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	53
	
l180:	
	return
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_fade_led

;; *************** function _fade_led *****************
;; Defined at:
;;		line 60 in file "main.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;;  duration_sec    1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1   10[BANK0 ] unsigned char 
;;  f               1    9[BANK0 ] unsigned char 
;;  f               1    8[BANK0 ] unsigned char 
;;  duty            1   13[BANK0 ] unsigned char 
;;  duty            1   12[BANK0 ] unsigned char 
;;  fps             1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       1
;;      Locals:         0       6
;;      Temps:          0       0
;;      Totals:         0       7
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_pwm_frame
;; This function is called by:
;;		_breathe
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"main.c"
	line	60
global __ptext5
__ptext5:	;psect for function _fade_led
psect	text5
	file	"main.c"
	line	60
	
_fade_led:	
;incstack = 0
	callstack 5
; Regs used in _fade_led: [wreg+status,2+status,0+pclath+cstack]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fade_led@led)
	line	61
	
l902:	
	movf	(fade_led@duration_sec),w
	movwf	(fade_led@fps)
	line	63
	
l904:	
	clrf	(fade_led@duty)
	line	64
	
l910:	
	clrf	(fade_led@f)
	goto	l920
	line	65
	
l912:	
	movf	(fade_led@duty),w
	movwf	(pwm_frame@duty)
	movf	(fade_led@led),w
	fcall	_pwm_frame
	xorlw	0
	skipnz
	goto	u451
	goto	u450
u451:
	goto	l918
u450:
	
l914:	
	movlw	low(01h)
	goto	l38
	
l918:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(fade_led@f),f
	
l920:	
	movf	(fade_led@fps),w
	subwf	(fade_led@f),w
	skipc
	goto	u461
	goto	u460
u461:
	goto	l912
u460:
	
l922:	
	movlw	low(01h)
	addwf	(fade_led@duty),f
	
l924:	
	movlw	low(032h)
	subwf	(fade_led@duty),w
	skipc
	goto	u471
	goto	u470
u471:
	goto	l910
u470:
	
l34:	
	line	67
	movlw	032h
	movwf	(fade_led@duty_51)
	line	68
	
l930:	
	clrf	(fade_led@f_52)
	goto	l940
	line	69
	
l932:	
	movf	(fade_led@duty_51),w
	addlw	0FFh
	movwf	(pwm_frame@duty)
	movf	(fade_led@led),w
	fcall	_pwm_frame
	xorlw	0
	skipnz
	goto	u481
	goto	u480
u481:
	goto	l938
u480:
	goto	l914
	
l938:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(fade_led@f_52),f
	
l940:	
	movf	(fade_led@fps),w
	subwf	(fade_led@f_52),w
	skipc
	goto	u491
	goto	u490
u491:
	goto	l932
u490:
	
l942:	
	movlw	01h
	subwf	(fade_led@duty_51),f
	movf	((fade_led@duty_51)),w
	btfss	status,2
	goto	u501
	goto	u500
u501:
	goto	l930
u500:
	line	71
	
l944:	
	movlw	low(0)
	line	72
	
l38:	
	return
	callstack 0
GLOBAL	__end_of_fade_led
	__end_of_fade_led:
	signat	_fade_led,8313
	global	_pwm_frame

;; *************** function _pwm_frame *****************
;; Defined at:
;;		line 42 in file "main.c"
;; Parameters:    Size  Location     Type
;;  led             1    wreg     unsigned char 
;;  duty            1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  led             1    3[BANK0 ] unsigned char 
;;  i               1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       1
;;      Locals:         0       4
;;      Temps:          0       2
;;      Totals:         0       7
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fade_led
;;		_hold_led
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	42
global __ptext6
__ptext6:	;psect for function _pwm_frame
psect	text6
	file	"main.c"
	line	42
	
_pwm_frame:	
;incstack = 0
	callstack 5
; Regs used in _pwm_frame: [wreg+status,2+status,0]
	bcf	status, 5	;RP0=0, select bank0
	movwf	(pwm_frame@led)
	line	43
	
l854:	
	clrf	(pwm_frame@i)
	line	44
	
l860:	
	movf	(pwm_frame@duty),w
	subwf	(pwm_frame@i),w
	skipc
	goto	u371
	goto	u370
u371:
	goto	l864
u370:
	
l862:	
	clrf	(_pwm_frame$43)
	clrf	(_pwm_frame$43+1)
	goto	l26
	
l864:	
	movf	(pwm_frame@led),w
	movwf	(??_pwm_frame)
	clrf	(??_pwm_frame+1)
	movf	(0+(??_pwm_frame)),w
	movwf	(_pwm_frame$43)
	movf	(1+(??_pwm_frame)),w
	movwf	(_pwm_frame$43+1)
	
l26:	
	movf	(_pwm_frame$43),w
	movwf	(5)	;volatile
	line	45
	asmopt push
asmopt off
	movlw	66
movwf	((??_pwm_frame))
	u747:
decfsz	(??_pwm_frame),f
	goto	u747
	nop
asmopt pop

	line	46
	
l866:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	addwf	(pwm_frame@i),f
	
l868:	
	movlw	low(032h)
	subwf	(pwm_frame@i),w
	skipc
	goto	u381
	goto	u380
u381:
	goto	l860
u380:
	line	47
	
l870:	
	clrf	(5)	;volatile
	line	49
	
l872:	
	btfsc	(43/8),(43)&7	;volatile
	goto	u391
	goto	u390
u391:
	goto	l882
u390:
	line	50
	
l874:	
	movlw	low(01h)
	addwf	(_btn_count),f
	movlw	low(03h)
	subwf	((_btn_count)),w
	skipc
	goto	u401
	goto	u400
u401:
	goto	l884
u400:
	
l876:	
	clrf	(_btn_count)
	
l878:	
	movlw	low(01h)
	goto	l29
	line	52
	
l882:	
	clrf	(_btn_count)
	line	54
	
l884:	
	movlw	low(0)
	line	55
	
l29:	
	return
	callstack 0
GLOBAL	__end_of_pwm_frame
	__end_of_pwm_frame:
	signat	_pwm_frame,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "/Applications/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       4
;;      Locals:         0       2
;;      Temps:          0       0
;;      Totals:         0       6
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=1
	file	"/Applications/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
	line	5
global __ptext7
__ptext7:	;psect for function ___awmod
psect	text7
	file	"/Applications/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
	line	5
	
___awmod:	
;incstack = 0
	callstack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	12
	
l996:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___awmod@sign)
	line	13
	
l998:	
	btfss	(___awmod@dividend+1),7
	goto	u591
	goto	u590
u591:
	goto	l1004
u590:
	line	14
	
l1000:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	15
	
l1002:	
	movlw	01h
	movwf	(___awmod@sign)
	line	17
	
l1004:	
	btfss	(___awmod@divisor+1),7
	goto	u601
	goto	u600
u601:
	goto	l1008
u600:
	line	18
	
l1006:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	19
	
l1008:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u611
	goto	u610
u611:
	goto	l1026
u610:
	line	20
	
l1010:	
	movlw	01h
	movwf	(___awmod@counter)
	line	21
	goto	l1016
	line	22
	
l1012:	
	movlw	01h
	
u625:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u625
	line	23
	
l1014:	
	movlw	low(01h)
	addwf	(___awmod@counter),f
	line	21
	
l1016:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u631
	goto	u630
u631:
	goto	l1012
u630:
	line	26
	
l1018:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u645
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u645:
	skipc
	goto	u641
	goto	u640
u641:
	goto	l1022
u640:
	line	27
	
l1020:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	28
	
l1022:	
	movlw	01h
	
u655:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u655
	line	29
	
l1024:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u661
	goto	u660
u661:
	goto	l1018
u660:
	line	31
	
l1026:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u671
	goto	u670
u671:
	goto	l1030
u670:
	line	32
	
l1028:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	33
	
l1030:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	34
	
l344:	
	return
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 05Eh

	DABS	1,0x5E,2	;btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	global wtemp0
	wtemp0 set btemp+0
	global wtemp0a
	wtemp0a set btemp+1
	global ttemp0a
	ttemp0a set btemp+1
	global ltemp0a
	ltemp0a set btemp+2
	end
