! Name of package being compiled: Kernel
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
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareMutex
	.export	_Method_P_Kernel_HoareMutex_1
	.export	_Method_P_Kernel_HoareMutex_2
	.export	_Method_P_Kernel_HoareMutex_3
	.export	_Method_P_Kernel_HoareMutex_4
	.export	_Method_P_Kernel_HoareMutex_5
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
	.export	_Method_P_Kernel_HoareCondition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_TestHoareSemantic
	.export	_Method_P_Kernel_TestHoareSemantic_1
	.export	_Method_P_Kernel_TestHoareSemantic_2
	.export	_Method_P_Kernel_TestHoareSemantic_3
	.export	_Method_P_Kernel_TestHoareSemantic_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_testHoareSemantic
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	76
_P_Kernel_testHoareSemantic:
	.skip	41716
	.align
! String constants
_StringConst_151:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_150:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_147:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_144:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_142:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_141:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_138:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_137:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_136:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_135:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_134:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_132:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_131:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_130:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_129:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_128:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_127:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_126:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_125:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_124:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_123:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_122:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_121:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_120:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_119:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_118:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_117:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_116:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_115:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_114:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_113:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_112:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_111:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_110:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_109:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_108:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_107:
	.word	15			! length
	.ascii	"Did not remove "
	.align
_StringConst_106:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_105:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_104:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_103:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_102:
	.word	1			! length
	.ascii	"J"
	.align
_StringConst_101:
	.word	1			! length
	.ascii	"I"
	.align
_StringConst_100:
	.word	1			! length
	.ascii	"H"
	.align
_StringConst_99:
	.word	1			! length
	.ascii	"G"
	.align
_StringConst_98:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_97:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_96:
	.word	1			! length
	.ascii	"D"
	.align
_StringConst_95:
	.word	1			! length
	.ascii	"C"
	.align
_StringConst_94:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_93:
	.word	1			! length
	.ascii	"A"
	.align
_StringConst_92:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_91:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_90:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_89:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_88:
	.word	1			! length
	.ascii	"J"
	.align
_StringConst_87:
	.word	1			! length
	.ascii	"I"
	.align
_StringConst_86:
	.word	1			! length
	.ascii	"H"
	.align
_StringConst_85:
	.word	1			! length
	.ascii	"G"
	.align
_StringConst_84:
	.word	1			! length
	.ascii	"F"
	.align
_StringConst_83:
	.word	1			! length
	.ascii	"E"
	.align
_StringConst_82:
	.word	1			! length
	.ascii	"D"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"C"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"B"
	.align
_StringConst_79:
	.word	1			! length
	.ascii	"A"
	.align
_StringConst_78:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_77:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_76:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_75:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_70:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_69:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_68:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_67:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_66:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_65:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_64:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_63:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_62:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_61:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_60:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_59:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_58:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_57:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_56:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_54:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_52:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_51:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_49:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_45:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xbf19d132,r4		! myHashVal = -1088827086
	cmp	r3,r4
	be	_Label_156
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
_Label_156:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_157
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_157
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_157
_Label_157:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_2122:
	push	r0
	sub	r1,1,r1
	bne	_Label_2122
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_158 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_158  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_2123:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2123
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_162 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_163 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_162  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_164 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_165 = _temp_164 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_165 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_2124:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2124
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_167 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_168 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_167  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_169 = _function_155_IdleFunction
	set	_function_155_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_170 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_169  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_171
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_172
	.word	-12
	.word	4
	.word	_Label_173
	.word	-16
	.word	4
	.word	_Label_174
	.word	-20
	.word	4
	.word	_Label_175
	.word	-24
	.word	4
	.word	_Label_176
	.word	-28
	.word	4
	.word	_Label_177
	.word	-32
	.word	4
	.word	_Label_178
	.word	-36
	.word	4
	.word	_Label_179
	.word	-40
	.word	4
	.word	_Label_180
	.word	-44
	.word	4
	.word	_Label_181
	.word	-48
	.word	4
	.word	_Label_182
	.word	-52
	.word	4
	.word	_Label_183
	.word	-56
	.word	4
	.word	_Label_184
	.word	-60
	.word	4
	.word	0
_Label_171:
	.ascii	"InitializeScheduler\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_155_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_155_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2125:
	push	r0
	sub	r1,1,r1
	bne	_Label_2125
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_185:
!	jmp	_Label_186
_Label_186:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_190 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_188 else goto _Label_189
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_189
	jmp	_Label_188
_Label_188:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_191
_Label_189:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
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
! END IF...
_Label_191:
! END WHILE...
	jmp	_Label_185
_Label_187:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_155_IdleFunction:
	.word	_sourceFileName
	.word	_Label_192
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_193
	.word	8
	.word	4
	.word	_Label_194
	.word	-12
	.word	4
	.word	_Label_195
	.word	-16
	.word	4
	.word	0
_Label_192:
	.ascii	"IdleFunction\0"
	.align
_Label_193:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_195:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_2126:
	push	r0
	sub	r1,1,r1
	bne	_Label_2126
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_198 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_198 ) then goto _Label_197		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_197
!	jmp	_Label_196
_Label_196:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_200 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_200 [0 ] into _temp_201
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
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
	store	r2,[r14+-60]
!   _temp_199 = _temp_201		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_199  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_197:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_202 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_202 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_203:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_207 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_206  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_206 then goto _Label_205 else goto _Label_204
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_204
	jmp	_Label_205
_Label_204:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_208 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_209 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_203
_Label_205:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_212 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_212 ) then goto _Label_211		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_211
!	jmp	_Label_210
_Label_210:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_214 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_214 [0 ] into _temp_215
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_213 = _temp_215		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_213  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_217 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_216 = *_temp_217  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_216) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_218 = _temp_216 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_211:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_219
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_220
	.word	8
	.word	4
	.word	_Label_221
	.word	-16
	.word	4
	.word	_Label_222
	.word	-20
	.word	4
	.word	_Label_223
	.word	-24
	.word	4
	.word	_Label_224
	.word	-28
	.word	4
	.word	_Label_225
	.word	-32
	.word	4
	.word	_Label_226
	.word	-36
	.word	4
	.word	_Label_227
	.word	-40
	.word	4
	.word	_Label_228
	.word	-44
	.word	4
	.word	_Label_229
	.word	-48
	.word	4
	.word	_Label_230
	.word	-52
	.word	4
	.word	_Label_231
	.word	-9
	.word	1
	.word	_Label_232
	.word	-56
	.word	4
	.word	_Label_233
	.word	-60
	.word	4
	.word	_Label_234
	.word	-64
	.word	4
	.word	_Label_235
	.word	-68
	.word	4
	.word	_Label_236
	.word	-72
	.word	4
	.word	_Label_237
	.word	-76
	.word	4
	.word	_Label_238
	.word	-80
	.word	4
	.word	0
_Label_219:
	.ascii	"Run\0"
	.align
_Label_220:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_231:
	.byte	'C'
	.ascii	"_temp_206\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_237:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_238:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_2127:
	push	r0
	sub	r1,1,r1
	bne	_Label_2127
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_239 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_240 = _function_154_ThreadPrintShort
	set	_function_154_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_241 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_240  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_242
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_243
	.word	-12
	.word	4
	.word	_Label_244
	.word	-16
	.word	4
	.word	_Label_245
	.word	-20
	.word	4
	.word	_Label_246
	.word	-24
	.word	4
	.word	0
_Label_242:
	.ascii	"PrintReadyList\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_246:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_2128:
	push	r0
	sub	r1,1,r1
	bne	_Label_2128
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_247 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_247  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_249 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_248 = *_temp_249  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_248  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_250 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_251
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_252
	.word	-12
	.word	4
	.word	_Label_253
	.word	-16
	.word	4
	.word	_Label_254
	.word	-20
	.word	4
	.word	_Label_255
	.word	-24
	.word	4
	.word	_Label_256
	.word	-28
	.word	4
	.word	_Label_257
	.word	-32
	.word	4
	.word	0
_Label_251:
	.ascii	"ThreadStartMain\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_257:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_2129:
	push	r0
	sub	r1,1,r1
	bne	_Label_2129
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_258 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_259 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_259  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_260
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_261
	.word	-12
	.word	4
	.word	_Label_262
	.word	-16
	.word	4
	.word	_Label_263
	.word	-20
	.word	4
	.word	0
_Label_260:
	.ascii	"ThreadFinish\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_263:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_2130:
	push	r0
	sub	r1,1,r1
	bne	_Label_2130
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_264 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_264  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_266		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_266
!	jmp	_Label_265
_Label_265:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_267 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_268 = *_temp_269  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_266:
! CALL STATEMENT...
!   _temp_270 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_271 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_272 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_273
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_274
	.word	8
	.word	4
	.word	_Label_275
	.word	-12
	.word	4
	.word	_Label_276
	.word	-16
	.word	4
	.word	_Label_277
	.word	-20
	.word	4
	.word	_Label_278
	.word	-24
	.word	4
	.word	_Label_279
	.word	-28
	.word	4
	.word	_Label_280
	.word	-32
	.word	4
	.word	_Label_281
	.word	-36
	.word	4
	.word	_Label_282
	.word	-40
	.word	4
	.word	0
_Label_273:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_274:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_282:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_2131:
	push	r0
	sub	r1,1,r1
	bne	_Label_2131
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_284		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_284
!	jmp	_Label_283
_Label_283:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_285
_Label_284:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_285:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_286
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_287
	.word	8
	.word	4
	.word	_Label_288
	.word	-12
	.word	4
	.word	0
_Label_286:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_287:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_288:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_154_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_154_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2132:
	push	r0
	sub	r1,1,r1
	bne	_Label_2132
	mov	826,r13		! source line 826
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	833,r13		! source line 833
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	834,r13		! source line 834
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_292		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_292
!   _temp_291 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_293
_Label_292:
!   _temp_291 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_293:
!   if _temp_291 then goto _Label_290 else goto _Label_289
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_289
	jmp	_Label_290
_Label_289:
! THEN...
	mov	835,r13		! source line 835
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_294 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	835,r13		! source line 835
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_290:
! CALL STATEMENT...
!   _temp_295 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_297 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_296 = *_temp_297  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	839,r13		! source line 839
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_298 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	841,r13		! source line 841
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_306 = *_temp_307  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_301
	cmp	r1,2
	be	_Label_302
	cmp	r1,3
	be	_Label_303
	cmp	r1,4
	be	_Label_304
	cmp	r1,5
	be	_Label_305
	jmp	_Label_299
! CASE 1...
_Label_301:
! CALL STATEMENT...
!   _temp_308 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0BR",r10
	jmp	_Label_300
! CASE 2...
_Label_302:
! CALL STATEMENT...
!   _temp_309 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0BR",r10
	jmp	_Label_300
! CASE 3...
_Label_303:
! CALL STATEMENT...
!   _temp_310 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	849,r13		! source line 849
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0BR",r10
	jmp	_Label_300
! CASE 4...
_Label_304:
! CALL STATEMENT...
!   _temp_311 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	853,r13		! source line 853
	mov	"\0\0BR",r10
	jmp	_Label_300
! CASE 5...
_Label_305:
! CALL STATEMENT...
!   _temp_312 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0BR",r10
	jmp	_Label_300
! DEFAULT CASE...
_Label_299:
! CALL STATEMENT...
!   _temp_313 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	858,r13		! source line 858
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_300:
! CALL STATEMENT...
!   _temp_314 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_315 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_316 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	862,r13		! source line 862
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_154_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_317
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_318
	.word	8
	.word	4
	.word	_Label_319
	.word	-16
	.word	4
	.word	_Label_320
	.word	-20
	.word	4
	.word	_Label_321
	.word	-24
	.word	4
	.word	_Label_322
	.word	-28
	.word	4
	.word	_Label_323
	.word	-32
	.word	4
	.word	_Label_324
	.word	-36
	.word	4
	.word	_Label_325
	.word	-40
	.word	4
	.word	_Label_326
	.word	-44
	.word	4
	.word	_Label_327
	.word	-48
	.word	4
	.word	_Label_328
	.word	-52
	.word	4
	.word	_Label_329
	.word	-56
	.word	4
	.word	_Label_330
	.word	-60
	.word	4
	.word	_Label_331
	.word	-64
	.word	4
	.word	_Label_332
	.word	-68
	.word	4
	.word	_Label_333
	.word	-72
	.word	4
	.word	_Label_334
	.word	-76
	.word	4
	.word	_Label_335
	.word	-9
	.word	1
	.word	_Label_336
	.word	-80
	.word	4
	.word	0
_Label_317:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_318:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_335:
	.byte	'C'
	.ascii	"_temp_291\0"
	.align
_Label_336:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_153_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_153_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2133:
	push	r0
	sub	r1,1,r1
	bne	_Label_2133
	mov	1187,r13		! source line 1187
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_337 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1191,r13		! source line 1191
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1192,r13		! source line 1192
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_153_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_338
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	8
	.word	4
	.word	_Label_340
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_339:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_2134:
	push	r0
	sub	r1,1,r1
	bne	_Label_2134
	mov	1197,r13		! source line 1197
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_341 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1203,r13		! source line 1203
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_342
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_343
	.word	8
	.word	4
	.word	_Label_344
	.word	-12
	.word	4
	.word	0
_Label_342:
	.ascii	"ProcessFinish\0"
	.align
_Label_343:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_2135:
	push	r0
	sub	r1,1,r1
	bne	_Label_2135
	mov	1843,r13		! source line 1843
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1855,r13		! source line 1855
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
! ASSIGNMENT STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_345
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_345:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_2136:
	push	r0
	sub	r1,1,r1
	bne	_Label_2136
	mov	1861,r13		! source line 1861
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_346 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1871,r13		! source line 1871
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_347
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_348
	.word	-12
	.word	4
	.word	0
_Label_347:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1883,r13		! source line 1883
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_349
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_349:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2137:
	push	r0
	sub	r1,1,r1
	bne	_Label_2137
	mov	1897,r13		! source line 1897
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1903,r13		! source line 1903
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_350 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CA",r10
	call	_function_152_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_351
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_352
	.word	-12
	.word	4
	.word	0
_Label_351:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2138:
	push	r0
	sub	r1,1,r1
	bne	_Label_2138
	mov	1909,r13		! source line 1909
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_353 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CA",r10
	call	_function_152_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_354
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_355
	.word	-12
	.word	4
	.word	0
_Label_354:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2139:
	push	r0
	sub	r1,1,r1
	bne	_Label_2139
	mov	1921,r13		! source line 1921
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_356 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1928,r13		! source line 1928
	mov	"\0\0CA",r10
	call	_function_152_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_357
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_358
	.word	-12
	.word	4
	.word	0
_Label_357:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2140:
	push	r0
	sub	r1,1,r1
	bne	_Label_2140
	mov	1933,r13		! source line 1933
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_359 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CA",r10
	call	_function_152_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_360
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_361
	.word	-12
	.word	4
	.word	0
_Label_360:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2141:
	push	r0
	sub	r1,1,r1
	bne	_Label_2141
	mov	1945,r13		! source line 1945
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_362 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CA",r10
	call	_function_152_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1952,r13		! source line 1952
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_363
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_364
	.word	-12
	.word	4
	.word	0
_Label_363:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2142:
	push	r0
	sub	r1,1,r1
	bne	_Label_2142
	mov	1957,r13		! source line 1957
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_365 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_function_152_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_366
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_367
	.word	-12
	.word	4
	.word	0
_Label_366:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2143:
	push	r0
	sub	r1,1,r1
	bne	_Label_2143
	mov	1969,r13		! source line 1969
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1975,r13		! source line 1975
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_368 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CA",r10
	call	_function_152_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1976,r13		! source line 1976
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_369
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_370
	.word	-12
	.word	4
	.word	0
_Label_369:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_152_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_152_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2144:
	push	r0
	sub	r1,1,r1
	bne	_Label_2144
	mov	1981,r13		! source line 1981
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_371 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_372 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_376 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_375 = *_temp_376  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_375 == 0 then goto _Label_374		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_374
!	jmp	_Label_373
_Label_373:
! THEN...
	mov	1992,r13		! source line 1992
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_378 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_377 = *_temp_378  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_377) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_379
_Label_374:
! ELSE...
	mov	1994,r13		! source line 1994
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_380 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_379:
! SEND STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	2002,r13		! source line 2002
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_152_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_381
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_382
	.word	8
	.word	4
	.word	_Label_383
	.word	-12
	.word	4
	.word	_Label_384
	.word	-16
	.word	4
	.word	_Label_385
	.word	-20
	.word	4
	.word	_Label_386
	.word	-24
	.word	4
	.word	_Label_387
	.word	-28
	.word	4
	.word	_Label_388
	.word	-32
	.word	4
	.word	_Label_389
	.word	-36
	.word	4
	.word	0
_Label_381:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_382:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_2145:
	push	r0
	sub	r1,1,r1
	bne	_Label_2145
	mov	2007,r13		! source line 2007
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	2028,r13		! source line 2028
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2146
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_390
_Label_2146:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_390
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_390
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_404,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_404:
	jmp	_Label_396	! 1:	
	jmp	_Label_403	! 2:	
	jmp	_Label_393	! 3:	
	jmp	_Label_392	! 4:	
	jmp	_Label_395	! 5:	
	jmp	_Label_394	! 6:	
	jmp	_Label_397	! 7:	
	jmp	_Label_398	! 8:	
	jmp	_Label_399	! 9:	
	jmp	_Label_400	! 10:	
	jmp	_Label_401	! 11:	
	jmp	_Label_402	! 12:	
! CASE 4...
_Label_392:
! RETURN STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0RE",r10
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_405  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_405  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_393:
! CALL STATEMENT...
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_394:
! RETURN STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_406  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_406  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_395:
! RETURN STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2037,r13		! source line 2037
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_407  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_407  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_396:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2039,r13		! source line 2039
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_397:
! RETURN STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2042,r13		! source line 2042
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_408  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_408  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_398:
! RETURN STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2044,r13		! source line 2044
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_409  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_409  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_399:
! RETURN STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2046,r13		! source line 2046
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_410  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_410  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_400:
! RETURN STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	2048,r13		! source line 2048
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_411  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_411  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_401:
! RETURN STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2050,r13		! source line 2050
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_412  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_412  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_402:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2052,r13		! source line 2052
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_403:
! CALL STATEMENT...
!   Call the function
	mov	2055,r13		! source line 2055
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_390:
! CALL STATEMENT...
!   _temp_413 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2058,r13		! source line 2058
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2059,r13		! source line 2059
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2060,r13		! source line 2060
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_414 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2061,r13		! source line 2061
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_391:
! RETURN STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_415
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_416
	.word	8
	.word	4
	.word	_Label_417
	.word	12
	.word	4
	.word	_Label_418
	.word	16
	.word	4
	.word	_Label_419
	.word	20
	.word	4
	.word	_Label_420
	.word	24
	.word	4
	.word	_Label_421
	.word	-12
	.word	4
	.word	_Label_422
	.word	-16
	.word	4
	.word	_Label_423
	.word	-20
	.word	4
	.word	_Label_424
	.word	-24
	.word	4
	.word	_Label_425
	.word	-28
	.word	4
	.word	_Label_426
	.word	-32
	.word	4
	.word	_Label_427
	.word	-36
	.word	4
	.word	_Label_428
	.word	-40
	.word	4
	.word	_Label_429
	.word	-44
	.word	4
	.word	_Label_430
	.word	-48
	.word	4
	.word	0
_Label_415:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_418:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"arg4\0"
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
	.ascii	"_temp_412\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	2068,r13		! source line 2068
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_431
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_432
	.word	8
	.word	4
	.word	0
_Label_431:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_432:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2074,r13		! source line 2074
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_433
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_433:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2080,r13		! source line 2080
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_434
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_434:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2086,r13		! source line 2086
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_435
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_435:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	2093,r13		! source line 2093
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_436
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_437
	.word	8
	.word	4
	.word	0
_Label_436:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	2100,r13		! source line 2100
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_438
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_439
	.word	8
	.word	4
	.word	0
_Label_438:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_439:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	2107,r13		! source line 2107
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_440
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_441
	.word	8
	.word	4
	.word	0
_Label_440:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_441:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	2114,r13		! source line 2114
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_442
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_443
	.word	8
	.word	4
	.word	0
_Label_442:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_443:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	2121,r13		! source line 2121
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_444
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_445
	.word	8
	.word	4
	.word	_Label_446
	.word	12
	.word	4
	.word	_Label_447
	.word	16
	.word	4
	.word	0
_Label_444:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_445:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_446:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	2128,r13		! source line 2128
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_448
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_449
	.word	8
	.word	4
	.word	_Label_450
	.word	12
	.word	4
	.word	_Label_451
	.word	16
	.word	4
	.word	0
_Label_448:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_449:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_450:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_451:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	2135,r13		! source line 2135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_452
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_453
	.word	8
	.word	4
	.word	_Label_454
	.word	12
	.word	4
	.word	0
_Label_452:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_453:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	2142,r13		! source line 2142
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_455
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_456
	.word	8
	.word	4
	.word	0
_Label_455:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_456:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_457
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_457:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_458
	.word	_sourceFileName
	.word	125		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_458:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_2147:
	push	r0
	sub	r1,1,r1
	bne	_Label_2147
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_460		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_460
!	jmp	_Label_459
_Label_459:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_461 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_460:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_463
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_464
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_465
	.word	12
	.word	4
	.word	_Label_466
	.word	-12
	.word	4
	.word	_Label_467
	.word	-16
	.word	4
	.word	0
_Label_463:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_464:
	.ascii	"Pself\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_2148:
	push	r0
	sub	r1,1,r1
	bne	_Label_2148
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_469		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_469
!	jmp	_Label_468
_Label_468:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_470 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_469:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_472		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_472
!	jmp	_Label_471
_Label_471:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_473 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_474 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_474 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_475 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_472:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_476
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_478
	.word	-12
	.word	4
	.word	_Label_479
	.word	-16
	.word	4
	.word	_Label_480
	.word	-20
	.word	4
	.word	_Label_481
	.word	-24
	.word	4
	.word	_Label_482
	.word	-28
	.word	4
	.word	_Label_483
	.word	-32
	.word	4
	.word	0
_Label_476:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_477:
	.ascii	"Pself\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_482:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_483:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_2149:
	push	r0
	sub	r1,1,r1
	bne	_Label_2149
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_485		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_485
!	jmp	_Label_484
_Label_484:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_486 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_485:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_488		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_488
!	jmp	_Label_487
_Label_487:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_489 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_488:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_490
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_491
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_492
	.word	-12
	.word	4
	.word	_Label_493
	.word	-16
	.word	4
	.word	_Label_494
	.word	-20
	.word	4
	.word	0
_Label_490:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_491:
	.ascii	"Pself\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_494:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_495
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_495:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_496
	.word	_sourceFileName
	.word	138		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_496:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_2150:
	push	r0
	sub	r1,1,r1
	bne	_Label_2150
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_498
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_500
	.word	-12
	.word	4
	.word	0
_Label_498:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_499:
	.ascii	"Pself\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_2151:
	push	r0
	sub	r1,1,r1
	bne	_Label_2151
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_502		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_502
!	jmp	_Label_501
_Label_501:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_503 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	305,r13		! source line 305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_502:
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	307,r13		! source line 307
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_507		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_507
!   _temp_506 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_508
_Label_507:
!   _temp_506 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_508:
!   if _temp_506 then goto _Label_505 else goto _Label_504
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_504
	jmp	_Label_505
_Label_504:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_509
_Label_505:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_510 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_509:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_511
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_513
	.word	-16
	.word	4
	.word	_Label_514
	.word	-9
	.word	1
	.word	_Label_515
	.word	-20
	.word	4
	.word	_Label_516
	.word	-24
	.word	4
	.word	0
_Label_511:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_512:
	.ascii	"Pself\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_514:
	.byte	'C'
	.ascii	"_temp_506\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_516:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_2152:
	push	r0
	sub	r1,1,r1
	bne	_Label_2152
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_518		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_518
!	jmp	_Label_517
_Label_517:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_519 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	325,r13		! source line 325
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_518:
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   _temp_520 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_522		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_522
!	jmp	_Label_521
_Label_521:
! THEN...
	mov	330,r13		! source line 330
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_523 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_523 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_524 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_525
_Label_522:
! ELSE...
	mov	334,r13		! source line 334
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_525:
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_526
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_528
	.word	-12
	.word	4
	.word	_Label_529
	.word	-16
	.word	4
	.word	_Label_530
	.word	-20
	.word	4
	.word	_Label_531
	.word	-24
	.word	4
	.word	_Label_532
	.word	-28
	.word	4
	.word	_Label_533
	.word	-32
	.word	4
	.word	0
_Label_526:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_527:
	.ascii	"Pself\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_532:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_533:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_2153:
	push	r0
	sub	r1,1,r1
	bne	_Label_2153
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_536		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_536
!	jmp	_Label_535
_Label_535:
!   _temp_534 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_537
_Label_536:
!   _temp_534 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_537:
!   ReturnResult: _temp_534  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_538
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_540
	.word	-9
	.word	1
	.word	0
_Label_538:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_539:
	.ascii	"Pself\0"
	.align
_Label_540:
	.byte	'C'
	.ascii	"_temp_534\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_541
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_541:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_542
	.word	_sourceFileName
	.word	152		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_542:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_2154:
	push	r0
	sub	r1,1,r1
	bne	_Label_2154
	mov	382,r13		! source line 382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_544
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_545
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_546
	.word	-12
	.word	4
	.word	0
_Label_544:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_545:
	.ascii	"Pself\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_2155:
	push	r0
	sub	r1,1,r1
	bne	_Label_2155
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0IF",r10
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_549  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_549 then goto _Label_548 else goto _Label_547
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_547
	jmp	_Label_548
_Label_547:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_550 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_550  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	392,r13		! source line 392
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_548:
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_551 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_552
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_554
	.word	12
	.word	4
	.word	_Label_555
	.word	-16
	.word	4
	.word	_Label_556
	.word	-20
	.word	4
	.word	_Label_557
	.word	-9
	.word	1
	.word	_Label_558
	.word	-24
	.word	4
	.word	0
_Label_552:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_553:
	.ascii	"Pself\0"
	.align
_Label_554:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_557:
	.byte	'C'
	.ascii	"_temp_549\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_2156:
	push	r0
	sub	r1,1,r1
	bne	_Label_2156
	mov	404,r13		! source line 404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0IF",r10
	mov	408,r13		! source line 408
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_561  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_561 then goto _Label_560 else goto _Label_559
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_559
	jmp	_Label_560
_Label_559:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_562 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	409,r13		! source line 409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_560:
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_563 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_565		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_565
!	jmp	_Label_564
_Label_564:
! THEN...
	mov	414,r13		! source line 414
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_566 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_566 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_567 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_565:
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_568
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_570
	.word	12
	.word	4
	.word	_Label_571
	.word	-16
	.word	4
	.word	_Label_572
	.word	-20
	.word	4
	.word	_Label_573
	.word	-24
	.word	4
	.word	_Label_574
	.word	-28
	.word	4
	.word	_Label_575
	.word	-9
	.word	1
	.word	_Label_576
	.word	-32
	.word	4
	.word	_Label_577
	.word	-36
	.word	4
	.word	0
_Label_568:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_569:
	.ascii	"Pself\0"
	.align
_Label_570:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_575:
	.byte	'C'
	.ascii	"_temp_561\0"
	.align
_Label_576:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_577:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_2157:
	push	r0
	sub	r1,1,r1
	bne	_Label_2157
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_580  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_580 then goto _Label_579 else goto _Label_578
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_578
	jmp	_Label_579
_Label_578:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_581 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	427,r13		! source line 427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_579:
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0WH",r10
_Label_582:
!	jmp	_Label_583
_Label_583:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_585 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_586
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_586
	jmp	_Label_587
_Label_586:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_584
! END IF...
_Label_587:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_588 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_588 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_589 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_582
_Label_584:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_590
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_592
	.word	12
	.word	4
	.word	_Label_593
	.word	-16
	.word	4
	.word	_Label_594
	.word	-20
	.word	4
	.word	_Label_595
	.word	-24
	.word	4
	.word	_Label_596
	.word	-28
	.word	4
	.word	_Label_597
	.word	-9
	.word	1
	.word	_Label_598
	.word	-32
	.word	4
	.word	_Label_599
	.word	-36
	.word	4
	.word	0
_Label_590:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_591:
	.ascii	"Pself\0"
	.align
_Label_592:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_597:
	.byte	'C'
	.ascii	"_temp_580\0"
	.align
_Label_598:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_599:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareMutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareMutex:
	.word	_Label_600
	jmp	_Method_P_Kernel_HoareMutex_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareMutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_HoareMutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_HoareMutex_5	! 16:	GiveLock
	jmp	_Method_P_Kernel_HoareMutex_4	! 20:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_600:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_601
	.word	_sourceFileName
	.word	165		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_HoareMutex
	.word	_P_System_Object
	.word	0
_Label_601:
	.ascii	"HoareMutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareMutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_1,r1
	push	r1
	mov	1,r1
_Label_2158:
	push	r0
	sub	r1,1,r1
	bne	_Label_2158
	mov	460,r13		! source line 460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_1:
	.word	_sourceFileName
	.word	_Label_603
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_605
	.word	-12
	.word	4
	.word	0
_Label_603:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_604:
	.ascii	"Pself\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_HoareMutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_2,r1
	push	r1
	mov	6,r1
_Label_2159:
	push	r0
	sub	r1,1,r1
	bne	_Label_2159
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_607		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_607
!	jmp	_Label_606
_Label_606:
! THEN...
	mov	471,r13		! source line 471
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_608 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_608  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	471,r13		! source line 471
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_607:
! ASSIGNMENT STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	473,r13		! source line 473
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_612		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_612
!   _temp_611 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_613
_Label_612:
!   _temp_611 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_613:
!   if _temp_611 then goto _Label_610 else goto _Label_609
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_609
	jmp	_Label_610
_Label_609:
! THEN...
	mov	475,r13		! source line 475
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_614
_Label_610:
! ELSE...
	mov	477,r13		! source line 477
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0SE",r10
!   _temp_615 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_614:
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_2:
	.word	_sourceFileName
	.word	_Label_616
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_617
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_618
	.word	-16
	.word	4
	.word	_Label_619
	.word	-9
	.word	1
	.word	_Label_620
	.word	-20
	.word	4
	.word	_Label_621
	.word	-24
	.word	4
	.word	0
_Label_616:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_617:
	.ascii	"Pself\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_619:
	.byte	'C'
	.ascii	"_temp_611\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_621:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_HoareMutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_3,r1
	push	r1
	mov	8,r1
_Label_2160:
	push	r0
	sub	r1,1,r1
	bne	_Label_2160
	mov	485,r13		! source line 485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_623		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_623
!	jmp	_Label_622
_Label_622:
! THEN...
	mov	491,r13		! source line 491
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_624 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	491,r13		! source line 491
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_623:
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
	mov	494,r13		! source line 494
	mov	"\0\0SE",r10
!   _temp_625 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_627		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_627
!	jmp	_Label_626
_Label_626:
! THEN...
	mov	496,r13		! source line 496
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_628 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0SE",r10
!   _temp_629 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_630
_Label_627:
! ELSE...
	mov	500,r13		! source line 500
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_630:
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_3:
	.word	_sourceFileName
	.word	_Label_631
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_633
	.word	-12
	.word	4
	.word	_Label_634
	.word	-16
	.word	4
	.word	_Label_635
	.word	-20
	.word	4
	.word	_Label_636
	.word	-24
	.word	4
	.word	_Label_637
	.word	-28
	.word	4
	.word	_Label_638
	.word	-32
	.word	4
	.word	0
_Label_631:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_632:
	.ascii	"Pself\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_637:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_638:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_HoareMutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_4,r1
	push	r1
	mov	1,r1
_Label_2161:
	push	r0
	sub	r1,1,r1
	bne	_Label_2161
	mov	507,r13		! source line 507
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_641		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_641
!	jmp	_Label_640
_Label_640:
!   _temp_639 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_642
_Label_641:
!   _temp_639 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_642:
!   ReturnResult: _temp_639  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_4:
	.word	_sourceFileName
	.word	_Label_643
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_644
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_645
	.word	-9
	.word	1
	.word	0
_Label_643:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_644:
	.ascii	"Pself\0"
	.align
_Label_645:
	.byte	'C'
	.ascii	"_temp_639\0"
	.align
! 
! ===============  METHOD GiveLock  ===============
! 
_Method_P_Kernel_HoareMutex_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareMutex_5,r1
	push	r1
	mov	514,r13		! source line 514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
!   heldBy = th		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareMutex_5:
	.word	_sourceFileName
	.word	_Label_646
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_648
	.word	12
	.word	4
	.word	0
_Label_646:
	.ascii	"HoareMutex"
	.ascii	"::"
	.ascii	"GiveLock\0"
	.align
_Label_647:
	.ascii	"Pself\0"
	.align
_Label_648:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_649
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_649:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_650
	.word	_sourceFileName
	.word	181		! line number
	.word	36		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_650:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_2162:
	push	r0
	sub	r1,1,r1
	bne	_Label_2162
	mov	556,r13		! source line 556
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_652
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_653
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_654
	.word	-12
	.word	4
	.word	0
_Label_652:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_653:
	.ascii	"Pself\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_2163:
	push	r0
	sub	r1,1,r1
	bne	_Label_2163
	mov	562,r13		! source line 562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0IF",r10
	mov	565,r13		! source line 565
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_657  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_657 then goto _Label_656 else goto _Label_655
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_655
	jmp	_Label_656
_Label_655:
! THEN...
	mov	566,r13		! source line 566
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_658 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_658  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	566,r13		! source line 566
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_656:
! ASSIGNMENT STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	568,r13		! source line 568
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0SE",r10
!   _temp_659 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_660
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_661
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_662
	.word	12
	.word	4
	.word	_Label_663
	.word	-16
	.word	4
	.word	_Label_664
	.word	-20
	.word	4
	.word	_Label_665
	.word	-9
	.word	1
	.word	_Label_666
	.word	-24
	.word	4
	.word	0
_Label_660:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_661:
	.ascii	"Pself\0"
	.align
_Label_662:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_665:
	.byte	'C'
	.ascii	"_temp_657\0"
	.align
_Label_666:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	9,r1
_Label_2164:
	push	r0
	sub	r1,1,r1
	bne	_Label_2164
	mov	578,r13		! source line 578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0IF",r10
	mov	585,r13		! source line 585
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_669  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_669 then goto _Label_668 else goto _Label_667
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_667
	jmp	_Label_668
_Label_667:
! THEN...
	mov	586,r13		! source line 586
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_670 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_670  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	586,r13		! source line 586
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_668:
! ASSIGNMENT STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
	mov	589,r13		! source line 589
	mov	"\0\0SE",r10
!   _temp_671 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_673		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_673
!	jmp	_Label_672
_Label_672:
! THEN...
	mov	592,r13		! source line 592
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message GiveLock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_674 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0SE",r10
!   _temp_675 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_673:
! ASSIGNMENT STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_676
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_677
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_678
	.word	12
	.word	4
	.word	_Label_679
	.word	-16
	.word	4
	.word	_Label_680
	.word	-20
	.word	4
	.word	_Label_681
	.word	-24
	.word	4
	.word	_Label_682
	.word	-28
	.word	4
	.word	_Label_683
	.word	-9
	.word	1
	.word	_Label_684
	.word	-32
	.word	4
	.word	_Label_685
	.word	-36
	.word	4
	.word	0
_Label_676:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_677:
	.ascii	"Pself\0"
	.align
_Label_678:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_683:
	.byte	'C'
	.ascii	"_temp_669\0"
	.align
_Label_684:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_HoareCondition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_4,r1
	push	r1
	mov	9,r1
_Label_2165:
	push	r0
	sub	r1,1,r1
	bne	_Label_2165
	mov	603,r13		! source line 603
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	607,r13		! source line 607
	mov	"\0\0IF",r10
	mov	607,r13		! source line 607
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_688  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_688 then goto _Label_687 else goto _Label_686
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_686
	jmp	_Label_687
_Label_686:
! THEN...
	mov	608,r13		! source line 608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	608,r13		! source line 608
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_687:
! ASSIGNMENT STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0WH",r10
_Label_690:
!	jmp	_Label_691
_Label_691:
	mov	611,r13		! source line 611
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0AS",r10
	mov	612,r13		! source line 612
	mov	"\0\0SE",r10
!   _temp_693 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_694
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_694
	jmp	_Label_695
_Label_694:
! THEN...
	mov	614,r13		! source line 614
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_692
! END IF...
_Label_695:
! ASSIGNMENT STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_696 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_696 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0SE",r10
!   _temp_697 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_690
_Label_692:
! ASSIGNMENT STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	619,r13		! source line 619
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_4:
	.word	_sourceFileName
	.word	_Label_698
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_699
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_700
	.word	12
	.word	4
	.word	_Label_701
	.word	-16
	.word	4
	.word	_Label_702
	.word	-20
	.word	4
	.word	_Label_703
	.word	-24
	.word	4
	.word	_Label_704
	.word	-28
	.word	4
	.word	_Label_705
	.word	-9
	.word	1
	.word	_Label_706
	.word	-32
	.word	4
	.word	_Label_707
	.word	-36
	.word	4
	.word	0
_Label_698:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_699:
	.ascii	"Pself\0"
	.align
_Label_700:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_705:
	.byte	'C'
	.ascii	"_temp_688\0"
	.align
_Label_706:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_707:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_708
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_708:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_709
	.word	_sourceFileName
	.word	195		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_709:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_2166:
	push	r0
	sub	r1,1,r1
	bne	_Label_2166
	mov	633,r13		! source line 633
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	638,r13		! source line 638
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	641,r13		! source line 641
	mov	"\0\0AS",r10
!   _temp_710 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_710) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_710 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   _temp_711 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_711 [0 ] into _temp_712
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
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
	store	r2,[r14+-180]
!   Data Move: *_temp_712 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	643,r13		! source line 643
	mov	"\0\0AS",r10
!   _temp_713 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_713 [999 ] into _temp_714
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_714 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	644,r13		! source line 644
	mov	"\0\0AS",r10
!   _temp_715 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_715 [999 ] into _temp_716
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_716		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	645,r13		! source line 645
	mov	"\0\0AS",r10
!   _temp_717 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_719 = &_temp_718
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_719 = _temp_719 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_721:
!   Data Move: *_temp_719 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_719 = _temp_719 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_720 = _temp_720 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_720) then goto _Label_721
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_721
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_722 = &_temp_718
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_2167
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2167:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_717 = *_temp_722  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_2168:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2168
! ASSIGNMENT STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0AS",r10
!   _temp_723 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_725 = &_temp_724
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_725 = _temp_725 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_727:
!   Data Move: *_temp_725 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_725 = _temp_725 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_726 = _temp_726 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_726) then goto _Label_727
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_727
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_728 = &_temp_724
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_2169
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2169:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_723 = *_temp_728  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_2170:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2170
! RETURN STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_729
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_730
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_731
	.word	12
	.word	4
	.word	_Label_732
	.word	-12
	.word	4
	.word	_Label_733
	.word	-16
	.word	4
	.word	_Label_734
	.word	-20
	.word	4
	.word	_Label_735
	.word	-84
	.word	64
	.word	_Label_736
	.word	-88
	.word	4
	.word	_Label_737
	.word	-92
	.word	4
	.word	_Label_738
	.word	-96
	.word	4
	.word	_Label_739
	.word	-100
	.word	4
	.word	_Label_740
	.word	-156
	.word	56
	.word	_Label_741
	.word	-160
	.word	4
	.word	_Label_742
	.word	-164
	.word	4
	.word	_Label_743
	.word	-168
	.word	4
	.word	_Label_744
	.word	-172
	.word	4
	.word	_Label_745
	.word	-176
	.word	4
	.word	_Label_746
	.word	-180
	.word	4
	.word	_Label_747
	.word	-184
	.word	4
	.word	_Label_748
	.word	-188
	.word	4
	.word	0
_Label_729:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_730:
	.ascii	"Pself\0"
	.align
_Label_731:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_742:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_2171:
	push	r0
	sub	r1,1,r1
	bne	_Label_2171
	mov	652,r13		! source line 652
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	663,r13		! source line 663
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_749 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_749  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_751 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_750  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_752
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_753
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_754
	.word	12
	.word	4
	.word	_Label_755
	.word	16
	.word	4
	.word	_Label_756
	.word	-12
	.word	4
	.word	_Label_757
	.word	-16
	.word	4
	.word	_Label_758
	.word	-20
	.word	4
	.word	_Label_759
	.word	-24
	.word	4
	.word	_Label_760
	.word	-28
	.word	4
	.word	0
_Label_752:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_753:
	.ascii	"Pself\0"
	.align
_Label_754:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_755:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_759:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_760:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_2172:
	push	r0
	sub	r1,1,r1
	bne	_Label_2172
	mov	676,r13		! source line 676
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	692,r13		! source line 692
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_763 == _P_Kernel_currentThread then goto _Label_762		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_762
!	jmp	_Label_761
_Label_761:
! THEN...
	mov	693,r13		! source line 693
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_764 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	693,r13		! source line 693
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_762:
! ASSIGNMENT STATEMENT...
	mov	695,r13		! source line 695
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0AS",r10
	mov	699,r13		! source line 699
	mov	"\0\0SE",r10
!   _temp_765 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_767		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_767
!	jmp	_Label_766
_Label_766:
! THEN...
	mov	704,r13		! source line 704
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_769		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_769
!	jmp	_Label_768
_Label_768:
! THEN...
	mov	705,r13		! source line 705
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_770 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_770  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	705,r13		! source line 705
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_769:
! ASSIGNMENT STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_772 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_771  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_767:
! ASSIGNMENT STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	711,r13		! source line 711
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_773
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_774
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_775
	.word	-12
	.word	4
	.word	_Label_776
	.word	-16
	.word	4
	.word	_Label_777
	.word	-20
	.word	4
	.word	_Label_778
	.word	-24
	.word	4
	.word	_Label_779
	.word	-28
	.word	4
	.word	_Label_780
	.word	-32
	.word	4
	.word	_Label_781
	.word	-36
	.word	4
	.word	_Label_782
	.word	-40
	.word	4
	.word	_Label_783
	.word	-44
	.word	4
	.word	0
_Label_773:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_774:
	.ascii	"Pself\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_781:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_782:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_783:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_2173:
	push	r0
	sub	r1,1,r1
	bne	_Label_2173
	mov	716,r13		! source line 716
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_785		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_785
!	jmp	_Label_784
_Label_784:
! THEN...
	mov	729,r13		! source line 729
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_786 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_786  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	729,r13		! source line 729
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_785:
! IF STATEMENT...
	mov	732,r13		! source line 732
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_789 == _P_Kernel_currentThread then goto _Label_788		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_788
!	jmp	_Label_787
_Label_787:
! THEN...
	mov	733,r13		! source line 733
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_790 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	733,r13		! source line 733
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_788:
! ASSIGNMENT STATEMENT...
	mov	738,r13		! source line 738
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	739,r13		! source line 739
	mov	"\0\0AS",r10
	mov	739,r13		! source line 739
	mov	"\0\0SE",r10
!   _temp_791 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_792
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_792
	jmp	_Label_793
_Label_792:
! THEN...
	mov	741,r13		! source line 741
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_794 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	741,r13		! source line 741
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_793:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_795
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_796
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_797
	.word	-12
	.word	4
	.word	_Label_798
	.word	-16
	.word	4
	.word	_Label_799
	.word	-20
	.word	4
	.word	_Label_800
	.word	-24
	.word	4
	.word	_Label_801
	.word	-28
	.word	4
	.word	_Label_802
	.word	-32
	.word	4
	.word	0
_Label_795:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_796:
	.ascii	"Pself\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_802:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_2174:
	push	r0
	sub	r1,1,r1
	bne	_Label_2174
	mov	748,r13		! source line 748
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0IF",r10
!   _temp_806 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_806 [0 ] into _temp_807
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_805 = *_temp_807  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_805 == 606348324 then goto _Label_804		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_804
!	jmp	_Label_803
_Label_803:
! THEN...
	mov	755,r13		! source line 755
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_808 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_808  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	755,r13		! source line 755
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_809
_Label_804:
! ELSE...
	mov	756,r13		! source line 756
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0IF",r10
!   _temp_813 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_813 [999 ] into _temp_814
!     make sure index expr is >= 0
	mov	999,r2
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
!   Data Move: _temp_812 = *_temp_814  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_812 == 606348324 then goto _Label_811		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_811
!	jmp	_Label_810
_Label_810:
! THEN...
	mov	757,r13		! source line 757
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_815 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	757,r13		! source line 757
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_811:
! END IF...
_Label_809:
! RETURN STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_816
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_818
	.word	-12
	.word	4
	.word	_Label_819
	.word	-16
	.word	4
	.word	_Label_820
	.word	-20
	.word	4
	.word	_Label_821
	.word	-24
	.word	4
	.word	_Label_822
	.word	-28
	.word	4
	.word	_Label_823
	.word	-32
	.word	4
	.word	_Label_824
	.word	-36
	.word	4
	.word	_Label_825
	.word	-40
	.word	4
	.word	0
_Label_816:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_817:
	.ascii	"Pself\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_2175:
	push	r0
	sub	r1,1,r1
	bne	_Label_2175
	mov	763,r13		! source line 763
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	769,r13		! source line 769
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_826 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_826  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	771,r13		! source line 771
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_827 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_827  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	772,r13		! source line 772
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_828  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_829 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_829  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	774,r13		! source line 774
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_830 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_830  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	775,r13		! source line 775
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_835 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_836 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_835  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_831:
!   Perform the FOR-LOOP termination test
!   if i > _temp_836 then goto _Label_834		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_834
_Label_832:
	mov	776,r13		! source line 776
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_837 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_837  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_838 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	778,r13		! source line 778
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_839 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_839  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_841 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_841 [i ] into _temp_842
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_840 = *_temp_842  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_840  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_843 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_843  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_845 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_845 [i ] into _temp_846
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_844 = *_temp_846  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_844  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_847 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_833:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_831
! END FOR
_Label_834:
! CALL STATEMENT...
!   _temp_848 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-116]
!   _temp_849 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_849  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_850 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-108]
!   _temp_852 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_852 [0 ] into _temp_853
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
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
	store	r2,[r14+-96]
!   _temp_851 = _temp_853		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_851  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	787,r13		! source line 787
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_856
	cmp	r1,2
	be	_Label_857
	cmp	r1,3
	be	_Label_858
	cmp	r1,4
	be	_Label_859
	cmp	r1,5
	be	_Label_860
	jmp	_Label_854
! CASE 1...
_Label_856:
! CALL STATEMENT...
!   _temp_861 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_861  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0BR",r10
	jmp	_Label_855
! CASE 2...
_Label_857:
! CALL STATEMENT...
!   _temp_862 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_862  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0BR",r10
	jmp	_Label_855
! CASE 3...
_Label_858:
! CALL STATEMENT...
!   _temp_863 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	795,r13		! source line 795
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0BR",r10
	jmp	_Label_855
! CASE 4...
_Label_859:
! CALL STATEMENT...
!   _temp_864 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_864  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	798,r13		! source line 798
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	799,r13		! source line 799
	mov	"\0\0BR",r10
	jmp	_Label_855
! CASE 5...
_Label_860:
! CALL STATEMENT...
!   _temp_865 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_865  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	801,r13		! source line 801
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0BR",r10
	jmp	_Label_855
! DEFAULT CASE...
_Label_854:
! CALL STATEMENT...
!   _temp_866 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_866  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	804,r13		! source line 804
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_855:
! CALL STATEMENT...
!   _temp_867 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_867  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	806,r13		! source line 806
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_868 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_868  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_873 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_874 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_873  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_869:
!   Perform the FOR-LOOP termination test
!   if i > _temp_874 then goto _Label_872		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_872
_Label_870:
	mov	810,r13		! source line 810
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_875 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	811,r13		! source line 811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_876 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_876  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_877 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_877  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	813,r13		! source line 813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_879 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_879 [i ] into _temp_880
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_878 = *_temp_880  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_878  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	814,r13		! source line 814
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_881 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_881  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	815,r13		! source line 815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_883 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_883 [i ] into _temp_884
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_882 = *_temp_884  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_882  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	816,r13		! source line 816
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_885 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_885  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	817,r13		! source line 817
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_871:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_869
! END FOR
_Label_872:
! ASSIGNMENT STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	819,r13		! source line 819
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_886
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_887
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_888
	.word	-12
	.word	4
	.word	_Label_889
	.word	-16
	.word	4
	.word	_Label_890
	.word	-20
	.word	4
	.word	_Label_891
	.word	-24
	.word	4
	.word	_Label_892
	.word	-28
	.word	4
	.word	_Label_893
	.word	-32
	.word	4
	.word	_Label_894
	.word	-36
	.word	4
	.word	_Label_895
	.word	-40
	.word	4
	.word	_Label_896
	.word	-44
	.word	4
	.word	_Label_897
	.word	-48
	.word	4
	.word	_Label_898
	.word	-52
	.word	4
	.word	_Label_899
	.word	-56
	.word	4
	.word	_Label_900
	.word	-60
	.word	4
	.word	_Label_901
	.word	-64
	.word	4
	.word	_Label_902
	.word	-68
	.word	4
	.word	_Label_903
	.word	-72
	.word	4
	.word	_Label_904
	.word	-76
	.word	4
	.word	_Label_905
	.word	-80
	.word	4
	.word	_Label_906
	.word	-84
	.word	4
	.word	_Label_907
	.word	-88
	.word	4
	.word	_Label_908
	.word	-92
	.word	4
	.word	_Label_909
	.word	-96
	.word	4
	.word	_Label_910
	.word	-100
	.word	4
	.word	_Label_911
	.word	-104
	.word	4
	.word	_Label_912
	.word	-108
	.word	4
	.word	_Label_913
	.word	-112
	.word	4
	.word	_Label_914
	.word	-116
	.word	4
	.word	_Label_915
	.word	-120
	.word	4
	.word	_Label_916
	.word	-124
	.word	4
	.word	_Label_917
	.word	-128
	.word	4
	.word	_Label_918
	.word	-132
	.word	4
	.word	_Label_919
	.word	-136
	.word	4
	.word	_Label_920
	.word	-140
	.word	4
	.word	_Label_921
	.word	-144
	.word	4
	.word	_Label_922
	.word	-148
	.word	4
	.word	_Label_923
	.word	-152
	.word	4
	.word	_Label_924
	.word	-156
	.word	4
	.word	_Label_925
	.word	-160
	.word	4
	.word	_Label_926
	.word	-164
	.word	4
	.word	_Label_927
	.word	-168
	.word	4
	.word	_Label_928
	.word	-172
	.word	4
	.word	_Label_929
	.word	-176
	.word	4
	.word	_Label_930
	.word	-180
	.word	4
	.word	_Label_931
	.word	-184
	.word	4
	.word	_Label_932
	.word	-188
	.word	4
	.word	_Label_933
	.word	-192
	.word	4
	.word	_Label_934
	.word	-196
	.word	4
	.word	0
_Label_886:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_887:
	.ascii	"Pself\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_933:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_934:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_935
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_935:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_936
	.word	_sourceFileName
	.word	222		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_936:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11504,r1
_Label_2176:
	push	r0
	sub	r1,1,r1
	bne	_Label_2176
	mov	888,r13		! source line 888
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   _temp_937 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_939 = &_temp_938
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_939 = _temp_939 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_941 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_2177:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2177
!   _temp_941 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_943:
!   Data Move: *_temp_939 = _temp_941  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_2178:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2178
!   _temp_939 = _temp_939 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_940 = _temp_940 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_940) then goto _Label_943
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_943
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_944 = &_temp_938
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2179
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2179:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_937 = *_temp_944  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2180:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2180
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41676,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41676,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0SE",r10
!   _temp_948 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-172]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_949 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-168]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_950 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-164]
!   _temp_951 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_951 [0 ] into _temp_952
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_950  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0SE",r10
!   _temp_953 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-152]
!   _temp_954 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_954 [1 ] into _temp_955
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_953  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	903,r13		! source line 903
	mov	"\0\0SE",r10
!   _temp_956 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-140]
!   _temp_957 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_957 [2 ] into _temp_958
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_956  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0SE",r10
!   _temp_959 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-128]
!   _temp_960 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_960 [3 ] into _temp_961
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_959  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_962 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-116]
!   _temp_963 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_963 [4 ] into _temp_964
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_962  sizeInBytes=4
	load	[r14+-116],r1
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
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_965 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-104]
!   _temp_966 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_966 [5 ] into _temp_967
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_965  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_968 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-92]
!   _temp_969 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_969 [6 ] into _temp_970
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_968  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_971 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-80]
!   _temp_972 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_972 [7 ] into _temp_973
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_971  sizeInBytes=4
	load	[r14+-80],r1
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
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_974 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-68]
!   _temp_975 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_975 [8 ] into _temp_976
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_974  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_977 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-56]
!   _temp_978 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_978 [9 ] into _temp_979
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_977  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_984 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_985 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_984  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46016,r2
	store	r1,[r14+r2]
_Label_980:
!   Perform the FOR-LOOP termination test
!   if j > _temp_985 then goto _Label_983		
	set	-46016,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_983
_Label_981:
	mov	913,r13		! source line 913
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0AS",r10
!   _temp_986 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_986 [j ] into _temp_987
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_988 = _temp_987 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_988 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0SE",r10
!   _temp_990 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_990 [j ] into _temp_991
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_989 = _temp_991		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_992 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_989  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_982:
!   j = j + 1
	set	-46016,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46016,r2
	store	r1,[r14+r2]
	jmp	_Label_980
! END FOR
_Label_983:
! RETURN STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0RE",r10
	set	46020,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_993
	.word	4		! total size of parameters
	.word	46016		! frame size = 46016
	.word	_Label_994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_995
	.word	-12
	.word	4
	.word	_Label_996
	.word	-16
	.word	4
	.word	_Label_997
	.word	-20
	.word	4
	.word	_Label_998
	.word	-24
	.word	4
	.word	_Label_999
	.word	-28
	.word	4
	.word	_Label_1000
	.word	-32
	.word	4
	.word	_Label_1001
	.word	-36
	.word	4
	.word	_Label_1002
	.word	-40
	.word	4
	.word	_Label_1003
	.word	-44
	.word	4
	.word	_Label_1004
	.word	-48
	.word	4
	.word	_Label_1005
	.word	-52
	.word	4
	.word	_Label_1006
	.word	-56
	.word	4
	.word	_Label_1007
	.word	-60
	.word	4
	.word	_Label_1008
	.word	-64
	.word	4
	.word	_Label_1009
	.word	-68
	.word	4
	.word	_Label_1010
	.word	-72
	.word	4
	.word	_Label_1011
	.word	-76
	.word	4
	.word	_Label_1012
	.word	-80
	.word	4
	.word	_Label_1013
	.word	-84
	.word	4
	.word	_Label_1014
	.word	-88
	.word	4
	.word	_Label_1015
	.word	-92
	.word	4
	.word	_Label_1016
	.word	-96
	.word	4
	.word	_Label_1017
	.word	-100
	.word	4
	.word	_Label_1018
	.word	-104
	.word	4
	.word	_Label_1019
	.word	-108
	.word	4
	.word	_Label_1020
	.word	-112
	.word	4
	.word	_Label_1021
	.word	-116
	.word	4
	.word	_Label_1022
	.word	-120
	.word	4
	.word	_Label_1023
	.word	-124
	.word	4
	.word	_Label_1024
	.word	-128
	.word	4
	.word	_Label_1025
	.word	-132
	.word	4
	.word	_Label_1026
	.word	-136
	.word	4
	.word	_Label_1027
	.word	-140
	.word	4
	.word	_Label_1028
	.word	-144
	.word	4
	.word	_Label_1029
	.word	-148
	.word	4
	.word	_Label_1030
	.word	-152
	.word	4
	.word	_Label_1031
	.word	-156
	.word	4
	.word	_Label_1032
	.word	-160
	.word	4
	.word	_Label_1033
	.word	-164
	.word	4
	.word	_Label_1034
	.word	-168
	.word	4
	.word	_Label_1035
	.word	-172
	.word	4
	.word	_Label_1036
	.word	-176
	.word	4
	.word	_Label_1037
	.word	-180
	.word	4
	.word	_Label_1038
	.word	-184
	.word	4
	.word	_Label_1039
	.word	-188
	.word	4
	.word	_Label_1040
	.word	-192
	.word	4
	.word	_Label_1041
	.word	-4356
	.word	4164
	.word	_Label_1042
	.word	-4360
	.word	4
	.word	_Label_1043
	.word	-4364
	.word	4
	.word	_Label_1044
	.word	-46008
	.word	41644
	.word	_Label_1045
	.word	-46012
	.word	4
	.word	_Label_1046
	.word	-46016
	.word	4
	.word	0
_Label_993:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_994:
	.ascii	"Pself\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_1046:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_2181:
	push	r0
	sub	r1,1,r1
	bne	_Label_2181
	mov	922,r13		! source line 922
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1047 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1047  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1052 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1053 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1052  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1048:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1053 then goto _Label_1051		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1051
_Label_1049:
	mov	927,r13		! source line 927
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1054 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1054  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	929,r13		! source line 929
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1055 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1055  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1057 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1057 [i ] into _temp_1058
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1056 = _temp_1058		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1056  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CA",r10
	call	_function_154_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1050:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1048
! END FOR
_Label_1051:
! CALL STATEMENT...
!   _temp_1059 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1059  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0SE",r10
!   _temp_1060 = _function_153_PrintObjectAddr
	set	_function_153_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1061 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1060  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1062
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1063
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1064
	.word	-12
	.word	4
	.word	_Label_1065
	.word	-16
	.word	4
	.word	_Label_1066
	.word	-20
	.word	4
	.word	_Label_1067
	.word	-24
	.word	4
	.word	_Label_1068
	.word	-28
	.word	4
	.word	_Label_1069
	.word	-32
	.word	4
	.word	_Label_1070
	.word	-36
	.word	4
	.word	_Label_1071
	.word	-40
	.word	4
	.word	_Label_1072
	.word	-44
	.word	4
	.word	_Label_1073
	.word	-48
	.word	4
	.word	_Label_1074
	.word	-52
	.word	4
	.word	_Label_1075
	.word	-56
	.word	4
	.word	_Label_1076
	.word	-60
	.word	4
	.word	0
_Label_1062:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1063:
	.ascii	"Pself\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1075:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1076:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	12,r1
_Label_2182:
	push	r0
	sub	r1,1,r1
	bne	_Label_2182
	mov	941,r13		! source line 941
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0SE",r10
!   _temp_1077 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0IF",r10
	mov	948,r13		! source line 948
	mov	"\0\0SE",r10
!   _temp_1080 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1078 else goto _Label_1079
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1079
	jmp	_Label_1078
_Label_1078:
! THEN...
	mov	949,r13		! source line 949
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0WH",r10
_Label_1081:
!   if threadInUse == 0 then goto _Label_1085		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1085
!   _temp_1084 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_1086
_Label_1085:
!   _temp_1084 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_1086:
!   if _temp_1084 then goto _Label_1083 else goto _Label_1082
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1082
	jmp	_Label_1083
_Label_1082:
	mov	949,r13		! source line 949
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	950,r13		! source line 950
	mov	"\0\0AS",r10
	mov	950,r13		! source line 950
	mov	"\0\0SE",r10
!   _temp_1087 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0IF",r10
!   if threadInUse == 0 then goto _Label_1091		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1091
!   _temp_1090 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1092
_Label_1091:
!   _temp_1090 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1092:
!   if _temp_1090 then goto _Label_1089 else goto _Label_1088
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1088
	jmp	_Label_1089
_Label_1088:
! THEN...
	mov	952,r13		! source line 952
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_1093 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   _temp_1094 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1093  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1089:
! END WHILE...
	jmp	_Label_1081
_Label_1083:
	jmp	_Label_1095
_Label_1079:
! ELSE...
	mov	956,r13		! source line 956
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1096 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! END IF...
_Label_1095:
! ASSIGNMENT STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0AS",r10
!   if intIsZero (threadInUse) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1097 = threadInUse + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1097 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	961,r13		! source line 961
	mov	"\0\0SE",r10
!   _temp_1098 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0RE",r10
!   ReturnResult: threadInUse  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1099
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1100
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1101
	.word	-16
	.word	4
	.word	_Label_1102
	.word	-20
	.word	4
	.word	_Label_1103
	.word	-24
	.word	4
	.word	_Label_1104
	.word	-28
	.word	4
	.word	_Label_1105
	.word	-32
	.word	4
	.word	_Label_1106
	.word	-9
	.word	1
	.word	_Label_1107
	.word	-36
	.word	4
	.word	_Label_1108
	.word	-10
	.word	1
	.word	_Label_1109
	.word	-40
	.word	4
	.word	_Label_1110
	.word	-44
	.word	4
	.word	_Label_1111
	.word	-48
	.word	4
	.word	0
_Label_1099:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1100:
	.ascii	"Pself\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1106:
	.byte	'C'
	.ascii	"_temp_1090\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1108:
	.byte	'C'
	.ascii	"_temp_1084\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1111:
	.byte	'P'
	.ascii	"threadInUse\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_2183:
	push	r0
	sub	r1,1,r1
	bne	_Label_2183
	mov	969,r13		! source line 969
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1112 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1113 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1113 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0SE",r10
!   _temp_1114 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1115 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1116 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1115  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1117 = &threadManagerLock
	set	41676,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	977,r13		! source line 977
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1118
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1120
	.word	12
	.word	4
	.word	_Label_1121
	.word	-12
	.word	4
	.word	_Label_1122
	.word	-16
	.word	4
	.word	_Label_1123
	.word	-20
	.word	4
	.word	_Label_1124
	.word	-24
	.word	4
	.word	_Label_1125
	.word	-28
	.word	4
	.word	_Label_1126
	.word	-32
	.word	4
	.word	0
_Label_1118:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1119:
	.ascii	"Pself\0"
	.align
_Label_1120:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
! 
! ===============  CLASS TestHoareSemantic  ===============
! 
! Dispatch Table:
! 
_P_Kernel_TestHoareSemantic:
	.word	_Label_1127
	jmp	_Method_P_Kernel_TestHoareSemantic_1	! 4:	Init
	jmp	_Method_P_Kernel_TestHoareSemantic_2	! 8:	Print
	jmp	_Method_P_Kernel_TestHoareSemantic_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_TestHoareSemantic_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1127:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1128
	.word	_sourceFileName
	.word	239		! line number
	.word	41716		! size of instances, in bytes
	.word	_P_Kernel_TestHoareSemantic
	.word	_P_System_Object
	.word	0
_Label_1128:
	.ascii	"TestHoareSemantic\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_TestHoareSemantic_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_1,r1
	push	r1
	mov	11504,r1
_Label_2184:
	push	r0
	sub	r1,1,r1
	bne	_Label_2184
	mov	1376,r13		! source line 1376
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   _temp_1129 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1131 = &_temp_1130
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-4364]
!   _temp_1131 = _temp_1131 + 4
	load	[r14+-4364],r1
	add	r1,4,r1
	store	r1,[r14+-4364]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1133 = zeros  (sizeInBytes=4164)
	add	r14,-4356,r4
	mov	1041,r3
_Label_2185:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2185
!   _temp_1133 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4356]
	mov	10,r1
	store	r1,[r14+-4360]
_Label_1135:
!   Data Move: *_temp_1131 = _temp_1133  (sizeInBytes=4164)
	add	r14,-4356,r5
	load	[r14+-4364],r4
	mov	1041,r3
_Label_2186:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2186
!   _temp_1131 = _temp_1131 + 4164
	load	[r14+-4364],r1
	add	r1,4164,r1
	store	r1,[r14+-4364]
!   _temp_1132 = _temp_1132 + -1
	load	[r14+-4360],r1
	add	r1,-1,r1
	store	r1,[r14+-4360]
!   if intNotZero (_temp_1132) then goto _Label_1135
	load	[r14+-4360],r1
	cmp	r1,r0
	bne	_Label_1135
!   Initialize the array size...
	mov	10,r1
	set	-46008,r2
	store	r1,[r14+r2]
!   _temp_1136 = &_temp_1130
	set	-46008,r1
	add	r14,r1,r1
	store	r1,[r14+-188]
!   make sure array has size 10
	set	-46012,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2187
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2187:
!   make sure array has size 10
	load	[r14+-188],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1129 = *_temp_1136  (sizeInBytes=41644)
	load	[r14+-188],r5
	set	-46012,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_2188:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2188
! ASSIGNMENT STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=36)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	mov	9,r3
_Label_2189:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2189
!   aThreadBecameFree = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41696,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_HoareMutex
	set	_P_Kernel_HoareMutex,r1
	load	[r14+8],r11
	set	41696,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0SE",r10
!   _temp_1140 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-172]
!   Send message Init
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0SE",r10
!   _temp_1141 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-168]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1392,r13		! source line 1392
	mov	"\0\0SE",r10
!   _temp_1142 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-164]
!   _temp_1143 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-160]
!   Move address of _temp_1143 [0 ] into _temp_1144
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_1142  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0SE",r10
!   _temp_1145 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-152]
!   _temp_1146 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-148]
!   Move address of _temp_1146 [1 ] into _temp_1147
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_1145  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0SE",r10
!   _temp_1148 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-140]
!   _temp_1149 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1149 [2 ] into _temp_1150
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_1148  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0SE",r10
!   _temp_1151 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-128]
!   _temp_1152 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-124]
!   Move address of _temp_1152 [3 ] into _temp_1153
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_1151  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0SE",r10
!   _temp_1154 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-116]
!   _temp_1155 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Move address of _temp_1155 [4 ] into _temp_1156
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_1154  sizeInBytes=4
	load	[r14+-116],r1
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
	mov	1397,r13		! source line 1397
	mov	"\0\0SE",r10
!   _temp_1157 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-104]
!   _temp_1158 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Move address of _temp_1158 [5 ] into _temp_1159
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1157  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	1398,r13		! source line 1398
	mov	"\0\0SE",r10
!   _temp_1160 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-92]
!   _temp_1161 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-88]
!   Move address of _temp_1161 [6 ] into _temp_1162
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1160  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0SE",r10
!   _temp_1163 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-80]
!   _temp_1164 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1164 [7 ] into _temp_1165
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_1163  sizeInBytes=4
	load	[r14+-80],r1
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
	mov	1400,r13		! source line 1400
	mov	"\0\0SE",r10
!   _temp_1166 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-68]
!   _temp_1167 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Move address of _temp_1167 [8 ] into _temp_1168
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_1166  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0SE",r10
!   _temp_1169 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-56]
!   _temp_1170 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1170 [9 ] into _temp_1171
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1169  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1176 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1177 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_1176  (sizeInBytes=4)
	load	[r14+-44],r1
	set	-46016,r2
	store	r1,[r14+r2]
_Label_1172:
!   Perform the FOR-LOOP termination test
!   if j > _temp_1177 then goto _Label_1175		
	set	-46016,r1
	load	[r14+r1],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1175
_Label_1173:
	mov	1404,r13		! source line 1404
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0AS",r10
!   _temp_1178 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1178 [j ] into _temp_1179
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1180 = _temp_1179 + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1180 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0SE",r10
!   _temp_1182 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1182 [j ] into _temp_1183
!     make sure index expr is >= 0
	set	-46016,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1181 = _temp_1183		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1184 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1181  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1174:
!   j = j + 1
	set	-46016,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46016,r2
	store	r1,[r14+r2]
	jmp	_Label_1172
! END FOR
_Label_1175:
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0RE",r10
	set	46020,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_1:
	.word	_sourceFileName
	.word	_Label_1185
	.word	4		! total size of parameters
	.word	46016		! frame size = 46016
	.word	_Label_1186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1187
	.word	-12
	.word	4
	.word	_Label_1188
	.word	-16
	.word	4
	.word	_Label_1189
	.word	-20
	.word	4
	.word	_Label_1190
	.word	-24
	.word	4
	.word	_Label_1191
	.word	-28
	.word	4
	.word	_Label_1192
	.word	-32
	.word	4
	.word	_Label_1193
	.word	-36
	.word	4
	.word	_Label_1194
	.word	-40
	.word	4
	.word	_Label_1195
	.word	-44
	.word	4
	.word	_Label_1196
	.word	-48
	.word	4
	.word	_Label_1197
	.word	-52
	.word	4
	.word	_Label_1198
	.word	-56
	.word	4
	.word	_Label_1199
	.word	-60
	.word	4
	.word	_Label_1200
	.word	-64
	.word	4
	.word	_Label_1201
	.word	-68
	.word	4
	.word	_Label_1202
	.word	-72
	.word	4
	.word	_Label_1203
	.word	-76
	.word	4
	.word	_Label_1204
	.word	-80
	.word	4
	.word	_Label_1205
	.word	-84
	.word	4
	.word	_Label_1206
	.word	-88
	.word	4
	.word	_Label_1207
	.word	-92
	.word	4
	.word	_Label_1208
	.word	-96
	.word	4
	.word	_Label_1209
	.word	-100
	.word	4
	.word	_Label_1210
	.word	-104
	.word	4
	.word	_Label_1211
	.word	-108
	.word	4
	.word	_Label_1212
	.word	-112
	.word	4
	.word	_Label_1213
	.word	-116
	.word	4
	.word	_Label_1214
	.word	-120
	.word	4
	.word	_Label_1215
	.word	-124
	.word	4
	.word	_Label_1216
	.word	-128
	.word	4
	.word	_Label_1217
	.word	-132
	.word	4
	.word	_Label_1218
	.word	-136
	.word	4
	.word	_Label_1219
	.word	-140
	.word	4
	.word	_Label_1220
	.word	-144
	.word	4
	.word	_Label_1221
	.word	-148
	.word	4
	.word	_Label_1222
	.word	-152
	.word	4
	.word	_Label_1223
	.word	-156
	.word	4
	.word	_Label_1224
	.word	-160
	.word	4
	.word	_Label_1225
	.word	-164
	.word	4
	.word	_Label_1226
	.word	-168
	.word	4
	.word	_Label_1227
	.word	-172
	.word	4
	.word	_Label_1228
	.word	-176
	.word	4
	.word	_Label_1229
	.word	-180
	.word	4
	.word	_Label_1230
	.word	-184
	.word	4
	.word	_Label_1231
	.word	-188
	.word	4
	.word	_Label_1232
	.word	-192
	.word	4
	.word	_Label_1233
	.word	-4356
	.word	4164
	.word	_Label_1234
	.word	-4360
	.word	4
	.word	_Label_1235
	.word	-4364
	.word	4
	.word	_Label_1236
	.word	-46008
	.word	41644
	.word	_Label_1237
	.word	-46012
	.word	4
	.word	_Label_1238
	.word	-46016
	.word	4
	.word	0
_Label_1185:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1186:
	.ascii	"Pself\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1238:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_TestHoareSemantic_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_2,r1
	push	r1
	mov	15,r1
_Label_2190:
	push	r0
	sub	r1,1,r1
	bne	_Label_2190
	mov	1413,r13		! source line 1413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1420,r13		! source line 1420
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1239 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1421,r13		! source line 1421
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1244 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1245 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1244  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1240:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1245 then goto _Label_1243		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1243
_Label_1241:
	mov	1422,r13		! source line 1422
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1246 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1246  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1423,r13		! source line 1423
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1247 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1425,r13		! source line 1425
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1249 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1249 [i ] into _temp_1250
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1248 = _temp_1250		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1248  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CA",r10
	call	_function_154_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1242:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1240
! END FOR
_Label_1243:
! CALL STATEMENT...
!   _temp_1251 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1251  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1428,r13		! source line 1428
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0SE",r10
!   _temp_1252 = _function_153_PrintObjectAddr
	set	_function_153_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1253 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1252  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1431,r13		! source line 1431
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_2:
	.word	_sourceFileName
	.word	_Label_1254
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1255
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1256
	.word	-12
	.word	4
	.word	_Label_1257
	.word	-16
	.word	4
	.word	_Label_1258
	.word	-20
	.word	4
	.word	_Label_1259
	.word	-24
	.word	4
	.word	_Label_1260
	.word	-28
	.word	4
	.word	_Label_1261
	.word	-32
	.word	4
	.word	_Label_1262
	.word	-36
	.word	4
	.word	_Label_1263
	.word	-40
	.word	4
	.word	_Label_1264
	.word	-44
	.word	4
	.word	_Label_1265
	.word	-48
	.word	4
	.word	_Label_1266
	.word	-52
	.word	4
	.word	_Label_1267
	.word	-56
	.word	4
	.word	_Label_1268
	.word	-60
	.word	4
	.word	0
_Label_1254:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1255:
	.ascii	"Pself\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1267:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1268:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_TestHoareSemantic_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_3,r1
	push	r1
	mov	12,r1
_Label_2191:
	push	r0
	sub	r1,1,r1
	bne	_Label_2191
	mov	1436,r13		! source line 1436
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0SE",r10
!   _temp_1269 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0IF",r10
	mov	1447,r13		! source line 1447
	mov	"\0\0SE",r10
!   _temp_1272 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1270 else goto _Label_1271
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1271
	jmp	_Label_1270
_Label_1270:
! THEN...
	mov	1448,r13		! source line 1448
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0SE",r10
!   _temp_1273 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   _temp_1274 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1273  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1271:
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
	mov	1450,r13		! source line 1450
	mov	"\0\0SE",r10
!   _temp_1275 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0IF",r10
!   if threadInUse == 0 then goto _Label_1279		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1279
!   _temp_1278 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1280
_Label_1279:
!   _temp_1278 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1280:
!   if _temp_1278 then goto _Label_1277 else goto _Label_1276
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1276
	jmp	_Label_1277
_Label_1276:
! THEN...
	mov	1452,r13		! source line 1452
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1281 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1452,r13		! source line 1452
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1277:
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
!   if intIsZero (threadInUse) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1282 = threadInUse + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1282 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0SE",r10
!   _temp_1283 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0RE",r10
!   ReturnResult: threadInUse  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_3:
	.word	_sourceFileName
	.word	_Label_1284
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1285
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1286
	.word	-16
	.word	4
	.word	_Label_1287
	.word	-20
	.word	4
	.word	_Label_1288
	.word	-24
	.word	4
	.word	_Label_1289
	.word	-9
	.word	1
	.word	_Label_1290
	.word	-28
	.word	4
	.word	_Label_1291
	.word	-32
	.word	4
	.word	_Label_1292
	.word	-36
	.word	4
	.word	_Label_1293
	.word	-40
	.word	4
	.word	_Label_1294
	.word	-44
	.word	4
	.word	_Label_1295
	.word	-48
	.word	4
	.word	0
_Label_1284:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1285:
	.ascii	"Pself\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1289:
	.byte	'C'
	.ascii	"_temp_1278\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1295:
	.byte	'P'
	.ascii	"threadInUse\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_TestHoareSemantic_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_4,r1
	push	r1
	mov	8,r1
_Label_2192:
	push	r0
	sub	r1,1,r1
	bne	_Label_2192
	mov	1466,r13		! source line 1466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0SE",r10
!   _temp_1296 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1297 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1297 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0SE",r10
!   _temp_1298 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0SE",r10
!   _temp_1299 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1300 = &aThreadBecameFree
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1299  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0SE",r10
!   _temp_1301 = &threadManagerLock
	set	41696,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	1478,r13		! source line 1478
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_TestHoareSemantic_4:
	.word	_sourceFileName
	.word	_Label_1302
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1303
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1304
	.word	12
	.word	4
	.word	_Label_1305
	.word	-12
	.word	4
	.word	_Label_1306
	.word	-16
	.word	4
	.word	_Label_1307
	.word	-20
	.word	4
	.word	_Label_1308
	.word	-24
	.word	4
	.word	_Label_1309
	.word	-28
	.word	4
	.word	_Label_1310
	.word	-32
	.word	4
	.word	0
_Label_1302:
	.ascii	"TestHoareSemantic"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1303:
	.ascii	"Pself\0"
	.align
_Label_1304:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1311
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1311:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1312
	.word	_sourceFileName
	.word	261		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1312:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_2193:
	push	r0
	sub	r1,1,r1
	bne	_Label_2193
	mov	990,r13		! source line 990
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	991,r13		! source line 991
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_2194:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2194
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0SE",r10
!   _temp_1314 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1315
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1316
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1317
	.word	-12
	.word	4
	.word	_Label_1318
	.word	-16
	.word	4
	.word	0
_Label_1315:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1316:
	.ascii	"Pself\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_2195:
	push	r0
	sub	r1,1,r1
	bne	_Label_2195
	mov	1004,r13		! source line 1004
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1319) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_1320 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1321 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1321  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CA",r10
	call	_function_154_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	1022,r13		! source line 1022
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1322
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1324
	.word	-12
	.word	4
	.word	_Label_1325
	.word	-16
	.word	4
	.word	_Label_1326
	.word	-20
	.word	4
	.word	0
_Label_1322:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1323:
	.ascii	"Pself\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_2196:
	push	r0
	sub	r1,1,r1
	bne	_Label_2196
	mov	1027,r13		! source line 1027
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1327 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1031,r13		! source line 1031
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1328  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1032,r13		! source line 1032
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1329 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1329  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1033,r13		! source line 1033
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1034,r13		! source line 1034
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1330 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1330  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1035,r13		! source line 1035
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1332		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1332
!	jmp	_Label_1331
_Label_1331:
! THEN...
	mov	1037,r13		! source line 1037
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1333 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1333  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1037,r13		! source line 1037
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1334
_Label_1332:
! ELSE...
	mov	1038,r13		! source line 1038
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1336		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1336
!	jmp	_Label_1335
_Label_1335:
! THEN...
	mov	1039,r13		! source line 1039
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1337 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1337  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1039,r13		! source line 1039
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1338
_Label_1336:
! ELSE...
	mov	1040,r13		! source line 1040
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1340		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1340
!	jmp	_Label_1339
_Label_1339:
! THEN...
	mov	1041,r13		! source line 1041
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1341 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1341  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1041,r13		! source line 1041
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1342
_Label_1340:
! ELSE...
	mov	1043,r13		! source line 1043
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1343 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1343  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1043,r13		! source line 1043
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1342:
! END IF...
_Label_1338:
! END IF...
_Label_1334:
! CALL STATEMENT...
!   _temp_1344 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1344  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1345 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1345  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1047,r13		! source line 1047
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1346
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1347
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1348
	.word	-12
	.word	4
	.word	_Label_1349
	.word	-16
	.word	4
	.word	_Label_1350
	.word	-20
	.word	4
	.word	_Label_1351
	.word	-24
	.word	4
	.word	_Label_1352
	.word	-28
	.word	4
	.word	_Label_1353
	.word	-32
	.word	4
	.word	_Label_1354
	.word	-36
	.word	4
	.word	_Label_1355
	.word	-40
	.word	4
	.word	_Label_1356
	.word	-44
	.word	4
	.word	_Label_1357
	.word	-48
	.word	4
	.word	0
_Label_1346:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1347:
	.ascii	"Pself\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1358
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1358:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1359
	.word	_sourceFileName
	.word	281		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1359:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	366,r1
_Label_2197:
	push	r0
	sub	r1,1,r1
	bne	_Label_2197
	mov	1083,r13		! source line 1083
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! i
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1464]
! ASSIGNMENT STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0SE",r10
!   _temp_1361 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-1456]
!   Send message Init
	load	[r14+-1456],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_1363 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-1448]
!   Send message Init
	load	[r14+-1448],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   _temp_1365 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1440]
!   NEW ARRAY Constructor...
!   _temp_1367 = &_temp_1366
	add	r14,-1436,r1
	store	r1,[r14+-192]
!   _temp_1367 = _temp_1367 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1369 = zeros  (sizeInBytes=124)
	add	r14,-184,r4
	mov	31,r3
_Label_2198:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2198
!   _temp_1369 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-184]
	mov	10,r1
	store	r1,[r14+-188]
_Label_1371:
!   Data Move: *_temp_1367 = _temp_1369  (sizeInBytes=124)
	add	r14,-184,r5
	load	[r14+-192],r4
	mov	31,r3
_Label_2199:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2199
!   _temp_1367 = _temp_1367 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   _temp_1368 = _temp_1368 + -1
	load	[r14+-188],r1
	add	r1,-1,r1
	store	r1,[r14+-188]
!   if intNotZero (_temp_1368) then goto _Label_1371
	load	[r14+-188],r1
	cmp	r1,r0
	bne	_Label_1371
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1436]
!   _temp_1372 = &_temp_1366
	add	r14,-1436,r1
	store	r1,[r14+-56]
!   make sure array has size 10
	load	[r14+-1440],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_2200
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2200:
!   make sure array has size 10
	load	[r14+-56],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1365 = *_temp_1372  (sizeInBytes=1244)
	load	[r14+-56],r5
	load	[r14+-1440],r4
	mov	311,r3
_Label_2201:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2201
! FOR STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1377 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1378 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1377  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1464]
_Label_1373:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1378 then goto _Label_1376		
	load	[r14+-1464],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1376
_Label_1374:
	mov	1092,r13		! source line 1092
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   _temp_1379 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1379 [i ] into _temp_1380
!     make sure index expr is >= 0
	load	[r14+-1464],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0AS",r10
!   _temp_1381 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1381 [i ] into _temp_1382
!     make sure index expr is >= 0
	load	[r14+-1464],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1383 = _temp_1382 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1383 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1385 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1385 [i ] into _temp_1386
!     make sure index expr is >= 0
	load	[r14+-1464],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1384 = _temp_1386		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1387 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1384  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1375:
!   i = i + 1
	load	[r14+-1464],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1464]
	jmp	_Label_1373
! END FOR
_Label_1376:
! RETURN STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0RE",r10
	add	r15,1468,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1388
	.word	4		! total size of parameters
	.word	1464		! frame size = 1464
	.word	_Label_1389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1390
	.word	-12
	.word	4
	.word	_Label_1391
	.word	-16
	.word	4
	.word	_Label_1392
	.word	-20
	.word	4
	.word	_Label_1393
	.word	-24
	.word	4
	.word	_Label_1394
	.word	-28
	.word	4
	.word	_Label_1395
	.word	-32
	.word	4
	.word	_Label_1396
	.word	-36
	.word	4
	.word	_Label_1397
	.word	-40
	.word	4
	.word	_Label_1398
	.word	-44
	.word	4
	.word	_Label_1399
	.word	-48
	.word	4
	.word	_Label_1400
	.word	-52
	.word	4
	.word	_Label_1401
	.word	-56
	.word	4
	.word	_Label_1402
	.word	-60
	.word	4
	.word	_Label_1403
	.word	-184
	.word	124
	.word	_Label_1404
	.word	-188
	.word	4
	.word	_Label_1405
	.word	-192
	.word	4
	.word	_Label_1406
	.word	-1436
	.word	1244
	.word	_Label_1407
	.word	-1440
	.word	4
	.word	_Label_1408
	.word	-1444
	.word	4
	.word	_Label_1409
	.word	-1448
	.word	4
	.word	_Label_1410
	.word	-1452
	.word	4
	.word	_Label_1411
	.word	-1456
	.word	4
	.word	_Label_1412
	.word	-1460
	.word	4
	.word	_Label_1413
	.word	-1464
	.word	4
	.word	0
_Label_1388:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1389:
	.ascii	"Pself\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1413:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_2202:
	push	r0
	sub	r1,1,r1
	bne	_Label_2202
	mov	1102,r13		! source line 1102
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1414 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1110,r13		! source line 1110
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1419 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1420 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1419  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1415:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1420 then goto _Label_1418		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1418
_Label_1416:
	mov	1111,r13		! source line 1111
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1421 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1421  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1112,r13		! source line 1112
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1113,r13		! source line 1113
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1422 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1422  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1114,r13		! source line 1114
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0SE",r10
!   _temp_1423 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1423 [i ] into _temp_1424
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1417:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1415
! END FOR
_Label_1418:
! CALL STATEMENT...
!   _temp_1425 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1117,r13		! source line 1117
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0SE",r10
!   _temp_1426 = _function_153_PrintObjectAddr
	set	_function_153_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1427 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1426  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1120,r13		! source line 1120
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1428
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1429
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1430
	.word	-12
	.word	4
	.word	_Label_1431
	.word	-16
	.word	4
	.word	_Label_1432
	.word	-20
	.word	4
	.word	_Label_1433
	.word	-24
	.word	4
	.word	_Label_1434
	.word	-28
	.word	4
	.word	_Label_1435
	.word	-32
	.word	4
	.word	_Label_1436
	.word	-36
	.word	4
	.word	_Label_1437
	.word	-40
	.word	4
	.word	_Label_1438
	.word	-44
	.word	4
	.word	_Label_1439
	.word	-48
	.word	4
	.word	_Label_1440
	.word	-52
	.word	4
	.word	_Label_1441
	.word	-56
	.word	4
	.word	0
_Label_1428:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1429:
	.ascii	"Pself\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1440:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1441:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_2203:
	push	r0
	sub	r1,1,r1
	bne	_Label_2203
	mov	1125,r13		! source line 1125
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1127,r13		! source line 1127
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1442 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1442  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1128,r13		! source line 1128
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1447 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1448 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1447  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1443:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1448 then goto _Label_1446		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1446
_Label_1444:
	mov	1129,r13		! source line 1129
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1449 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1449  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1131,r13		! source line 1131
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_1450 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1450 [i ] into _temp_1451
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1445:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1443
! END FOR
_Label_1446:
! CALL STATEMENT...
!   _temp_1452 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1452  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1134,r13		! source line 1134
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_1453 = _function_153_PrintObjectAddr
	set	_function_153_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1454 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1453  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1136,r13		! source line 1136
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1137,r13		! source line 1137
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1455
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1456
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1457
	.word	-12
	.word	4
	.word	_Label_1458
	.word	-16
	.word	4
	.word	_Label_1459
	.word	-20
	.word	4
	.word	_Label_1460
	.word	-24
	.word	4
	.word	_Label_1461
	.word	-28
	.word	4
	.word	_Label_1462
	.word	-32
	.word	4
	.word	_Label_1463
	.word	-36
	.word	4
	.word	_Label_1464
	.word	-40
	.word	4
	.word	_Label_1465
	.word	-44
	.word	4
	.word	_Label_1466
	.word	-48
	.word	4
	.word	_Label_1467
	.word	-52
	.word	4
	.word	0
_Label_1455:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1456:
	.ascii	"Pself\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1466:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1467:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	13,r1
_Label_2204:
	push	r0
	sub	r1,1,r1
	bne	_Label_2204
	mov	1142,r13		! source line 1142
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0SE",r10
!   _temp_1468 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0IF",r10
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_1471 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1469 else goto _Label_1470
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1470
	jmp	_Label_1469
_Label_1469:
! THEN...
	mov	1149,r13		! source line 1149
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0WH",r10
_Label_1472:
!   if processInUse == 0 then goto _Label_1476		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1476
!   _temp_1475 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_1477
_Label_1476:
!   _temp_1475 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_1477:
!   if _temp_1475 then goto _Label_1474 else goto _Label_1473
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1473
	jmp	_Label_1474
_Label_1473:
	mov	1149,r13		! source line 1149
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0AS",r10
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_1478 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0IF",r10
!   if processInUse == 0 then goto _Label_1482		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1482
!   _temp_1481 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1483
_Label_1482:
!   _temp_1481 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1483:
!   if _temp_1481 then goto _Label_1480 else goto _Label_1479
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1479
	jmp	_Label_1480
_Label_1479:
! THEN...
	mov	1152,r13		! source line 1152
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_1484 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   _temp_1485 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1484  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1480:
! END WHILE...
	jmp	_Label_1472
_Label_1474:
	jmp	_Label_1486
_Label_1470:
! ELSE...
	mov	1156,r13		! source line 1156
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
	mov	1156,r13		! source line 1156
	mov	"\0\0SE",r10
!   _temp_1487 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processInUse  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! END IF...
_Label_1486:
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0AS",r10
!   if intIsZero (processInUse) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1488 = processInUse + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1488 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0AS",r10
!   if intIsZero (processInUse) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1489 = processInUse + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1489 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_1490 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0RE",r10
!   ReturnResult: processInUse  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1491
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1492
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1493
	.word	-16
	.word	4
	.word	_Label_1494
	.word	-20
	.word	4
	.word	_Label_1495
	.word	-24
	.word	4
	.word	_Label_1496
	.word	-28
	.word	4
	.word	_Label_1497
	.word	-32
	.word	4
	.word	_Label_1498
	.word	-36
	.word	4
	.word	_Label_1499
	.word	-9
	.word	1
	.word	_Label_1500
	.word	-40
	.word	4
	.word	_Label_1501
	.word	-10
	.word	1
	.word	_Label_1502
	.word	-44
	.word	4
	.word	_Label_1503
	.word	-48
	.word	4
	.word	_Label_1504
	.word	-52
	.word	4
	.word	0
_Label_1491:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1492:
	.ascii	"Pself\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1499:
	.byte	'C'
	.ascii	"_temp_1481\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1501:
	.byte	'C'
	.ascii	"_temp_1475\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1504:
	.byte	'P'
	.ascii	"processInUse\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	9,r1
_Label_2205:
	push	r0
	sub	r1,1,r1
	bne	_Label_2205
	mov	1171,r13		! source line 1171
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   _temp_1505 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1506 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1506 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1507 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1507 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1508 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0SE",r10
!   _temp_1509 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1510 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1509  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1511 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1179,r13		! source line 1179
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1512
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1514
	.word	12
	.word	4
	.word	_Label_1515
	.word	-12
	.word	4
	.word	_Label_1516
	.word	-16
	.word	4
	.word	_Label_1517
	.word	-20
	.word	4
	.word	_Label_1518
	.word	-24
	.word	4
	.word	_Label_1519
	.word	-28
	.word	4
	.word	_Label_1520
	.word	-32
	.word	4
	.word	_Label_1521
	.word	-36
	.word	4
	.word	0
_Label_1512:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1513:
	.ascii	"Pself\0"
	.align
_Label_1514:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1522
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1522:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1523
	.word	_sourceFileName
	.word	304		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1523:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	16,r1
_Label_2206:
	push	r0
	sub	r1,1,r1
	bne	_Label_2206
	mov	1225,r13		! source line 1225
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1524 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1524  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! SEND STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_1526 = &framesInUse
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0AS",r10
!   numWaitingGroups = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0SE",r10
!   _temp_1528 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,44,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! SEND STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0SE",r10
!   _temp_1530 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: numGroupsWaiting = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   numGroupsWaiting = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
!   _temp_1532 = &numGroupsWaiting
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1537 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1538 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1537  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1533:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1538 then goto _Label_1536		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1536
_Label_1534:
	mov	1247,r13		! source line 1247
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1541 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1541) then goto _Label_1540
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1540
!	jmp	_Label_1539
_Label_1539:
! THEN...
	mov	1251,r13		! source line 1251
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1542 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1542  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1251,r13		! source line 1251
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1540:
!   Increment the FOR-LOOP index variable and jump back
_Label_1535:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1533
! END FOR
_Label_1536:
! RETURN STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1543
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1545
	.word	-12
	.word	4
	.word	_Label_1546
	.word	-16
	.word	4
	.word	_Label_1547
	.word	-20
	.word	4
	.word	_Label_1548
	.word	-24
	.word	4
	.word	_Label_1549
	.word	-28
	.word	4
	.word	_Label_1550
	.word	-32
	.word	4
	.word	_Label_1551
	.word	-36
	.word	4
	.word	_Label_1552
	.word	-40
	.word	4
	.word	_Label_1553
	.word	-44
	.word	4
	.word	_Label_1554
	.word	-48
	.word	4
	.word	_Label_1555
	.word	-52
	.word	4
	.word	_Label_1556
	.word	-56
	.word	4
	.word	_Label_1557
	.word	-60
	.word	4
	.word	_Label_1558
	.word	-64
	.word	4
	.word	0
_Label_1543:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1544:
	.ascii	"Pself\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1558:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_2207:
	push	r0
	sub	r1,1,r1
	bne	_Label_2207
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   _temp_1559 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1560 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1560  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1561 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1561  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+4]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1562 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1562  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0SE",r10
!   _temp_1563 = &framesInUse
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
!   _temp_1564 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
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
	mov	1267,r13		! source line 1267
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1565
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1566
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1567
	.word	-12
	.word	4
	.word	_Label_1568
	.word	-16
	.word	4
	.word	_Label_1569
	.word	-20
	.word	4
	.word	_Label_1570
	.word	-24
	.word	4
	.word	_Label_1571
	.word	-28
	.word	4
	.word	_Label_1572
	.word	-32
	.word	4
	.word	0
_Label_1565:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1566:
	.ascii	"Pself\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_2208:
	push	r0
	sub	r1,1,r1
	bne	_Label_2208
	mov	1272,r13		! source line 1272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_1573 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1283,r13		! source line 1283
	mov	"\0\0WH",r10
_Label_1574:
!   if numberFreeFrames >= 1 then goto _Label_1576		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1576
!	jmp	_Label_1575
_Label_1575:
	mov	1283,r13		! source line 1283
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
!   _temp_1577 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-28]
!   _temp_1578 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1577  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1574
_Label_1576:
! ASSIGNMENT STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0AS",r10
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
!   _temp_1579 = &framesInUse
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0SE",r10
!   _temp_1580 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0AS",r10
!   _temp_1581 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1581		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1582
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1584
	.word	-12
	.word	4
	.word	_Label_1585
	.word	-16
	.word	4
	.word	_Label_1586
	.word	-20
	.word	4
	.word	_Label_1587
	.word	-24
	.word	4
	.word	_Label_1588
	.word	-28
	.word	4
	.word	_Label_1589
	.word	-32
	.word	4
	.word	_Label_1590
	.word	-36
	.word	4
	.word	_Label_1591
	.word	-40
	.word	4
	.word	0
_Label_1582:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1583:
	.ascii	"Pself\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1590:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1591:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	22,r1
_Label_2209:
	push	r0
	sub	r1,1,r1
	bne	_Label_2209
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0SE",r10
!   _temp_1592 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Send message Lock
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0IF",r10
!   if numWaitingGroups <= 1 then goto _Label_1594		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1594
!	jmp	_Label_1593
_Label_1593:
! THEN...
	mov	1309,r13		! source line 1309
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0SE",r10
!   _temp_1595 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   _temp_1596 = &numGroupsWaiting
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_1595  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1594:
! WHILE STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0WH",r10
_Label_1597:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1599		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1599
!	jmp	_Label_1598
_Label_1598:
	mov	1311,r13		! source line 1311
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1312,r13		! source line 1312
	mov	"\0\0SE",r10
!   _temp_1600 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   _temp_1601 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1600  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1597
_Label_1599:
! FOR STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1606 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1607 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1606  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-76]
_Label_1602:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1607 then goto _Label_1605		
	load	[r14+-76],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1605
_Label_1603:
	mov	1314,r13		! source line 1314
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0AS",r10
	mov	1315,r13		! source line 1315
	mov	"\0\0SE",r10
!   _temp_1608 = &framesInUse
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-44]
!   Send message FindZeroAndSet
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
!   _temp_1609 = f * 8192		(int)
	load	[r14+-84],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   frameAddr = 1048576 + _temp_1609		(int)
	set	1048576,r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1604:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_1602
! END FOR
_Label_1605:
! ASSIGNMENT STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1321,r13		! source line 1321
	mov	"\0\0AS",r10
!   numWaitingGroups = numWaitingGroups - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0SE",r10
!   _temp_1610 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   _temp_1611 = &numGroupsWaiting
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1610  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1612 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1615 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1614 = *_temp_1615  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1613 = _temp_1614 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1612 = _temp_1613  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
!   _temp_1616 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
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
	mov	1327,r13		! source line 1327
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1617
	.word	12		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_1618
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1619
	.word	12
	.word	4
	.word	_Label_1620
	.word	16
	.word	4
	.word	_Label_1621
	.word	-12
	.word	4
	.word	_Label_1622
	.word	-16
	.word	4
	.word	_Label_1623
	.word	-20
	.word	4
	.word	_Label_1624
	.word	-24
	.word	4
	.word	_Label_1625
	.word	-28
	.word	4
	.word	_Label_1626
	.word	-32
	.word	4
	.word	_Label_1627
	.word	-36
	.word	4
	.word	_Label_1628
	.word	-40
	.word	4
	.word	_Label_1629
	.word	-44
	.word	4
	.word	_Label_1630
	.word	-48
	.word	4
	.word	_Label_1631
	.word	-52
	.word	4
	.word	_Label_1632
	.word	-56
	.word	4
	.word	_Label_1633
	.word	-60
	.word	4
	.word	_Label_1634
	.word	-64
	.word	4
	.word	_Label_1635
	.word	-68
	.word	4
	.word	_Label_1636
	.word	-72
	.word	4
	.word	_Label_1637
	.word	-76
	.word	4
	.word	_Label_1638
	.word	-80
	.word	4
	.word	_Label_1639
	.word	-84
	.word	4
	.word	0
_Label_1617:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1618:
	.ascii	"Pself\0"
	.align
_Label_1619:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1620:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1638:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1639:
	.byte	'I'
	.ascii	"f\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	16,r1
_Label_2210:
	push	r0
	sub	r1,1,r1
	bne	_Label_2210
	mov	1334,r13		! source line 1334
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0SE",r10
!   _temp_1640 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1641 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: numFramesToReturn = *_temp_1641  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1646 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1647 = numFramesToReturn - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1646  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-52]
_Label_1642:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1647 then goto _Label_1645		
	load	[r14+-52],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1645
_Label_1643:
	mov	1343,r13		! source line 1343
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0AS",r10
	mov	1344,r13		! source line 1344
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
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
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
!   _temp_1648 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_1648 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
!   _temp_1649 = &framesInUse
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=frameNumber  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
!   Increment the FOR-LOOP index variable and jump back
_Label_1644:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1642
! END FOR
_Label_1645:
! SEND STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0SE",r10
!   _temp_1650 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   _temp_1651 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1650  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1652 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1652 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0SE",r10
!   _temp_1653 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
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
	mov	1351,r13		! source line 1351
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1654
	.word	8		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1655
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1656
	.word	12
	.word	4
	.word	_Label_1657
	.word	-12
	.word	4
	.word	_Label_1658
	.word	-16
	.word	4
	.word	_Label_1659
	.word	-20
	.word	4
	.word	_Label_1660
	.word	-24
	.word	4
	.word	_Label_1661
	.word	-28
	.word	4
	.word	_Label_1662
	.word	-32
	.word	4
	.word	_Label_1663
	.word	-36
	.word	4
	.word	_Label_1664
	.word	-40
	.word	4
	.word	_Label_1665
	.word	-44
	.word	4
	.word	_Label_1666
	.word	-48
	.word	4
	.word	_Label_1667
	.word	-52
	.word	4
	.word	_Label_1668
	.word	-56
	.word	4
	.word	_Label_1669
	.word	-60
	.word	4
	.word	_Label_1670
	.word	-64
	.word	4
	.word	0
_Label_1654:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1655:
	.ascii	"Pself\0"
	.align
_Label_1656:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1667:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1668:
	.byte	'I'
	.ascii	"numFramesToReturn\0"
	.align
_Label_1669:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1670:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1671
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1671:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1672
	.word	_sourceFileName
	.word	325		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1672:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_2211:
	push	r0
	sub	r1,1,r1
	bne	_Label_2211
	mov	1491,r13		! source line 1491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   _temp_1673 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1675 = &_temp_1674
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1675 = _temp_1675 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1677:
!   Data Move: *_temp_1675 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1675 = _temp_1675 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1676 = _temp_1676 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1676) then goto _Label_1677
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1677
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1678 = &_temp_1674
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_2212
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_2212:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1673 = *_temp_1678  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_2213:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2213
! RETURN STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1679
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	-12
	.word	4
	.word	_Label_1682
	.word	-16
	.word	4
	.word	_Label_1683
	.word	-20
	.word	4
	.word	_Label_1684
	.word	-104
	.word	84
	.word	_Label_1685
	.word	-108
	.word	4
	.word	0
_Label_1679:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_2214:
	push	r0
	sub	r1,1,r1
	bne	_Label_2214
	mov	1501,r13		! source line 1501
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1686 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1506,r13		! source line 1506
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1687 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1507,r13		! source line 1507
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1692 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1693 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1692  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1688:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1693 then goto _Label_1691		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1691
_Label_1689:
	mov	1508,r13		! source line 1508
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1694 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1694  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1509,r13		! source line 1509
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1696 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1696 [i ] into _temp_1697
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_1695 = _temp_1697		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1695  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1510,r13		! source line 1510
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1698 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1511,r13		! source line 1511
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1700 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1700 [i ] into _temp_1701
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
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
	store	r2,[r14+-120]
!   Data Move: _temp_1699 = *_temp_1701  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1699  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1512,r13		! source line 1512
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1702 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1702  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1513,r13		! source line 1513
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1703 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1514,r13		! source line 1514
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1704 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1704  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1515,r13		! source line 1515
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1706) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1705  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1705  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1516,r13		! source line 1516
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1707 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1707  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1517,r13		! source line 1517
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0IF",r10
	mov	1518,r13		! source line 1518
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1711) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1710  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1710) then goto _Label_1709
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1709
!	jmp	_Label_1708
_Label_1708:
! THEN...
	mov	1519,r13		! source line 1519
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1713) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1712  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1712  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1519,r13		! source line 1519
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1714
_Label_1709:
! ELSE...
	mov	1521,r13		! source line 1521
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1715 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1715  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1521,r13		! source line 1521
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1714:
! CALL STATEMENT...
!   _temp_1716 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1716  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1523,r13		! source line 1523
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0IF",r10
	mov	1524,r13		! source line 1524
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1719) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1717 else goto _Label_1718
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1718
	jmp	_Label_1717
_Label_1717:
! THEN...
	mov	1525,r13		! source line 1525
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1720 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1720  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1525,r13		! source line 1525
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1721
_Label_1718:
! ELSE...
	mov	1527,r13		! source line 1527
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1722 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1722  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1527,r13		! source line 1527
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1721:
! CALL STATEMENT...
!   _temp_1723 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1723  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1529,r13		! source line 1529
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0IF",r10
	mov	1530,r13		! source line 1530
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1726) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1724 else goto _Label_1725
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1725
	jmp	_Label_1724
_Label_1724:
! THEN...
	mov	1531,r13		! source line 1531
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1727 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1531,r13		! source line 1531
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1728
_Label_1725:
! ELSE...
	mov	1533,r13		! source line 1533
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1729 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1729  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1533,r13		! source line 1533
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1728:
! CALL STATEMENT...
!   _temp_1730 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1730  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1535,r13		! source line 1535
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0IF",r10
	mov	1536,r13		! source line 1536
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1733) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1731 else goto _Label_1732
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1732
	jmp	_Label_1731
_Label_1731:
! THEN...
	mov	1537,r13		! source line 1537
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1734 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1734  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1537,r13		! source line 1537
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1735
_Label_1732:
! ELSE...
	mov	1539,r13		! source line 1539
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1736 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1736  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1539,r13		! source line 1539
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1735:
! CALL STATEMENT...
!   _temp_1737 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1737  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1541,r13		! source line 1541
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0IF",r10
	mov	1542,r13		! source line 1542
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1740) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1738 else goto _Label_1739
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1739
	jmp	_Label_1738
_Label_1738:
! THEN...
	mov	1543,r13		! source line 1543
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1741 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1741  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1543,r13		! source line 1543
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1742
_Label_1739:
! ELSE...
	mov	1545,r13		! source line 1545
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1743 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1743  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1545,r13		! source line 1545
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1742:
! CALL STATEMENT...
!   Call the function
	mov	1547,r13		! source line 1547
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1690:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1688
! END FOR
_Label_1691:
! RETURN STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1744
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1745
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1746
	.word	-12
	.word	4
	.word	_Label_1747
	.word	-16
	.word	4
	.word	_Label_1748
	.word	-20
	.word	4
	.word	_Label_1749
	.word	-24
	.word	4
	.word	_Label_1750
	.word	-28
	.word	4
	.word	_Label_1751
	.word	-32
	.word	4
	.word	_Label_1752
	.word	-36
	.word	4
	.word	_Label_1753
	.word	-40
	.word	4
	.word	_Label_1754
	.word	-44
	.word	4
	.word	_Label_1755
	.word	-48
	.word	4
	.word	_Label_1756
	.word	-52
	.word	4
	.word	_Label_1757
	.word	-56
	.word	4
	.word	_Label_1758
	.word	-60
	.word	4
	.word	_Label_1759
	.word	-64
	.word	4
	.word	_Label_1760
	.word	-68
	.word	4
	.word	_Label_1761
	.word	-72
	.word	4
	.word	_Label_1762
	.word	-76
	.word	4
	.word	_Label_1763
	.word	-80
	.word	4
	.word	_Label_1764
	.word	-84
	.word	4
	.word	_Label_1765
	.word	-88
	.word	4
	.word	_Label_1766
	.word	-92
	.word	4
	.word	_Label_1767
	.word	-96
	.word	4
	.word	_Label_1768
	.word	-100
	.word	4
	.word	_Label_1769
	.word	-104
	.word	4
	.word	_Label_1770
	.word	-108
	.word	4
	.word	_Label_1771
	.word	-112
	.word	4
	.word	_Label_1772
	.word	-116
	.word	4
	.word	_Label_1773
	.word	-120
	.word	4
	.word	_Label_1774
	.word	-124
	.word	4
	.word	_Label_1775
	.word	-128
	.word	4
	.word	_Label_1776
	.word	-132
	.word	4
	.word	_Label_1777
	.word	-136
	.word	4
	.word	_Label_1778
	.word	-140
	.word	4
	.word	_Label_1779
	.word	-144
	.word	4
	.word	_Label_1780
	.word	-148
	.word	4
	.word	_Label_1781
	.word	-152
	.word	4
	.word	_Label_1782
	.word	-156
	.word	4
	.word	_Label_1783
	.word	-160
	.word	4
	.word	_Label_1784
	.word	-164
	.word	4
	.word	_Label_1785
	.word	-168
	.word	4
	.word	0
_Label_1744:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1745:
	.ascii	"Pself\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1785:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_2215:
	push	r0
	sub	r1,1,r1
	bne	_Label_2215
	mov	1553,r13		! source line 1553
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0RE",r10
!   _temp_1788 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1788 [entry ] into _temp_1789
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1787 = *_temp_1789  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1786 = _temp_1787 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1786  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1790
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1791
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1792
	.word	12
	.word	4
	.word	_Label_1793
	.word	-12
	.word	4
	.word	_Label_1794
	.word	-16
	.word	4
	.word	_Label_1795
	.word	-20
	.word	4
	.word	_Label_1796
	.word	-24
	.word	4
	.word	0
_Label_1790:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1791:
	.ascii	"Pself\0"
	.align
_Label_1792:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_2216:
	push	r0
	sub	r1,1,r1
	bne	_Label_2216
	mov	1563,r13		! source line 1563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0RE",r10
!   _temp_1799 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1799 [entry ] into _temp_1800
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1798 = *_temp_1800  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1797 = _temp_1798 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1797  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1801
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1803
	.word	12
	.word	4
	.word	_Label_1804
	.word	-12
	.word	4
	.word	_Label_1805
	.word	-16
	.word	4
	.word	_Label_1806
	.word	-20
	.word	4
	.word	_Label_1807
	.word	-24
	.word	4
	.word	0
_Label_1801:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1802:
	.ascii	"Pself\0"
	.align
_Label_1803:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_2217:
	push	r0
	sub	r1,1,r1
	bne	_Label_2217
	mov	1572,r13		! source line 1572
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0AS",r10
!   _temp_1808 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1808 [entry ] into _temp_1809
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   _temp_1813 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1813 [entry ] into _temp_1814
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1812 = *_temp_1814  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1811 = _temp_1812 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1810 = _temp_1811 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1809 = _temp_1810  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1815
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1817
	.word	12
	.word	4
	.word	_Label_1818
	.word	16
	.word	4
	.word	_Label_1819
	.word	-12
	.word	4
	.word	_Label_1820
	.word	-16
	.word	4
	.word	_Label_1821
	.word	-20
	.word	4
	.word	_Label_1822
	.word	-24
	.word	4
	.word	_Label_1823
	.word	-28
	.word	4
	.word	_Label_1824
	.word	-32
	.word	4
	.word	_Label_1825
	.word	-36
	.word	4
	.word	0
_Label_1815:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1816:
	.ascii	"Pself\0"
	.align
_Label_1817:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1818:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_2218:
	push	r0
	sub	r1,1,r1
	bne	_Label_2218
	mov	1582,r13		! source line 1582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0RE",r10
!   _temp_1829 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1829 [entry ] into _temp_1830
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1828 = *_temp_1830  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1827 = _temp_1828 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1827) then goto _Label_1831
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1831
!   _temp_1826 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1832
_Label_1831:
!   _temp_1826 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1832:
!   ReturnResult: _temp_1826  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1833
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1834
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1835
	.word	12
	.word	4
	.word	_Label_1836
	.word	-16
	.word	4
	.word	_Label_1837
	.word	-20
	.word	4
	.word	_Label_1838
	.word	-24
	.word	4
	.word	_Label_1839
	.word	-28
	.word	4
	.word	_Label_1840
	.word	-9
	.word	1
	.word	0
_Label_1833:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1834:
	.ascii	"Pself\0"
	.align
_Label_1835:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1840:
	.byte	'C'
	.ascii	"_temp_1826\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_2219:
	push	r0
	sub	r1,1,r1
	bne	_Label_2219
	mov	1591,r13		! source line 1591
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0RE",r10
!   _temp_1844 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1844 [entry ] into _temp_1845
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1843 = *_temp_1845  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1842 = _temp_1843 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1842) then goto _Label_1846
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1846
!   _temp_1841 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1847
_Label_1846:
!   _temp_1841 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1847:
!   ReturnResult: _temp_1841  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1848
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1850
	.word	12
	.word	4
	.word	_Label_1851
	.word	-16
	.word	4
	.word	_Label_1852
	.word	-20
	.word	4
	.word	_Label_1853
	.word	-24
	.word	4
	.word	_Label_1854
	.word	-28
	.word	4
	.word	_Label_1855
	.word	-9
	.word	1
	.word	0
_Label_1848:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1849:
	.ascii	"Pself\0"
	.align
_Label_1850:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1855:
	.byte	'C'
	.ascii	"_temp_1841\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_2220:
	push	r0
	sub	r1,1,r1
	bne	_Label_2220
	mov	1600,r13		! source line 1600
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0RE",r10
!   _temp_1859 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1859 [entry ] into _temp_1860
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1858 = *_temp_1860  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1857 = _temp_1858 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1857) then goto _Label_1861
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1861
!   _temp_1856 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1862
_Label_1861:
!   _temp_1856 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1862:
!   ReturnResult: _temp_1856  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1863
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1865
	.word	12
	.word	4
	.word	_Label_1866
	.word	-16
	.word	4
	.word	_Label_1867
	.word	-20
	.word	4
	.word	_Label_1868
	.word	-24
	.word	4
	.word	_Label_1869
	.word	-28
	.word	4
	.word	_Label_1870
	.word	-9
	.word	1
	.word	0
_Label_1863:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1864:
	.ascii	"Pself\0"
	.align
_Label_1865:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1870:
	.byte	'C'
	.ascii	"_temp_1856\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_2221:
	push	r0
	sub	r1,1,r1
	bne	_Label_2221
	mov	1609,r13		! source line 1609
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0RE",r10
!   _temp_1874 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1874 [entry ] into _temp_1875
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1873 = *_temp_1875  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1872 = _temp_1873 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1872) then goto _Label_1876
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1876
!   _temp_1871 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1877
_Label_1876:
!   _temp_1871 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1877:
!   ReturnResult: _temp_1871  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1878
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1879
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1880
	.word	12
	.word	4
	.word	_Label_1881
	.word	-16
	.word	4
	.word	_Label_1882
	.word	-20
	.word	4
	.word	_Label_1883
	.word	-24
	.word	4
	.word	_Label_1884
	.word	-28
	.word	4
	.word	_Label_1885
	.word	-9
	.word	1
	.word	0
_Label_1878:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1879:
	.ascii	"Pself\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1885:
	.byte	'C'
	.ascii	"_temp_1871\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_2222:
	push	r0
	sub	r1,1,r1
	bne	_Label_2222
	mov	1618,r13		! source line 1618
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0AS",r10
!   _temp_1886 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1886 [entry ] into _temp_1887
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1890 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1890 [entry ] into _temp_1891
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1889 = *_temp_1891  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1888 = _temp_1889 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1887 = _temp_1888  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1892
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1894
	.word	12
	.word	4
	.word	_Label_1895
	.word	-12
	.word	4
	.word	_Label_1896
	.word	-16
	.word	4
	.word	_Label_1897
	.word	-20
	.word	4
	.word	_Label_1898
	.word	-24
	.word	4
	.word	_Label_1899
	.word	-28
	.word	4
	.word	_Label_1900
	.word	-32
	.word	4
	.word	0
_Label_1892:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1893:
	.ascii	"Pself\0"
	.align
_Label_1894:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_2223:
	push	r0
	sub	r1,1,r1
	bne	_Label_2223
	mov	1627,r13		! source line 1627
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0AS",r10
!   _temp_1901 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1901 [entry ] into _temp_1902
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1905 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1905 [entry ] into _temp_1906
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1904 = *_temp_1906  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1903 = _temp_1904 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1902 = _temp_1903  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1907
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1908
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1909
	.word	12
	.word	4
	.word	_Label_1910
	.word	-12
	.word	4
	.word	_Label_1911
	.word	-16
	.word	4
	.word	_Label_1912
	.word	-20
	.word	4
	.word	_Label_1913
	.word	-24
	.word	4
	.word	_Label_1914
	.word	-28
	.word	4
	.word	_Label_1915
	.word	-32
	.word	4
	.word	0
_Label_1907:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1908:
	.ascii	"Pself\0"
	.align
_Label_1909:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_2224:
	push	r0
	sub	r1,1,r1
	bne	_Label_2224
	mov	1636,r13		! source line 1636
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0AS",r10
!   _temp_1916 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1916 [entry ] into _temp_1917
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1920 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1920 [entry ] into _temp_1921
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1919 = *_temp_1921  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1918 = _temp_1919 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1917 = _temp_1918  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1922
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1923
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1924
	.word	12
	.word	4
	.word	_Label_1925
	.word	-12
	.word	4
	.word	_Label_1926
	.word	-16
	.word	4
	.word	_Label_1927
	.word	-20
	.word	4
	.word	_Label_1928
	.word	-24
	.word	4
	.word	_Label_1929
	.word	-28
	.word	4
	.word	_Label_1930
	.word	-32
	.word	4
	.word	0
_Label_1922:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1923:
	.ascii	"Pself\0"
	.align
_Label_1924:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_2225:
	push	r0
	sub	r1,1,r1
	bne	_Label_2225
	mov	1645,r13		! source line 1645
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0AS",r10
!   _temp_1931 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1931 [entry ] into _temp_1932
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1935 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1935 [entry ] into _temp_1936
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1934 = *_temp_1936  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1933 = _temp_1934 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1932 = _temp_1933  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1937
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1938
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1939
	.word	12
	.word	4
	.word	_Label_1940
	.word	-12
	.word	4
	.word	_Label_1941
	.word	-16
	.word	4
	.word	_Label_1942
	.word	-20
	.word	4
	.word	_Label_1943
	.word	-24
	.word	4
	.word	_Label_1944
	.word	-28
	.word	4
	.word	_Label_1945
	.word	-32
	.word	4
	.word	0
_Label_1937:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1938:
	.ascii	"Pself\0"
	.align
_Label_1939:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_2226:
	push	r0
	sub	r1,1,r1
	bne	_Label_2226
	mov	1654,r13		! source line 1654
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0AS",r10
!   _temp_1946 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1946 [entry ] into _temp_1947
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1950 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1950 [entry ] into _temp_1951
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1949 = *_temp_1951  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1948 = _temp_1949 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1947 = _temp_1948  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1952
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1953
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1954
	.word	12
	.word	4
	.word	_Label_1955
	.word	-12
	.word	4
	.word	_Label_1956
	.word	-16
	.word	4
	.word	_Label_1957
	.word	-20
	.word	4
	.word	_Label_1958
	.word	-24
	.word	4
	.word	_Label_1959
	.word	-28
	.word	4
	.word	_Label_1960
	.word	-32
	.word	4
	.word	0
_Label_1952:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1953:
	.ascii	"Pself\0"
	.align
_Label_1954:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_2227:
	push	r0
	sub	r1,1,r1
	bne	_Label_2227
	mov	1663,r13		! source line 1663
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0AS",r10
!   _temp_1961 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1961 [entry ] into _temp_1962
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1965 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1965 [entry ] into _temp_1966
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1964 = *_temp_1966  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1963 = _temp_1964 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1962 = _temp_1963  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1967
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1968
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1969
	.word	12
	.word	4
	.word	_Label_1970
	.word	-12
	.word	4
	.word	_Label_1971
	.word	-16
	.word	4
	.word	_Label_1972
	.word	-20
	.word	4
	.word	_Label_1973
	.word	-24
	.word	4
	.word	_Label_1974
	.word	-28
	.word	4
	.word	_Label_1975
	.word	-32
	.word	4
	.word	0
_Label_1967:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1968:
	.ascii	"Pself\0"
	.align
_Label_1969:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_2228:
	push	r0
	sub	r1,1,r1
	bne	_Label_2228
	mov	1672,r13		! source line 1672
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0AS",r10
!   _temp_1976 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1976 [entry ] into _temp_1977
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1980 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1980 [entry ] into _temp_1981
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1979 = *_temp_1981  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1978 = _temp_1979 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1977 = _temp_1978  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1982
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1983
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1984
	.word	12
	.word	4
	.word	_Label_1985
	.word	-12
	.word	4
	.word	_Label_1986
	.word	-16
	.word	4
	.word	_Label_1987
	.word	-20
	.word	4
	.word	_Label_1988
	.word	-24
	.word	4
	.word	_Label_1989
	.word	-28
	.word	4
	.word	_Label_1990
	.word	-32
	.word	4
	.word	0
_Label_1982:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1983:
	.ascii	"Pself\0"
	.align
_Label_1984:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_2229:
	push	r0
	sub	r1,1,r1
	bne	_Label_2229
	mov	1681,r13		! source line 1681
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0AS",r10
!   _temp_1991 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1991 [entry ] into _temp_1992
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1995 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1995 [entry ] into _temp_1996
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
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
	store	r2,[r14+-12]
!   Data Move: _temp_1994 = *_temp_1996  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1993 = _temp_1994 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1992 = _temp_1993  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1997
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1999
	.word	12
	.word	4
	.word	_Label_2000
	.word	-12
	.word	4
	.word	_Label_2001
	.word	-16
	.word	4
	.word	_Label_2002
	.word	-20
	.word	4
	.word	_Label_2003
	.word	-24
	.word	4
	.word	_Label_2004
	.word	-28
	.word	4
	.word	_Label_2005
	.word	-32
	.word	4
	.word	0
_Label_1997:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1998:
	.ascii	"Pself\0"
	.align
_Label_1999:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_2230:
	push	r0
	sub	r1,1,r1
	bne	_Label_2230
	mov	1690,r13		! source line 1690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2007 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2007 [0 ] into _temp_2008
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_2006 = _temp_2008		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2009 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2009  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2010
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2011
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2012
	.word	-12
	.word	4
	.word	_Label_2013
	.word	-16
	.word	4
	.word	_Label_2014
	.word	-20
	.word	4
	.word	_Label_2015
	.word	-24
	.word	4
	.word	0
_Label_2010:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2011:
	.ascii	"Pself\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_2231:
	push	r0
	sub	r1,1,r1
	bne	_Label_2231
	mov	1701,r13		! source line 1701
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2016
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2016
	jmp	_Label_2017
_Label_2016:
! THEN...
	mov	1717,r13		! source line 1717
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1717,r13		! source line 1717
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2018
_Label_2017:
! ELSE...
	mov	1718,r13		! source line 1718
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2020		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2020
!	jmp	_Label_2019
_Label_2019:
! THEN...
	mov	1719,r13		! source line 1719
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2020:
! END IF...
_Label_2018:
! ASSIGNMENT STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1722,r13		! source line 1722
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0WH",r10
_Label_2021:
!	jmp	_Label_2022
_Label_2022:
	mov	1725,r13		! source line 1725
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1726,r13		! source line 1726
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2025		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2025
!	jmp	_Label_2024
_Label_2024:
! THEN...
	mov	1727,r13		! source line 1727
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2026 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1727,r13		! source line 1727
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2025:
! IF STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0IF",r10
	mov	1730,r13		! source line 1730
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2030) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2029  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2029 then goto _Label_2028 else goto _Label_2027
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2027
	jmp	_Label_2028
_Label_2027:
! THEN...
	mov	1731,r13		! source line 1731
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2031 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2031  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2028:
! ASSIGNMENT STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0AS",r10
	mov	1734,r13		! source line 1734
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2033) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2032  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2032 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0WH",r10
_Label_2034:
!   if offset >= 8192 then goto _Label_2036		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2036
!	jmp	_Label_2035
_Label_2035:
	mov	1736,r13		! source line 1736
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2037 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2037  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2039		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2039
!	jmp	_Label_2038
_Label_2038:
! THEN...
	mov	1745,r13		! source line 1745
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1745,r13		! source line 1745
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2039:
! END WHILE...
	jmp	_Label_2034
_Label_2036:
! ASSIGNMENT STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2021
_Label_2023:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2040
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2041
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2042
	.word	12
	.word	4
	.word	_Label_2043
	.word	16
	.word	4
	.word	_Label_2044
	.word	20
	.word	4
	.word	_Label_2045
	.word	-9
	.word	1
	.word	_Label_2046
	.word	-16
	.word	4
	.word	_Label_2047
	.word	-20
	.word	4
	.word	_Label_2048
	.word	-24
	.word	4
	.word	_Label_2049
	.word	-28
	.word	4
	.word	_Label_2050
	.word	-10
	.word	1
	.word	_Label_2051
	.word	-32
	.word	4
	.word	_Label_2052
	.word	-36
	.word	4
	.word	_Label_2053
	.word	-40
	.word	4
	.word	_Label_2054
	.word	-44
	.word	4
	.word	_Label_2055
	.word	-48
	.word	4
	.word	0
_Label_2040:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2041:
	.ascii	"Pself\0"
	.align
_Label_2042:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2043:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2044:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2045:
	.byte	'C'
	.ascii	"_temp_2037\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2049:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2050:
	.byte	'C'
	.ascii	"_temp_2029\0"
	.align
_Label_2051:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2052:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2053:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2054:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2055:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_2232:
	push	r0
	sub	r1,1,r1
	bne	_Label_2232
	mov	1755,r13		! source line 1755
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1766,r13		! source line 1766
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2056
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2056
	jmp	_Label_2057
_Label_2056:
! THEN...
	mov	1767,r13		! source line 1767
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2058
_Label_2057:
! ELSE...
	mov	1768,r13		! source line 1768
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2060		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2060
!	jmp	_Label_2059
_Label_2059:
! THEN...
	mov	1769,r13		! source line 1769
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2060:
! END IF...
_Label_2058:
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0WH",r10
_Label_2061:
!	jmp	_Label_2062
_Label_2062:
	mov	1773,r13		! source line 1773
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2067		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2067
	jmp	_Label_2064
_Label_2067:
	mov	1775,r13		! source line 1775
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2069) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2068  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2068 then goto _Label_2066 else goto _Label_2064
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2064
	jmp	_Label_2066
_Label_2066:
	mov	1776,r13		! source line 1776
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2071) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2070  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2070 then goto _Label_2065 else goto _Label_2064
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2064
	jmp	_Label_2065
_Label_2064:
! THEN...
	mov	1777,r13		! source line 1777
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2065:
! ASSIGNMENT STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0AS",r10
	mov	1779,r13		! source line 1779
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2073) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2072  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2072 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0WH",r10
_Label_2074:
!   if offset >= 8192 then goto _Label_2076		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2076
!	jmp	_Label_2075
_Label_2075:
	mov	1780,r13		! source line 1780
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2077 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2077  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1783,r13		! source line 1783
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2079		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2079
!	jmp	_Label_2078
_Label_2078:
! THEN...
	mov	1787,r13		! source line 1787
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2079:
! END WHILE...
	jmp	_Label_2074
_Label_2076:
! ASSIGNMENT STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2061
_Label_2063:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2080
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2081
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2082
	.word	12
	.word	4
	.word	_Label_2083
	.word	16
	.word	4
	.word	_Label_2084
	.word	20
	.word	4
	.word	_Label_2085
	.word	-9
	.word	1
	.word	_Label_2086
	.word	-16
	.word	4
	.word	_Label_2087
	.word	-20
	.word	4
	.word	_Label_2088
	.word	-24
	.word	4
	.word	_Label_2089
	.word	-10
	.word	1
	.word	_Label_2090
	.word	-28
	.word	4
	.word	_Label_2091
	.word	-11
	.word	1
	.word	_Label_2092
	.word	-32
	.word	4
	.word	_Label_2093
	.word	-36
	.word	4
	.word	_Label_2094
	.word	-40
	.word	4
	.word	_Label_2095
	.word	-44
	.word	4
	.word	0
_Label_2080:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2081:
	.ascii	"Pself\0"
	.align
_Label_2082:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2083:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2084:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2085:
	.byte	'C'
	.ascii	"_temp_2077\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2089:
	.byte	'C'
	.ascii	"_temp_2070\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2091:
	.byte	'C'
	.ascii	"_temp_2068\0"
	.align
_Label_2092:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2093:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2094:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2095:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_2233:
	push	r0
	sub	r1,1,r1
	bne	_Label_2233
	mov	1797,r13		! source line 1797
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0IF",r10
	mov	1821,r13		! source line 1821
	mov	"\0\0SE",r10
!   _temp_2099 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2100) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2099  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2098  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2098 >= 4 then goto _Label_2097		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2097
!	jmp	_Label_2096
_Label_2096:
! THEN...
	mov	1824,r13		! source line 1824
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2097:
! IF STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2102		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2102
!	jmp	_Label_2101
_Label_2101:
! THEN...
	mov	1829,r13		! source line 1829
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2102:
! ASSIGNMENT STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0RE",r10
	mov	1834,r13		! source line 1834
	mov	"\0\0SE",r10
!   _temp_2105 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2104 = _temp_2105 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2106 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2107) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2104  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2106  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2103  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2103  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2108
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2109
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2110
	.word	12
	.word	4
	.word	_Label_2111
	.word	16
	.word	4
	.word	_Label_2112
	.word	20
	.word	4
	.word	_Label_2113
	.word	-12
	.word	4
	.word	_Label_2114
	.word	-16
	.word	4
	.word	_Label_2115
	.word	-20
	.word	4
	.word	_Label_2116
	.word	-24
	.word	4
	.word	_Label_2117
	.word	-28
	.word	4
	.word	_Label_2118
	.word	-32
	.word	4
	.word	_Label_2119
	.word	-36
	.word	4
	.word	_Label_2120
	.word	-40
	.word	4
	.word	_Label_2121
	.word	-44
	.word	4
	.word	0
_Label_2108:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2109:
	.ascii	"Pself\0"
	.align
_Label_2110:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2111:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2112:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2100\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2098\0"
	.align
_Label_2121:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
