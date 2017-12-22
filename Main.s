! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareMutex
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareCondition
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_TestHoareSemantic
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_frameManager
	.import	_P_Kernel_testHoareSemantic
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_histogram:
! Static array
	.word	27		! number of elements
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
	.align
! String constants
_StringConst_49:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_48:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_47:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_46:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_45:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_44:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_43:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_42:
	.word	61			! length
	.ascii	"\n\n***** TESTHOARESEMENTIC TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_41:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_40:
	.word	20			! length
	.ascii	"TestForHoareSemantic"
	.align
_StringConst_39:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
_StringConst_38:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_37:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_36:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_35:
	.word	66			! length
	.ascii	"\n\nHere is a histogram showing how many times each frame was used:\n"
	.align
_StringConst_34:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_33:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_32:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_31:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_30:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_29:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_28:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_27:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_26:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_25:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_24:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_23:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
_StringConst_22:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_21:
	.word	2			! length
	.ascii	"\n\n"
	.align
_StringConst_20:
	.word	56			! length
	.ascii	"\n====================  NEW STATE  ====================\n\n"
	.align
_StringConst_19:
	.word	36			! length
	.ascii	"*****  Returning one thread  *****\n\n"
	.align
_StringConst_18:
	.word	52			! length
	.ascii	"*****  Returning one process and its frames  *****\n\n"
	.align
_StringConst_17:
	.word	38			! length
	.ascii	"*****  Allocating some frames  *****\n\n"
	.align
_StringConst_16:
	.word	41			! length
	.ascii	"*****  Allocating some processes  *****\n\n"
	.align
_StringConst_15:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_14:
	.word	2			! length
	.ascii	"\n\n"
	.align
_StringConst_13:
	.word	60			! length
	.ascii	"\n====================  INITIAL STATE  ====================\n\n"
	.align
_StringConst_12:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_11:
	.word	56			! length
	.ascii	"\n====================  NEW STATE  ====================\n\n"
	.align
_StringConst_10:
	.word	36			! length
	.ascii	"*****  Returning one thread  *****\n\n"
	.align
_StringConst_9:
	.word	40			! length
	.ascii	"\n*****  Allocating some threads  *****\n\n"
	.align
_StringConst_8:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_7:
	.word	60			! length
	.ascii	"\n====================  INITIAL STATE  ====================\n\n"
	.align
_StringConst_6:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_5:
	.word	56			! length
	.ascii	"\n====================  NEW STATE  ====================\n\n"
	.align
_StringConst_4:
	.word	36			! length
	.ascii	"*****  Returning one thread  *****\n\n"
	.align
_StringConst_3:
	.word	40			! length
	.ascii	"\n*****  Allocating some threads  *****\n\n"
	.align
_StringConst_2:
	.word	60			! length
	.ascii	"\n=========================================================\n\n"
	.align
_StringConst_1:
	.word	60			! length
	.ascii	"\n====================  INITIAL STATE  ====================\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_61		! .
	ret				! .
_Label_61:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_62
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_62:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_63
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_63
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_63
! Make sure _P_Kernel_ has hash value 0xbf19d132 (decimal -1088827086)
	set	_packageName,r2
	set	0xbf19d132,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_63
_Label_63:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	94,r1
_Label_767:
	push	r0
	sub	r1,1,r1
	bne	_Label_767
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0SE",r10
!   _temp_64 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-344]
!   Send message Init
	load	[r14+-344],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	21,r13		! source line 21
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_768:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_768
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_66 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-336]
!   Send message Init
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_769:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_769
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0SE",r10
!   _temp_68 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-328]
!   Send message Init
	load	[r14+-328],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=76)
	set	_P_Kernel_frameManager,r4
	mov	19,r3
_Label_770:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_770
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_70 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-320]
!   Send message Init
	load	[r14+-320],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_testHoareSemantic = zeros  (sizeInBytes=41716)
	set	_P_Kernel_testHoareSemantic,r4
	mov	10429,r3
_Label_771:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_771
!   _P_Kernel_testHoareSemantic = _P_Kernel_TestHoareSemantic
	set	_P_Kernel_TestHoareSemantic,r1
	set	_P_Kernel_testHoareSemantic,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0SE",r10
!   _temp_72 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-312]
!   Send message Init
	load	[r14+-312],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_73 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-308]
!   Prepare Argument: offset=8  value=_temp_73  sizeInBytes=4
	load	[r14+-308],r1
	store	r1,[r15+0]
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   _temp_74 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-304]
!   Send message Print
	load	[r14+-304],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_75 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-300]
!   Prepare Argument: offset=8  value=_temp_75  sizeInBytes=4
	load	[r14+-300],r1
	store	r1,[r15+0]
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_76 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-296]
!   Prepare Argument: offset=8  value=_temp_76  sizeInBytes=4
	load	[r14+-296],r1
	store	r1,[r15+0]
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0AS",r10
	mov	52,r13		! source line 52
	mov	"\0\0SE",r10
!   _temp_77 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-292]
!   Send message GetANewThread
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th0  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-348]
! ASSIGNMENT STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0AS",r10
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_78 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-288]
!   Send message GetANewThread
	load	[r14+-288],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-352]
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
	mov	54,r13		! source line 54
	mov	"\0\0SE",r10
!   _temp_79 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-284]
!   Send message GetANewThread
	load	[r14+-284],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-356]
! CALL STATEMENT...
!   _temp_80 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-280]
!   Prepare Argument: offset=8  value=_temp_80  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+0]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0SE",r10
!   _temp_81 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-276]
!   Prepare Argument: offset=12  value=th1  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-276],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_82 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-272]
!   Prepare Argument: offset=8  value=_temp_82  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+0]
!   Call the function
	mov	61,r13		! source line 61
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_83 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-268]
!   Send message Print
	load	[r14+-268],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_84 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-264]
!   Prepare Argument: offset=8  value=_temp_84  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Call the function
	mov	63,r13		! source line 63
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0SE",r10
!   _temp_85 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-260]
!   Prepare Argument: offset=12  value=th0  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0SE",r10
!   _temp_86 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-256]
!   Prepare Argument: offset=12  value=th2  sizeInBytes=4
	load	[r14+-356],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-256],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_87 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-252]
!   Prepare Argument: offset=8  value=_temp_87  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0SE",r10
!   _temp_88 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-248]
!   Send message Print
	load	[r14+-248],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_89 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-244]
!   Prepare Argument: offset=8  value=_temp_89  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+0]
!   Call the function
	mov	74,r13		! source line 74
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_90 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-240]
!   Prepare Argument: offset=8  value=_temp_90  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Call the function
	mov	77,r13		! source line 77
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
	mov	78,r13		! source line 78
	mov	"\0\0SE",r10
!   _temp_91 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-236]
!   Send message GetANewThread
	load	[r14+-236],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th0  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-348]
! ASSIGNMENT STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0AS",r10
	mov	79,r13		! source line 79
	mov	"\0\0SE",r10
!   _temp_92 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-232]
!   Send message GetANewThread
	load	[r14+-232],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-352]
! ASSIGNMENT STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0AS",r10
	mov	80,r13		! source line 80
	mov	"\0\0SE",r10
!   _temp_93 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-228]
!   Send message GetANewThread
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-356]
! CALL STATEMENT...
!   _temp_94 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-224]
!   Prepare Argument: offset=8  value=_temp_94  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_95 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-220]
!   Prepare Argument: offset=12  value=th1  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-220],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_96 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_96  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_97 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-212]
!   Send message Print
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_98 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-208]
!   Prepare Argument: offset=8  value=_temp_98  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+0]
!   Call the function
	mov	89,r13		! source line 89
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   _temp_99 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-204]
!   Prepare Argument: offset=12  value=th0  sizeInBytes=4
	load	[r14+-348],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   _temp_100 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=12  value=th2  sizeInBytes=4
	load	[r14+-356],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_101 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=8  value=_temp_101  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	98,r13		! source line 98
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0SE",r10
!   _temp_102 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-192]
!   Send message Print
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_103 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_103  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	100,r13		! source line 100
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0SE",r10
!   _temp_104 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-184]
!   Send message Print
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_105 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_105  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	102,r13		! source line 102
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_106 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_106  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0AS",r10
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_107 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-172]
!   Send message GetANewProcess
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=proc0  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-360]
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_108 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-168]
!   Send message GetANewProcess
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=proc1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-364]
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_109 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-164]
!   Send message GetANewProcess
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=proc2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-368]
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_110 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-160]
!   Send message GetANewProcess
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=proc3  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-372]
! CALL STATEMENT...
!   _temp_111 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_111  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   if intIsZero (proc2) then goto _runtimeErrorNullPointer
	load	[r14+-368],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_113 = proc2 + 32
	load	[r14+-368],r1
	add	r1,32,r1
	store	r1,[r14+-148]
!   _temp_112 = _temp_113		(4 bytes)
	load	[r14+-148],r1
	store	r1,[r14+-152]
!   _temp_114 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_112  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0SE",r10
!   if intIsZero (proc1) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_116 = proc1 + 32
	load	[r14+-364],r1
	add	r1,32,r1
	store	r1,[r14+-136]
!   _temp_115 = _temp_116		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-140]
!   _temp_117 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_115  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   if intIsZero (proc0) then goto _runtimeErrorNullPointer
	load	[r14+-360],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_119 = proc0 + 32
	load	[r14+-360],r1
	add	r1,32,r1
	store	r1,[r14+-124]
!   _temp_118 = _temp_119		(4 bytes)
	load	[r14+-124],r1
	store	r1,[r14+-128]
!   _temp_120 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_118  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0SE",r10
!   if intIsZero (proc3) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_122 = proc3 + 32
	load	[r14+-372],r1
	add	r1,32,r1
	store	r1,[r14+-112]
!   _temp_121 = _temp_122		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-116]
!   _temp_123 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_121  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_124 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_124  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	119,r13		! source line 119
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	120,r13		! source line 120
	mov	"\0\0SE",r10
!   if intIsZero (proc1) then goto _runtimeErrorNullPointer
	load	[r14+-364],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_126 = proc1 + 32
	load	[r14+-364],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   _temp_125 = _temp_126		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-100]
!   _temp_127 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_125  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0SE",r10
!   _temp_128 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=proc1  sizeInBytes=4
	load	[r14+-364],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_129 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_129  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
!   _temp_130 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=th1  sizeInBytes=4
	load	[r14+-352],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_131 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_131  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0SE",r10
!   _temp_132 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message Print
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_133 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
!   _temp_134 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-64]
!   Send message Print
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_135 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_135  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	132,r13		! source line 132
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0SE",r10
!   if intIsZero (proc0) then goto _runtimeErrorNullPointer
	load	[r14+-360],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_137 = proc0 + 32
	load	[r14+-360],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   _temp_136 = _temp_137		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-56]
!   _temp_138 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_136  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   _temp_139 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=proc0  sizeInBytes=4
	load	[r14+-360],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0SE",r10
!   if intIsZero (proc2) then goto _runtimeErrorNullPointer
	load	[r14+-368],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_141 = proc2 + 32
	load	[r14+-368],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_140 = _temp_141		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_142 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_140  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0SE",r10
!   _temp_143 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=proc2  sizeInBytes=4
	load	[r14+-368],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   if intIsZero (proc3) then goto _runtimeErrorNullPointer
	load	[r14+-372],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_145 = proc3 + 32
	load	[r14+-372],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_144 = _temp_145		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_146 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_144  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   _temp_147 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=proc3  sizeInBytes=4
	load	[r14+-372],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_function_59_RunThreadManagerTests
! CALL STATEMENT...
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CA",r10
	call	_function_57_RunProcessManagerTests
! CALL STATEMENT...
!   Call the function
	mov	147,r13		! source line 147
	mov	"\0\0CA",r10
	call	_function_55_RunFrameManagerTests
! CALL STATEMENT...
!   Call the function
	mov	148,r13		! source line 148
	mov	"\0\0CA",r10
	call	_function_53_RunHoareSemanticTests
! CALL STATEMENT...
!   Call the function
	mov	149,r13		! source line 149
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0RE",r10
	add	r15,380,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_148
	.word	0		! total size of parameters
	.word	376		! frame size = 376
	.word	_Label_149
	.word	-12
	.word	4
	.word	_Label_150
	.word	-16
	.word	4
	.word	_Label_151
	.word	-20
	.word	4
	.word	_Label_152
	.word	-24
	.word	4
	.word	_Label_153
	.word	-28
	.word	4
	.word	_Label_154
	.word	-32
	.word	4
	.word	_Label_155
	.word	-36
	.word	4
	.word	_Label_156
	.word	-40
	.word	4
	.word	_Label_157
	.word	-44
	.word	4
	.word	_Label_158
	.word	-48
	.word	4
	.word	_Label_159
	.word	-52
	.word	4
	.word	_Label_160
	.word	-56
	.word	4
	.word	_Label_161
	.word	-60
	.word	4
	.word	_Label_162
	.word	-64
	.word	4
	.word	_Label_163
	.word	-68
	.word	4
	.word	_Label_164
	.word	-72
	.word	4
	.word	_Label_165
	.word	-76
	.word	4
	.word	_Label_166
	.word	-80
	.word	4
	.word	_Label_167
	.word	-84
	.word	4
	.word	_Label_168
	.word	-88
	.word	4
	.word	_Label_169
	.word	-92
	.word	4
	.word	_Label_170
	.word	-96
	.word	4
	.word	_Label_171
	.word	-100
	.word	4
	.word	_Label_172
	.word	-104
	.word	4
	.word	_Label_173
	.word	-108
	.word	4
	.word	_Label_174
	.word	-112
	.word	4
	.word	_Label_175
	.word	-116
	.word	4
	.word	_Label_176
	.word	-120
	.word	4
	.word	_Label_177
	.word	-124
	.word	4
	.word	_Label_178
	.word	-128
	.word	4
	.word	_Label_179
	.word	-132
	.word	4
	.word	_Label_180
	.word	-136
	.word	4
	.word	_Label_181
	.word	-140
	.word	4
	.word	_Label_182
	.word	-144
	.word	4
	.word	_Label_183
	.word	-148
	.word	4
	.word	_Label_184
	.word	-152
	.word	4
	.word	_Label_185
	.word	-156
	.word	4
	.word	_Label_186
	.word	-160
	.word	4
	.word	_Label_187
	.word	-164
	.word	4
	.word	_Label_188
	.word	-168
	.word	4
	.word	_Label_189
	.word	-172
	.word	4
	.word	_Label_190
	.word	-176
	.word	4
	.word	_Label_191
	.word	-180
	.word	4
	.word	_Label_192
	.word	-184
	.word	4
	.word	_Label_193
	.word	-188
	.word	4
	.word	_Label_194
	.word	-192
	.word	4
	.word	_Label_195
	.word	-196
	.word	4
	.word	_Label_196
	.word	-200
	.word	4
	.word	_Label_197
	.word	-204
	.word	4
	.word	_Label_198
	.word	-208
	.word	4
	.word	_Label_199
	.word	-212
	.word	4
	.word	_Label_200
	.word	-216
	.word	4
	.word	_Label_201
	.word	-220
	.word	4
	.word	_Label_202
	.word	-224
	.word	4
	.word	_Label_203
	.word	-228
	.word	4
	.word	_Label_204
	.word	-232
	.word	4
	.word	_Label_205
	.word	-236
	.word	4
	.word	_Label_206
	.word	-240
	.word	4
	.word	_Label_207
	.word	-244
	.word	4
	.word	_Label_208
	.word	-248
	.word	4
	.word	_Label_209
	.word	-252
	.word	4
	.word	_Label_210
	.word	-256
	.word	4
	.word	_Label_211
	.word	-260
	.word	4
	.word	_Label_212
	.word	-264
	.word	4
	.word	_Label_213
	.word	-268
	.word	4
	.word	_Label_214
	.word	-272
	.word	4
	.word	_Label_215
	.word	-276
	.word	4
	.word	_Label_216
	.word	-280
	.word	4
	.word	_Label_217
	.word	-284
	.word	4
	.word	_Label_218
	.word	-288
	.word	4
	.word	_Label_219
	.word	-292
	.word	4
	.word	_Label_220
	.word	-296
	.word	4
	.word	_Label_221
	.word	-300
	.word	4
	.word	_Label_222
	.word	-304
	.word	4
	.word	_Label_223
	.word	-308
	.word	4
	.word	_Label_224
	.word	-312
	.word	4
	.word	_Label_225
	.word	-316
	.word	4
	.word	_Label_226
	.word	-320
	.word	4
	.word	_Label_227
	.word	-324
	.word	4
	.word	_Label_228
	.word	-328
	.word	4
	.word	_Label_229
	.word	-332
	.word	4
	.word	_Label_230
	.word	-336
	.word	4
	.word	_Label_231
	.word	-340
	.word	4
	.word	_Label_232
	.word	-344
	.word	4
	.word	_Label_233
	.word	-348
	.word	4
	.word	_Label_234
	.word	-352
	.word	4
	.word	_Label_235
	.word	-356
	.word	4
	.word	_Label_236
	.word	-360
	.word	4
	.word	_Label_237
	.word	-364
	.word	4
	.word	_Label_238
	.word	-368
	.word	4
	.word	_Label_239
	.word	-372
	.word	4
	.word	0
_Label_148:
	.ascii	"main\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_233:
	.byte	'P'
	.ascii	"th0\0"
	.align
_Label_234:
	.byte	'P'
	.ascii	"th1\0"
	.align
_Label_235:
	.byte	'P'
	.ascii	"th2\0"
	.align
_Label_236:
	.byte	'P'
	.ascii	"proc0\0"
	.align
_Label_237:
	.byte	'P'
	.ascii	"proc1\0"
	.align
_Label_238:
	.byte	'P'
	.ascii	"proc2\0"
	.align
_Label_239:
	.byte	'P'
	.ascii	"proc3\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_60_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_60_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_772:
	push	r0
	sub	r1,1,r1
	bne	_Label_772
	mov	165,r13		! source line 165
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0SE",r10
!   _temp_240 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	170,r13		! source line 170
	mov	"\0\0SE",r10
!   _temp_241 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	171,r13		! source line 171
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_60_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_242
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_243
	.word	8
	.word	4
	.word	_Label_244
	.word	-12
	.word	4
	.word	_Label_245
	.word	-16
	.word	4
	.word	_Label_246
	.word	-20
	.word	4
	.word	0
_Label_242:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_243:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_246:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_59_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_59_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_773:
	push	r0
	sub	r1,1,r1
	bne	_Label_773
	mov	202,r13		! source line 202
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0SE",r10
!   _temp_247 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0SE",r10
!   _temp_248 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
!   _temp_249 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_250 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	211,r13		! source line 211
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_255 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_256 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_255  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_251:
!   Perform the FOR-LOOP termination test
!   if i > _temp_256 then goto _Label_254		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_254
_Label_252:
	mov	213,r13		! source line 213
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_257)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_774:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_774
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0SE",r10
!   _temp_259 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_259  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   _temp_260 = _function_58_TestThreadManager
	set	_function_58_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_260  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_253:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_251
! END FOR
_Label_254:
! FOR STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_265 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_266 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_265  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_261:
!   Perform the FOR-LOOP termination test
!   if i > _temp_266 then goto _Label_264		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_264
_Label_262:
	mov	221,r13		! source line 221
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0SE",r10
!   _temp_267 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_263:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_261
! END FOR
_Label_264:
! IF STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CA",r10
	call	_function_60_GetUniqueNumber
!   Retrieve Result: targetName=_temp_270  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_270 == 401 then goto _Label_269		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_269
!	jmp	_Label_268
_Label_268:
! THEN...
	mov	226,r13		! source line 226
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_271 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	226,r13		! source line 226
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_269:
! CALL STATEMENT...
!   _temp_272 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	228,r13		! source line 228
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_59_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_273
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_274
	.word	-12
	.word	4
	.word	_Label_275
	.word	-16
	.word	4
	.word	_Label_276
	.word	-20
	.word	4
	.word	_Label_277
	.word	-24
	.word	4
	.word	_Label_278
	.word	-28
	.word	4
	.word	_Label_279
	.word	-32
	.word	4
	.word	_Label_280
	.word	-36
	.word	4
	.word	_Label_281
	.word	-40
	.word	4
	.word	_Label_282
	.word	-44
	.word	4
	.word	_Label_283
	.word	-48
	.word	4
	.word	_Label_284
	.word	-52
	.word	4
	.word	_Label_285
	.word	-56
	.word	4
	.word	_Label_286
	.word	-60
	.word	4
	.word	_Label_287
	.word	-64
	.word	4
	.word	_Label_288
	.word	-68
	.word	4
	.word	_Label_289
	.word	-72
	.word	4
	.word	_Label_290
	.word	-76
	.word	4
	.word	_Label_291
	.word	-80
	.word	4
	.word	0
_Label_273:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_290:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_291:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_58_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_58_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_775:
	push	r0
	sub	r1,1,r1
	bne	_Label_775
	mov	240,r13		! source line 240
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_296 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_297 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_296  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_292:
!   Perform the FOR-LOOP termination test
!   if i > _temp_297 then goto _Label_295		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_295
_Label_293:
	mov	244,r13		! source line 244
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CA",r10
	call	_function_60_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0AS",r10
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
!   _temp_298 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_299 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_299 [0 ] into _temp_300
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_300 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_305 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_306 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_305  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_301:
!   Perform the FOR-LOOP termination test
!   if j > _temp_306 then goto _Label_304		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_304
_Label_302:
	mov	249,r13		! source line 249
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_303:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_301
! END FOR
_Label_304:
! IF STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_310 [0 ] into _temp_311
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_309 = *_temp_311  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_309 then goto _Label_308		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_308
!	jmp	_Label_307
_Label_307:
! THEN...
	mov	253,r13		! source line 253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_312 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	253,r13		! source line 253
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_308:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_313 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_318 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_319 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_318  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_314:
!   Perform the FOR-LOOP termination test
!   if j > _temp_319 then goto _Label_317		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_317
_Label_315:
	mov	257,r13		! source line 257
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_316:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_314
! END FOR
_Label_317:
!   Increment the FOR-LOOP index variable and jump back
_Label_294:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_292
! END FOR
_Label_295:
! SEND STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0SE",r10
!   _temp_320 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0SE",r10
!   _temp_321 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_58_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_322
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_323
	.word	8
	.word	4
	.word	_Label_324
	.word	-12
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	_Label_326
	.word	-20
	.word	4
	.word	_Label_327
	.word	-24
	.word	4
	.word	_Label_328
	.word	-28
	.word	4
	.word	_Label_329
	.word	-32
	.word	4
	.word	_Label_330
	.word	-36
	.word	4
	.word	_Label_331
	.word	-40
	.word	4
	.word	_Label_332
	.word	-44
	.word	4
	.word	_Label_333
	.word	-48
	.word	4
	.word	_Label_334
	.word	-52
	.word	4
	.word	_Label_335
	.word	-56
	.word	4
	.word	_Label_336
	.word	-60
	.word	4
	.word	_Label_337
	.word	-64
	.word	4
	.word	_Label_338
	.word	-68
	.word	4
	.word	_Label_339
	.word	-72
	.word	4
	.word	_Label_340
	.word	-76
	.word	4
	.word	_Label_341
	.word	-80
	.word	4
	.word	_Label_342
	.word	-84
	.word	4
	.word	_Label_343
	.word	-88
	.word	4
	.word	0
_Label_322:
	.ascii	"TestThreadManager\0"
	.align
_Label_323:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_340:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_341:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_342:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_343:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_57_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_57_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_776:
	push	r0
	sub	r1,1,r1
	bne	_Label_776
	mov	282,r13		! source line 282
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0SE",r10
!   _temp_344 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0SE",r10
!   _temp_345 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0SE",r10
!   _temp_346 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_347 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	291,r13		! source line 291
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_352 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_353 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_352  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_348:
!   Perform the FOR-LOOP termination test
!   if i > _temp_353 then goto _Label_351		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_351
_Label_349:
	mov	293,r13		! source line 293
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_354)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_777:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_777
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0SE",r10
!   _temp_356 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_356  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0SE",r10
!   _temp_357 = _function_56_TestProcessManager
	set	_function_56_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_357  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_350:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_348
! END FOR
_Label_351:
! FOR STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_362 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_363 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_362  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_358:
!   Perform the FOR-LOOP termination test
!   if i > _temp_363 then goto _Label_361		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_361
_Label_359:
	mov	301,r13		! source line 301
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0SE",r10
!   _temp_364 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_360:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_358
! END FOR
_Label_361:
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CA",r10
	call	_function_60_GetUniqueNumber
!   Retrieve Result: targetName=_temp_367  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_367 == 401 then goto _Label_366		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_366
!	jmp	_Label_365
_Label_365:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_368 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_366:
! CALL STATEMENT...
!   _temp_369 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_57_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_370
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_371
	.word	-12
	.word	4
	.word	_Label_372
	.word	-16
	.word	4
	.word	_Label_373
	.word	-20
	.word	4
	.word	_Label_374
	.word	-24
	.word	4
	.word	_Label_375
	.word	-28
	.word	4
	.word	_Label_376
	.word	-32
	.word	4
	.word	_Label_377
	.word	-36
	.word	4
	.word	_Label_378
	.word	-40
	.word	4
	.word	_Label_379
	.word	-44
	.word	4
	.word	_Label_380
	.word	-48
	.word	4
	.word	_Label_381
	.word	-52
	.word	4
	.word	_Label_382
	.word	-56
	.word	4
	.word	_Label_383
	.word	-60
	.word	4
	.word	_Label_384
	.word	-64
	.word	4
	.word	_Label_385
	.word	-68
	.word	4
	.word	_Label_386
	.word	-72
	.word	4
	.word	_Label_387
	.word	-76
	.word	4
	.word	_Label_388
	.word	-80
	.word	4
	.word	0
_Label_370:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_387:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_388:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_56_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_56_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_778:
	push	r0
	sub	r1,1,r1
	bne	_Label_778
	mov	321,r13		! source line 321
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_393 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_394 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_393  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_389:
!   Perform the FOR-LOOP termination test
!   if i > _temp_394 then goto _Label_392		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_392
_Label_390:
	mov	325,r13		! source line 325
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	326,r13		! source line 326
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CA",r10
	call	_function_60_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   _temp_395 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_396 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_396 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_401 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_402 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_401  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_397:
!   Perform the FOR-LOOP termination test
!   if j > _temp_402 then goto _Label_400		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_400
_Label_398:
	mov	330,r13		! source line 330
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_399:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_397
! END FOR
_Label_400:
! IF STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_406 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_405 = *_temp_406  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_405 then goto _Label_404		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_404
!	jmp	_Label_403
_Label_403:
! THEN...
	mov	334,r13		! source line 334
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_407 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	334,r13		! source line 334
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_404:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0SE",r10
!   _temp_408 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_413 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_414 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_413  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_409:
!   Perform the FOR-LOOP termination test
!   if j > _temp_414 then goto _Label_412		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_412
_Label_410:
	mov	338,r13		! source line 338
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_411:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_409
! END FOR
_Label_412:
!   Increment the FOR-LOOP index variable and jump back
_Label_391:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_389
! END FOR
_Label_392:
! SEND STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0SE",r10
!   _temp_415 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0SE",r10
!   _temp_416 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_56_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_417
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_418
	.word	8
	.word	4
	.word	_Label_419
	.word	-12
	.word	4
	.word	_Label_420
	.word	-16
	.word	4
	.word	_Label_421
	.word	-20
	.word	4
	.word	_Label_422
	.word	-24
	.word	4
	.word	_Label_423
	.word	-28
	.word	4
	.word	_Label_424
	.word	-32
	.word	4
	.word	_Label_425
	.word	-36
	.word	4
	.word	_Label_426
	.word	-40
	.word	4
	.word	_Label_427
	.word	-44
	.word	4
	.word	_Label_428
	.word	-48
	.word	4
	.word	_Label_429
	.word	-52
	.word	4
	.word	_Label_430
	.word	-56
	.word	4
	.word	_Label_431
	.word	-60
	.word	4
	.word	_Label_432
	.word	-64
	.word	4
	.word	_Label_433
	.word	-68
	.word	4
	.word	_Label_434
	.word	-72
	.word	4
	.word	_Label_435
	.word	-76
	.word	4
	.word	_Label_436
	.word	-80
	.word	4
	.word	0
_Label_417:
	.ascii	"TestProcessManager\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_433:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_434:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_435:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_436:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_55_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_55_RunFrameManagerTests,r1
	push	r1
	mov	28,r1
_Label_779:
	push	r0
	sub	r1,1,r1
	bne	_Label_779
	mov	364,r13		! source line 364
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0SE",r10
!   _temp_437 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0SE",r10
!   _temp_438 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_439 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	371,r13		! source line 371
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_444 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_445 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_444  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_440:
!   Perform the FOR-LOOP termination test
!   if i > _temp_445 then goto _Label_443		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_443
_Label_441:
	mov	373,r13		! source line 373
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_446)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-108]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-108],r4
	mov	1041,r3
_Label_780:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_780
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0SE",r10
!   _temp_448 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_448  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0SE",r10
!   _temp_449 = _function_54_TestFrameManager
	set	_function_54_TestFrameManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_449  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_442:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_440
! END FOR
_Label_443:
! FOR STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_454 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_455 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_454  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-100]
_Label_450:
!   Perform the FOR-LOOP termination test
!   if i > _temp_455 then goto _Label_453		
	load	[r14+-100],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_453
_Label_451:
	mov	381,r13		! source line 381
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0SE",r10
!   _temp_456 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_452:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_450
! END FOR
_Label_453:
! CALL STATEMENT...
!   _temp_457 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	385,r13		! source line 385
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_462 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_463 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_462  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_458:
!   Perform the FOR-LOOP termination test
!   if i > _temp_463 then goto _Label_461		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_461
_Label_459:
	mov	386,r13		! source line 386
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_464 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_464  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	387,r13		! source line 387
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_465 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_465  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	389,r13		! source line 389
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_470 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_472 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-20]
!   Move address of _temp_472 [i ] into _temp_473
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_471 = *_temp_473  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_470  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_466:
!   Perform the FOR-LOOP termination test
!   if j > _temp_471 then goto _Label_469		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_469
_Label_467:
	mov	390,r13		! source line 390
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	391,r13		! source line 391
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_468:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_466
! END FOR
_Label_469:
! CALL STATEMENT...
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_460:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_458
! END FOR
_Label_461:
! CALL STATEMENT...
!   _temp_474 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_55_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_475
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_476
	.word	-12
	.word	4
	.word	_Label_477
	.word	-16
	.word	4
	.word	_Label_478
	.word	-20
	.word	4
	.word	_Label_479
	.word	-24
	.word	4
	.word	_Label_480
	.word	-28
	.word	4
	.word	_Label_481
	.word	-32
	.word	4
	.word	_Label_482
	.word	-36
	.word	4
	.word	_Label_483
	.word	-40
	.word	4
	.word	_Label_484
	.word	-44
	.word	4
	.word	_Label_485
	.word	-48
	.word	4
	.word	_Label_486
	.word	-52
	.word	4
	.word	_Label_487
	.word	-56
	.word	4
	.word	_Label_488
	.word	-60
	.word	4
	.word	_Label_489
	.word	-64
	.word	4
	.word	_Label_490
	.word	-68
	.word	4
	.word	_Label_491
	.word	-72
	.word	4
	.word	_Label_492
	.word	-76
	.word	4
	.word	_Label_493
	.word	-80
	.word	4
	.word	_Label_494
	.word	-84
	.word	4
	.word	_Label_495
	.word	-88
	.word	4
	.word	_Label_496
	.word	-92
	.word	4
	.word	_Label_497
	.word	-96
	.word	4
	.word	_Label_498
	.word	-100
	.word	4
	.word	_Label_499
	.word	-104
	.word	4
	.word	_Label_500
	.word	-108
	.word	4
	.word	0
_Label_475:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_498:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_499:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_500:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_54_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_54_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_781:
	push	r0
	sub	r1,1,r1
	bne	_Label_781
	mov	420,r13		! source line 420
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0AS",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   _temp_501 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_506 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_507 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_506  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_502:
!   Perform the FOR-LOOP termination test
!   if i > _temp_507 then goto _Label_505		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_505
_Label_503:
	mov	425,r13		! source line 425
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_512 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_513 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_512  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_508:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_513 then goto _Label_511		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_511
_Label_509:
	mov	426,r13		! source line 426
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_function_60_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_515 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_514 = _temp_515		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_516 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_514  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_518 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_517 = _temp_518		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_function_51_CheckAddrSpace
! FOR STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_523 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_524 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_523  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_519:
!   Perform the FOR-LOOP termination test
!   if j > _temp_524 then goto _Label_522		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_522
_Label_520:
	mov	431,r13		! source line 431
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_521:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_519
! END FOR
_Label_522:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_526 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_525 = _temp_526		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CA",r10
	call	_function_50_CheckAddrSpace2
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_528 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_527 = _temp_528		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_529 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_527  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_534 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_535 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_534  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_530:
!   Perform the FOR-LOOP termination test
!   if j > _temp_535 then goto _Label_533		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_533
_Label_531:
	mov	437,r13		! source line 437
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_532:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_530
! END FOR
_Label_533:
!   Increment the FOR-LOOP index variable and jump back
_Label_510:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_508
! END FOR
_Label_511:
!   Increment the FOR-LOOP index variable and jump back
_Label_504:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_502
! END FOR
_Label_505:
! SEND STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0SE",r10
!   _temp_536 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0SE",r10
!   _temp_537 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0SE",r10
!   _temp_538 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_54_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_539
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_540
	.word	8
	.word	4
	.word	_Label_541
	.word	-12
	.word	4
	.word	_Label_542
	.word	-16
	.word	4
	.word	_Label_543
	.word	-20
	.word	4
	.word	_Label_544
	.word	-24
	.word	4
	.word	_Label_545
	.word	-28
	.word	4
	.word	_Label_546
	.word	-32
	.word	4
	.word	_Label_547
	.word	-36
	.word	4
	.word	_Label_548
	.word	-40
	.word	4
	.word	_Label_549
	.word	-44
	.word	4
	.word	_Label_550
	.word	-48
	.word	4
	.word	_Label_551
	.word	-52
	.word	4
	.word	_Label_552
	.word	-56
	.word	4
	.word	_Label_553
	.word	-60
	.word	4
	.word	_Label_554
	.word	-64
	.word	4
	.word	_Label_555
	.word	-68
	.word	4
	.word	_Label_556
	.word	-72
	.word	4
	.word	_Label_557
	.word	-76
	.word	4
	.word	_Label_558
	.word	-80
	.word	4
	.word	_Label_559
	.word	-84
	.word	4
	.word	_Label_560
	.word	-88
	.word	4
	.word	_Label_561
	.word	-92
	.word	4
	.word	_Label_562
	.word	-96
	.word	4
	.word	_Label_563
	.word	-100
	.word	4
	.word	_Label_564
	.word	-104
	.word	4
	.word	_Label_565
	.word	-108
	.word	4
	.word	_Label_566
	.word	-112
	.word	4
	.word	_Label_567
	.word	-116
	.word	4
	.word	0
_Label_539:
	.ascii	"TestFrameManager\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_563:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_564:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_566:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_567:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunHoareSemanticTests  ===============
! 
_function_53_RunHoareSemanticTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_53_RunHoareSemanticTests,r1
	push	r1
	mov	21,r1
_Label_782:
	push	r0
	sub	r1,1,r1
	bne	_Label_782
	mov	464,r13		! source line 464
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
!   _temp_568 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0SE",r10
!   _temp_569 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0SE",r10
!   _temp_570 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_571 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_571  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	473,r13		! source line 473
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_576 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_577 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_576  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_572:
!   Perform the FOR-LOOP termination test
!   if i > _temp_577 then goto _Label_575		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_575
_Label_573:
	mov	475,r13		! source line 475
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_578)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_783:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_783
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0SE",r10
!   _temp_580 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_580  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   _temp_581 = _function_52_TestForHoareSemantic
	set	_function_52_TestForHoareSemantic,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_581  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_574:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_572
! END FOR
_Label_575:
! FOR STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_586 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_587 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_586  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_582:
!   Perform the FOR-LOOP termination test
!   if i > _temp_587 then goto _Label_585		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_585
_Label_583:
	mov	483,r13		! source line 483
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
!   _temp_588 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_584:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_582
! END FOR
_Label_585:
! IF STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CA",r10
	call	_function_60_GetUniqueNumber
!   Retrieve Result: targetName=_temp_591  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_591 == 401 then goto _Label_590		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_590
!	jmp	_Label_589
_Label_589:
! THEN...
	mov	488,r13		! source line 488
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_592 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	488,r13		! source line 488
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_590:
! CALL STATEMENT...
!   _temp_593 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	490,r13		! source line 490
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_53_RunHoareSemanticTests:
	.word	_sourceFileName
	.word	_Label_594
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_595
	.word	-12
	.word	4
	.word	_Label_596
	.word	-16
	.word	4
	.word	_Label_597
	.word	-20
	.word	4
	.word	_Label_598
	.word	-24
	.word	4
	.word	_Label_599
	.word	-28
	.word	4
	.word	_Label_600
	.word	-32
	.word	4
	.word	_Label_601
	.word	-36
	.word	4
	.word	_Label_602
	.word	-40
	.word	4
	.word	_Label_603
	.word	-44
	.word	4
	.word	_Label_604
	.word	-48
	.word	4
	.word	_Label_605
	.word	-52
	.word	4
	.word	_Label_606
	.word	-56
	.word	4
	.word	_Label_607
	.word	-60
	.word	4
	.word	_Label_608
	.word	-64
	.word	4
	.word	_Label_609
	.word	-68
	.word	4
	.word	_Label_610
	.word	-72
	.word	4
	.word	_Label_611
	.word	-76
	.word	4
	.word	_Label_612
	.word	-80
	.word	4
	.word	0
_Label_594:
	.ascii	"RunHoareSemanticTests\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_611:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_612:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestForHoareSemantic  ===============
! 
_function_52_TestForHoareSemantic:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_52_TestForHoareSemantic,r1
	push	r1
	mov	22,r1
_Label_784:
	push	r0
	sub	r1,1,r1
	bne	_Label_784
	mov	514,r13		! source line 514
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_617 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_618 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_617  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_613:
!   Perform the FOR-LOOP termination test
!   if i > _temp_618 then goto _Label_616		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_616
_Label_614:
	mov	519,r13		! source line 519
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	520,r13		! source line 520
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	521,r13		! source line 521
	mov	"\0\0CA",r10
	call	_function_60_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
!   _temp_619 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_620 [0 ] into _temp_621
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_621 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_626 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_627 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_626  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_622:
!   Perform the FOR-LOOP termination test
!   if j > _temp_627 then goto _Label_625		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_625
_Label_623:
	mov	524,r13		! source line 524
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_624:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_622
! END FOR
_Label_625:
! IF STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_631 [0 ] into _temp_632
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_630 = *_temp_632  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_630 then goto _Label_629		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_629
!	jmp	_Label_628
_Label_628:
! THEN...
	mov	528,r13		! source line 528
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_633 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	528,r13		! source line 528
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_629:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	530,r13		! source line 530
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0SE",r10
!   _temp_634 = &_P_Kernel_testHoareSemantic
	set	_P_Kernel_testHoareSemantic,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_639 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_640 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_639  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_635:
!   Perform the FOR-LOOP termination test
!   if j > _temp_640 then goto _Label_638		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_638
_Label_636:
	mov	532,r13		! source line 532
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_637:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_635
! END FOR
_Label_638:
!   Increment the FOR-LOOP index variable and jump back
_Label_615:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_613
! END FOR
_Label_616:
! SEND STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0SE",r10
!   _temp_641 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0SE",r10
!   _temp_642 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_52_TestForHoareSemantic:
	.word	_sourceFileName
	.word	_Label_643
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_644
	.word	8
	.word	4
	.word	_Label_645
	.word	-12
	.word	4
	.word	_Label_646
	.word	-16
	.word	4
	.word	_Label_647
	.word	-20
	.word	4
	.word	_Label_648
	.word	-24
	.word	4
	.word	_Label_649
	.word	-28
	.word	4
	.word	_Label_650
	.word	-32
	.word	4
	.word	_Label_651
	.word	-36
	.word	4
	.word	_Label_652
	.word	-40
	.word	4
	.word	_Label_653
	.word	-44
	.word	4
	.word	_Label_654
	.word	-48
	.word	4
	.word	_Label_655
	.word	-52
	.word	4
	.word	_Label_656
	.word	-56
	.word	4
	.word	_Label_657
	.word	-60
	.word	4
	.word	_Label_658
	.word	-64
	.word	4
	.word	_Label_659
	.word	-68
	.word	4
	.word	_Label_660
	.word	-72
	.word	4
	.word	_Label_661
	.word	-76
	.word	4
	.word	_Label_662
	.word	-80
	.word	4
	.word	_Label_663
	.word	-84
	.word	4
	.word	_Label_664
	.word	-88
	.word	4
	.word	0
_Label_643:
	.ascii	"TestForHoareSemantic\0"
	.align
_Label_644:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_661:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_662:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_663:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_664:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_51_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_51_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_785:
	push	r0
	sub	r1,1,r1
	bne	_Label_785
	mov	547,r13		! source line 547
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_668 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_667 = *_temp_668  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_667 == n then goto _Label_666		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_666
!	jmp	_Label_665
_Label_665:
! THEN...
	mov	550,r13		! source line 550
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_669 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	550,r13		! source line 550
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_666:
! FOR STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_674 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_675 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_674  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_670:
!   Perform the FOR-LOOP termination test
!   if i > _temp_675 then goto _Label_673		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_673
_Label_671:
	mov	552,r13		! source line 552
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
!   _temp_676 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_676 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_680		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_680
	jmp	_Label_677
_Label_680:
!   if frameNumber < 27 then goto _Label_679		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_679
	jmp	_Label_677
_Label_679:
!   _temp_681 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_681) then goto _Label_678
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_678
!	jmp	_Label_677
_Label_677:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_682 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	559,r13		! source line 559
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_678:
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   _temp_683 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-48]
!   Move address of _temp_683 [frameNumber ] into _temp_684
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_687 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-32]
!   Move address of _temp_687 [frameNumber ] into _temp_688
!     make sure index expr is >= 0
	load	[r14+-92],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_686 = *_temp_688  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_685 = _temp_686 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_684 = _temp_685  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0IF",r10
	mov	562,r13		! source line 562
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_695  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_695) then goto _Label_694
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_694
	jmp	_Label_689
_Label_694:
	mov	563,r13		! source line 563
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_689 else goto _Label_693
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_693
	jmp	_Label_689
_Label_693:
	mov	564,r13		! source line 564
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_689 else goto _Label_692
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_692
	jmp	_Label_689
_Label_692:
	mov	565,r13		! source line 565
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_696  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_696 then goto _Label_691 else goto _Label_689
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_689
	jmp	_Label_691
_Label_691:
	mov	566,r13		! source line 566
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_697  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_697 then goto _Label_690 else goto _Label_689
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_689
	jmp	_Label_690
_Label_689:
! THEN...
	mov	567,r13		! source line 567
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_698 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	567,r13		! source line 567
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_690:
! ASSIGNMENT STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_699  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_672:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_670
! END FOR
_Label_673:
! RETURN STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_51_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_700
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_701
	.word	8
	.word	4
	.word	_Label_702
	.word	12
	.word	4
	.word	_Label_703
	.word	16
	.word	4
	.word	_Label_704
	.word	-16
	.word	4
	.word	_Label_705
	.word	-20
	.word	4
	.word	_Label_706
	.word	-9
	.word	1
	.word	_Label_707
	.word	-10
	.word	1
	.word	_Label_708
	.word	-24
	.word	4
	.word	_Label_709
	.word	-28
	.word	4
	.word	_Label_710
	.word	-32
	.word	4
	.word	_Label_711
	.word	-36
	.word	4
	.word	_Label_712
	.word	-40
	.word	4
	.word	_Label_713
	.word	-44
	.word	4
	.word	_Label_714
	.word	-48
	.word	4
	.word	_Label_715
	.word	-52
	.word	4
	.word	_Label_716
	.word	-56
	.word	4
	.word	_Label_717
	.word	-60
	.word	4
	.word	_Label_718
	.word	-64
	.word	4
	.word	_Label_719
	.word	-68
	.word	4
	.word	_Label_720
	.word	-72
	.word	4
	.word	_Label_721
	.word	-76
	.word	4
	.word	_Label_722
	.word	-80
	.word	4
	.word	_Label_723
	.word	-84
	.word	4
	.word	_Label_724
	.word	-88
	.word	4
	.word	_Label_725
	.word	-92
	.word	4
	.word	0
_Label_700:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_701:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_702:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_703:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_706:
	.byte	'C'
	.ascii	"_temp_697\0"
	.align
_Label_707:
	.byte	'C'
	.ascii	"_temp_696\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_723:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_724:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_725:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_50_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_50_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_786:
	push	r0
	sub	r1,1,r1
	bne	_Label_786
	mov	580,r13		! source line 580
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	582,r13		! source line 582
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_729 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_728 = *_temp_729  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_728 == n then goto _Label_727		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_727
!	jmp	_Label_726
_Label_726:
! THEN...
	mov	583,r13		! source line 583
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_730 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	583,r13		! source line 583
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_727:
! FOR STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_735 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_736 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_735  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_731:
!   Perform the FOR-LOOP termination test
!   if i > _temp_736 then goto _Label_734		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_734
_Label_732:
	mov	585,r13		! source line 585
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
	mov	586,r13		! source line 586
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	587,r13		! source line 587
	mov	"\0\0AS",r10
!   _temp_737 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_737 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_741		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_741
	jmp	_Label_738
_Label_741:
!   if frameNumber < 27 then goto _Label_740		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_740
	jmp	_Label_738
_Label_740:
!   _temp_742 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_742) then goto _Label_739
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_739
!	jmp	_Label_738
_Label_738:
! THEN...
	mov	592,r13		! source line 592
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_743 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	592,r13		! source line 592
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_739:
! IF STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_746 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_747 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_746 == _temp_747 then goto _Label_745		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_745
!	jmp	_Label_744
_Label_744:
! THEN...
	mov	595,r13		! source line 595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_748 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	595,r13		! source line 595
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_745:
!   Increment the FOR-LOOP index variable and jump back
_Label_733:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_731
! END FOR
_Label_734:
! RETURN STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_50_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_749
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_750
	.word	8
	.word	4
	.word	_Label_751
	.word	12
	.word	4
	.word	_Label_752
	.word	16
	.word	4
	.word	_Label_753
	.word	-12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	_Label_755
	.word	-20
	.word	4
	.word	_Label_756
	.word	-24
	.word	4
	.word	_Label_757
	.word	-28
	.word	4
	.word	_Label_758
	.word	-32
	.word	4
	.word	_Label_759
	.word	-36
	.word	4
	.word	_Label_760
	.word	-40
	.word	4
	.word	_Label_761
	.word	-44
	.word	4
	.word	_Label_762
	.word	-48
	.word	4
	.word	_Label_763
	.word	-52
	.word	4
	.word	_Label_764
	.word	-56
	.word	4
	.word	_Label_765
	.word	-60
	.word	4
	.word	_Label_766
	.word	-64
	.word	4
	.word	0
_Label_749:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_750:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_751:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_752:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_764:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_765:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_766:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
