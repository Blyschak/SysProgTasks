	.file	"m1.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"Hello World"
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB0:
	.file 1 "src/m1/m1.c"
	.loc 1 5 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 6 0
	movl	$.LC0, %edi
	call	puts
	.loc 1 7 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF565
	.byte	0x1
	.long	.LASF566
	.long	.LASF567
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF556
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF557
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF558
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF559
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF560
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF561
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF562
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF563
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF564
	.uleb128 0x4
	.string	"foo"
	.byte	0x1
	.byte	0x4
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x7
	.long	.Ldebug_macro1
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 2 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.file 3 "/usr/include/stdio.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF244
	.file 4 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.file 5 "/usr/include/x86_64-linux-gnu/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x16f
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro4
	.file 6 "/usr/include/x86_64-linux-gnu/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x19a
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 7 "/usr/include/x86_64-linux-gnu/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x187
	.uleb128 0x7
	.file 8 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.file 9 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.file 10 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x18
	.long	.LASF380
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.file 11 "/usr/include/x86_64-linux-gnu/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x79
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x6
	.uleb128 0xc0
	.long	.LASF434
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.file 12 "/usr/include/libio.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF442
	.file 13 "/usr/include/_G_config.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.long	.LASF444
	.file 14 "/usr/include/wchar.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.file 15 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro20
	.file 16 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h"
	.byte	0x3
	.uleb128 0xa4
	.uleb128 0x10
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro22
	.file 17 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.byte	0x3
	.uleb128 0x355
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.file 18 "src/m1/include/m1.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.0.34da110c2eb840c68d149aefe1b82e0f,comdat
.Ldebug_macro1:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.long	.LASF0
	.byte	0x5
	.uleb128 0
	.long	.LASF1
	.byte	0x5
	.uleb128 0
	.long	.LASF2
	.byte	0x5
	.uleb128 0
	.long	.LASF3
	.byte	0x5
	.uleb128 0
	.long	.LASF4
	.byte	0x5
	.uleb128 0
	.long	.LASF5
	.byte	0x5
	.uleb128 0
	.long	.LASF6
	.byte	0x5
	.uleb128 0
	.long	.LASF7
	.byte	0x5
	.uleb128 0
	.long	.LASF8
	.byte	0x5
	.uleb128 0
	.long	.LASF9
	.byte	0x5
	.uleb128 0
	.long	.LASF10
	.byte	0x5
	.uleb128 0
	.long	.LASF11
	.byte	0x5
	.uleb128 0
	.long	.LASF12
	.byte	0x5
	.uleb128 0
	.long	.LASF13
	.byte	0x5
	.uleb128 0
	.long	.LASF14
	.byte	0x5
	.uleb128 0
	.long	.LASF15
	.byte	0x5
	.uleb128 0
	.long	.LASF16
	.byte	0x5
	.uleb128 0
	.long	.LASF17
	.byte	0x5
	.uleb128 0
	.long	.LASF18
	.byte	0x5
	.uleb128 0
	.long	.LASF19
	.byte	0x5
	.uleb128 0
	.long	.LASF20
	.byte	0x5
	.uleb128 0
	.long	.LASF21
	.byte	0x5
	.uleb128 0
	.long	.LASF22
	.byte	0x5
	.uleb128 0
	.long	.LASF23
	.byte	0x5
	.uleb128 0
	.long	.LASF24
	.byte	0x5
	.uleb128 0
	.long	.LASF25
	.byte	0x5
	.uleb128 0
	.long	.LASF26
	.byte	0x5
	.uleb128 0
	.long	.LASF27
	.byte	0x5
	.uleb128 0
	.long	.LASF28
	.byte	0x5
	.uleb128 0
	.long	.LASF29
	.byte	0x5
	.uleb128 0
	.long	.LASF30
	.byte	0x5
	.uleb128 0
	.long	.LASF31
	.byte	0x5
	.uleb128 0
	.long	.LASF32
	.byte	0x5
	.uleb128 0
	.long	.LASF33
	.byte	0x5
	.uleb128 0
	.long	.LASF34
	.byte	0x5
	.uleb128 0
	.long	.LASF35
	.byte	0x5
	.uleb128 0
	.long	.LASF36
	.byte	0x5
	.uleb128 0
	.long	.LASF37
	.byte	0x5
	.uleb128 0
	.long	.LASF38
	.byte	0x5
	.uleb128 0
	.long	.LASF39
	.byte	0x5
	.uleb128 0
	.long	.LASF40
	.byte	0x5
	.uleb128 0
	.long	.LASF41
	.byte	0x5
	.uleb128 0
	.long	.LASF42
	.byte	0x5
	.uleb128 0
	.long	.LASF43
	.byte	0x5
	.uleb128 0
	.long	.LASF44
	.byte	0x5
	.uleb128 0
	.long	.LASF45
	.byte	0x5
	.uleb128 0
	.long	.LASF46
	.byte	0x5
	.uleb128 0
	.long	.LASF47
	.byte	0x5
	.uleb128 0
	.long	.LASF48
	.byte	0x5
	.uleb128 0
	.long	.LASF49
	.byte	0x5
	.uleb128 0
	.long	.LASF50
	.byte	0x5
	.uleb128 0
	.long	.LASF51
	.byte	0x5
	.uleb128 0
	.long	.LASF52
	.byte	0x5
	.uleb128 0
	.long	.LASF53
	.byte	0x5
	.uleb128 0
	.long	.LASF54
	.byte	0x5
	.uleb128 0
	.long	.LASF55
	.byte	0x5
	.uleb128 0
	.long	.LASF56
	.byte	0x5
	.uleb128 0
	.long	.LASF57
	.byte	0x5
	.uleb128 0
	.long	.LASF58
	.byte	0x5
	.uleb128 0
	.long	.LASF59
	.byte	0x5
	.uleb128 0
	.long	.LASF60
	.byte	0x5
	.uleb128 0
	.long	.LASF61
	.byte	0x5
	.uleb128 0
	.long	.LASF62
	.byte	0x5
	.uleb128 0
	.long	.LASF63
	.byte	0x5
	.uleb128 0
	.long	.LASF64
	.byte	0x5
	.uleb128 0
	.long	.LASF65
	.byte	0x5
	.uleb128 0
	.long	.LASF66
	.byte	0x5
	.uleb128 0
	.long	.LASF67
	.byte	0x5
	.uleb128 0
	.long	.LASF68
	.byte	0x5
	.uleb128 0
	.long	.LASF69
	.byte	0x5
	.uleb128 0
	.long	.LASF70
	.byte	0x5
	.uleb128 0
	.long	.LASF71
	.byte	0x5
	.uleb128 0
	.long	.LASF72
	.byte	0x5
	.uleb128 0
	.long	.LASF73
	.byte	0x5
	.uleb128 0
	.long	.LASF74
	.byte	0x5
	.uleb128 0
	.long	.LASF75
	.byte	0x5
	.uleb128 0
	.long	.LASF76
	.byte	0x5
	.uleb128 0
	.long	.LASF77
	.byte	0x5
	.uleb128 0
	.long	.LASF78
	.byte	0x5
	.uleb128 0
	.long	.LASF79
	.byte	0x5
	.uleb128 0
	.long	.LASF80
	.byte	0x5
	.uleb128 0
	.long	.LASF81
	.byte	0x5
	.uleb128 0
	.long	.LASF82
	.byte	0x5
	.uleb128 0
	.long	.LASF83
	.byte	0x5
	.uleb128 0
	.long	.LASF84
	.byte	0x5
	.uleb128 0
	.long	.LASF85
	.byte	0x5
	.uleb128 0
	.long	.LASF86
	.byte	0x5
	.uleb128 0
	.long	.LASF87
	.byte	0x5
	.uleb128 0
	.long	.LASF88
	.byte	0x5
	.uleb128 0
	.long	.LASF89
	.byte	0x5
	.uleb128 0
	.long	.LASF90
	.byte	0x5
	.uleb128 0
	.long	.LASF91
	.byte	0x5
	.uleb128 0
	.long	.LASF92
	.byte	0x5
	.uleb128 0
	.long	.LASF93
	.byte	0x5
	.uleb128 0
	.long	.LASF94
	.byte	0x5
	.uleb128 0
	.long	.LASF95
	.byte	0x5
	.uleb128 0
	.long	.LASF96
	.byte	0x5
	.uleb128 0
	.long	.LASF97
	.byte	0x5
	.uleb128 0
	.long	.LASF98
	.byte	0x5
	.uleb128 0
	.long	.LASF99
	.byte	0x5
	.uleb128 0
	.long	.LASF100
	.byte	0x5
	.uleb128 0
	.long	.LASF101
	.byte	0x5
	.uleb128 0
	.long	.LASF102
	.byte	0x5
	.uleb128 0
	.long	.LASF103
	.byte	0x5
	.uleb128 0
	.long	.LASF104
	.byte	0x5
	.uleb128 0
	.long	.LASF105
	.byte	0x5
	.uleb128 0
	.long	.LASF106
	.byte	0x5
	.uleb128 0
	.long	.LASF107
	.byte	0x5
	.uleb128 0
	.long	.LASF108
	.byte	0x5
	.uleb128 0
	.long	.LASF109
	.byte	0x5
	.uleb128 0
	.long	.LASF110
	.byte	0x5
	.uleb128 0
	.long	.LASF111
	.byte	0x5
	.uleb128 0
	.long	.LASF112
	.byte	0x5
	.uleb128 0
	.long	.LASF113
	.byte	0x5
	.uleb128 0
	.long	.LASF114
	.byte	0x5
	.uleb128 0
	.long	.LASF115
	.byte	0x5
	.uleb128 0
	.long	.LASF116
	.byte	0x5
	.uleb128 0
	.long	.LASF117
	.byte	0x5
	.uleb128 0
	.long	.LASF118
	.byte	0x5
	.uleb128 0
	.long	.LASF119
	.byte	0x5
	.uleb128 0
	.long	.LASF120
	.byte	0x5
	.uleb128 0
	.long	.LASF121
	.byte	0x5
	.uleb128 0
	.long	.LASF122
	.byte	0x5
	.uleb128 0
	.long	.LASF123
	.byte	0x5
	.uleb128 0
	.long	.LASF124
	.byte	0x5
	.uleb128 0
	.long	.LASF125
	.byte	0x5
	.uleb128 0
	.long	.LASF126
	.byte	0x5
	.uleb128 0
	.long	.LASF127
	.byte	0x5
	.uleb128 0
	.long	.LASF128
	.byte	0x5
	.uleb128 0
	.long	.LASF129
	.byte	0x5
	.uleb128 0
	.long	.LASF130
	.byte	0x5
	.uleb128 0
	.long	.LASF131
	.byte	0x5
	.uleb128 0
	.long	.LASF132
	.byte	0x5
	.uleb128 0
	.long	.LASF133
	.byte	0x5
	.uleb128 0
	.long	.LASF134
	.byte	0x5
	.uleb128 0
	.long	.LASF135
	.byte	0x5
	.uleb128 0
	.long	.LASF136
	.byte	0x5
	.uleb128 0
	.long	.LASF137
	.byte	0x5
	.uleb128 0
	.long	.LASF138
	.byte	0x5
	.uleb128 0
	.long	.LASF139
	.byte	0x5
	.uleb128 0
	.long	.LASF140
	.byte	0x5
	.uleb128 0
	.long	.LASF141
	.byte	0x5
	.uleb128 0
	.long	.LASF142
	.byte	0x5
	.uleb128 0
	.long	.LASF143
	.byte	0x5
	.uleb128 0
	.long	.LASF144
	.byte	0x5
	.uleb128 0
	.long	.LASF145
	.byte	0x5
	.uleb128 0
	.long	.LASF146
	.byte	0x5
	.uleb128 0
	.long	.LASF147
	.byte	0x5
	.uleb128 0
	.long	.LASF148
	.byte	0x5
	.uleb128 0
	.long	.LASF149
	.byte	0x5
	.uleb128 0
	.long	.LASF150
	.byte	0x5
	.uleb128 0
	.long	.LASF151
	.byte	0x5
	.uleb128 0
	.long	.LASF152
	.byte	0x5
	.uleb128 0
	.long	.LASF153
	.byte	0x5
	.uleb128 0
	.long	.LASF154
	.byte	0x5
	.uleb128 0
	.long	.LASF155
	.byte	0x5
	.uleb128 0
	.long	.LASF156
	.byte	0x5
	.uleb128 0
	.long	.LASF157
	.byte	0x5
	.uleb128 0
	.long	.LASF158
	.byte	0x5
	.uleb128 0
	.long	.LASF159
	.byte	0x5
	.uleb128 0
	.long	.LASF160
	.byte	0x5
	.uleb128 0
	.long	.LASF161
	.byte	0x5
	.uleb128 0
	.long	.LASF162
	.byte	0x5
	.uleb128 0
	.long	.LASF163
	.byte	0x5
	.uleb128 0
	.long	.LASF164
	.byte	0x5
	.uleb128 0
	.long	.LASF165
	.byte	0x5
	.uleb128 0
	.long	.LASF166
	.byte	0x5
	.uleb128 0
	.long	.LASF167
	.byte	0x5
	.uleb128 0
	.long	.LASF168
	.byte	0x5
	.uleb128 0
	.long	.LASF169
	.byte	0x5
	.uleb128 0
	.long	.LASF170
	.byte	0x5
	.uleb128 0
	.long	.LASF171
	.byte	0x5
	.uleb128 0
	.long	.LASF172
	.byte	0x5
	.uleb128 0
	.long	.LASF173
	.byte	0x5
	.uleb128 0
	.long	.LASF174
	.byte	0x5
	.uleb128 0
	.long	.LASF175
	.byte	0x5
	.uleb128 0
	.long	.LASF176
	.byte	0x5
	.uleb128 0
	.long	.LASF177
	.byte	0x5
	.uleb128 0
	.long	.LASF178
	.byte	0x5
	.uleb128 0
	.long	.LASF179
	.byte	0x5
	.uleb128 0
	.long	.LASF180
	.byte	0x5
	.uleb128 0
	.long	.LASF181
	.byte	0x5
	.uleb128 0
	.long	.LASF182
	.byte	0x5
	.uleb128 0
	.long	.LASF183
	.byte	0x5
	.uleb128 0
	.long	.LASF184
	.byte	0x5
	.uleb128 0
	.long	.LASF185
	.byte	0x5
	.uleb128 0
	.long	.LASF186
	.byte	0x5
	.uleb128 0
	.long	.LASF187
	.byte	0x5
	.uleb128 0
	.long	.LASF188
	.byte	0x5
	.uleb128 0
	.long	.LASF189
	.byte	0x5
	.uleb128 0
	.long	.LASF190
	.byte	0x5
	.uleb128 0
	.long	.LASF191
	.byte	0x5
	.uleb128 0
	.long	.LASF192
	.byte	0x5
	.uleb128 0
	.long	.LASF193
	.byte	0x5
	.uleb128 0
	.long	.LASF194
	.byte	0x5
	.uleb128 0
	.long	.LASF195
	.byte	0x5
	.uleb128 0
	.long	.LASF196
	.byte	0x5
	.uleb128 0
	.long	.LASF197
	.byte	0x5
	.uleb128 0
	.long	.LASF198
	.byte	0x5
	.uleb128 0
	.long	.LASF199
	.byte	0x5
	.uleb128 0
	.long	.LASF200
	.byte	0x5
	.uleb128 0
	.long	.LASF201
	.byte	0x5
	.uleb128 0
	.long	.LASF202
	.byte	0x5
	.uleb128 0
	.long	.LASF203
	.byte	0x5
	.uleb128 0
	.long	.LASF204
	.byte	0x5
	.uleb128 0
	.long	.LASF205
	.byte	0x5
	.uleb128 0
	.long	.LASF206
	.byte	0x5
	.uleb128 0
	.long	.LASF207
	.byte	0x5
	.uleb128 0
	.long	.LASF208
	.byte	0x5
	.uleb128 0
	.long	.LASF209
	.byte	0x5
	.uleb128 0
	.long	.LASF210
	.byte	0x5
	.uleb128 0
	.long	.LASF211
	.byte	0x5
	.uleb128 0
	.long	.LASF212
	.byte	0x5
	.uleb128 0
	.long	.LASF213
	.byte	0x5
	.uleb128 0
	.long	.LASF214
	.byte	0x5
	.uleb128 0
	.long	.LASF215
	.byte	0x5
	.uleb128 0
	.long	.LASF216
	.byte	0x5
	.uleb128 0
	.long	.LASF217
	.byte	0x5
	.uleb128 0
	.long	.LASF218
	.byte	0x5
	.uleb128 0
	.long	.LASF219
	.byte	0x5
	.uleb128 0
	.long	.LASF220
	.byte	0x5
	.uleb128 0
	.long	.LASF221
	.byte	0x5
	.uleb128 0
	.long	.LASF222
	.byte	0x5
	.uleb128 0
	.long	.LASF223
	.byte	0x5
	.uleb128 0
	.long	.LASF224
	.byte	0x5
	.uleb128 0
	.long	.LASF225
	.byte	0x5
	.uleb128 0
	.long	.LASF226
	.byte	0x5
	.uleb128 0
	.long	.LASF227
	.byte	0x5
	.uleb128 0
	.long	.LASF228
	.byte	0x5
	.uleb128 0
	.long	.LASF229
	.byte	0x5
	.uleb128 0
	.long	.LASF230
	.byte	0x5
	.uleb128 0
	.long	.LASF231
	.byte	0x5
	.uleb128 0
	.long	.LASF232
	.byte	0x5
	.uleb128 0
	.long	.LASF233
	.byte	0x5
	.uleb128 0
	.long	.LASF234
	.byte	0x5
	.uleb128 0
	.long	.LASF235
	.byte	0x5
	.uleb128 0
	.long	.LASF236
	.byte	0x5
	.uleb128 0
	.long	.LASF237
	.byte	0x5
	.uleb128 0
	.long	.LASF238
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdcpredef.h.19.bf2bf6c5fb087dfb5ef2d2297c2795de,comdat
.Ldebug_macro2:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF239
	.byte	0x5
	.uleb128 0x26
	.long	.LASF240
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF241
	.byte	0x5
	.uleb128 0x37
	.long	.LASF242
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF243
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.19.651d3b9fb1e89e7acc9be8b81d469c23,comdat
.Ldebug_macro3:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF245
	.byte	0x6
	.uleb128 0x61
	.long	.LASF246
	.byte	0x6
	.uleb128 0x62
	.long	.LASF247
	.byte	0x6
	.uleb128 0x63
	.long	.LASF248
	.byte	0x6
	.uleb128 0x64
	.long	.LASF249
	.byte	0x6
	.uleb128 0x65
	.long	.LASF250
	.byte	0x6
	.uleb128 0x66
	.long	.LASF251
	.byte	0x6
	.uleb128 0x67
	.long	.LASF252
	.byte	0x6
	.uleb128 0x68
	.long	.LASF253
	.byte	0x6
	.uleb128 0x69
	.long	.LASF254
	.byte	0x6
	.uleb128 0x6a
	.long	.LASF255
	.byte	0x6
	.uleb128 0x6b
	.long	.LASF256
	.byte	0x6
	.uleb128 0x6c
	.long	.LASF257
	.byte	0x6
	.uleb128 0x6d
	.long	.LASF258
	.byte	0x6
	.uleb128 0x6e
	.long	.LASF259
	.byte	0x6
	.uleb128 0x6f
	.long	.LASF260
	.byte	0x6
	.uleb128 0x70
	.long	.LASF261
	.byte	0x6
	.uleb128 0x71
	.long	.LASF262
	.byte	0x6
	.uleb128 0x72
	.long	.LASF263
	.byte	0x6
	.uleb128 0x73
	.long	.LASF264
	.byte	0x6
	.uleb128 0x74
	.long	.LASF265
	.byte	0x6
	.uleb128 0x75
	.long	.LASF266
	.byte	0x6
	.uleb128 0x76
	.long	.LASF267
	.byte	0x6
	.uleb128 0x77
	.long	.LASF268
	.byte	0x6
	.uleb128 0x78
	.long	.LASF269
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF270
	.byte	0x5
	.uleb128 0x88
	.long	.LASF271
	.byte	0x5
	.uleb128 0x154
	.long	.LASF272
	.byte	0x6
	.uleb128 0x161
	.long	.LASF273
	.byte	0x5
	.uleb128 0x162
	.long	.LASF274
	.byte	0x5
	.uleb128 0x166
	.long	.LASF275
	.byte	0x5
	.uleb128 0x167
	.long	.LASF276
	.byte	0x5
	.uleb128 0x169
	.long	.LASF277
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.19.30e876b723b72d6e6463d21a9cf9acbd,comdat
.Ldebug_macro4:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF278
	.byte	0x2
	.uleb128 0x22
	.string	"__P"
	.byte	0x6
	.uleb128 0x23
	.long	.LASF279
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF280
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF281
	.byte	0x5
	.uleb128 0x37
	.long	.LASF282
	.byte	0x5
	.uleb128 0x38
	.long	.LASF283
	.byte	0x5
	.uleb128 0x39
	.long	.LASF284
	.byte	0x5
	.uleb128 0x52
	.long	.LASF285
	.byte	0x5
	.uleb128 0x53
	.long	.LASF286
	.byte	0x5
	.uleb128 0x58
	.long	.LASF287
	.byte	0x5
	.uleb128 0x59
	.long	.LASF288
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF289
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF290
	.byte	0x5
	.uleb128 0x65
	.long	.LASF291
	.byte	0x5
	.uleb128 0x66
	.long	.LASF292
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF293
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF294
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF295
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF296
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF297
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF298
	.byte	0x5
	.uleb128 0x84
	.long	.LASF299
	.byte	0x5
	.uleb128 0x85
	.long	.LASF300
	.byte	0x5
	.uleb128 0x88
	.long	.LASF301
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF302
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF303
	.byte	0x5
	.uleb128 0x96
	.long	.LASF304
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF305
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF306
	.byte	0x5
	.uleb128 0xba
	.long	.LASF307
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF308
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF309
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF310
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF311
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF312
	.byte	0x5
	.uleb128 0xec
	.long	.LASF313
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF314
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF315
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF316
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF317
	.byte	0x5
	.uleb128 0x114
	.long	.LASF318
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF319
	.byte	0x5
	.uleb128 0x125
	.long	.LASF320
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF321
	.byte	0x5
	.uleb128 0x133
	.long	.LASF322
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF323
	.byte	0x5
	.uleb128 0x151
	.long	.LASF324
	.byte	0x5
	.uleb128 0x152
	.long	.LASF325
	.byte	0x5
	.uleb128 0x157
	.long	.LASF326
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF327
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF328
	.byte	0x5
	.uleb128 0x172
	.long	.LASF329
	.byte	0x5
	.uleb128 0x181
	.long	.LASF330
	.byte	0x5
	.uleb128 0x182
	.long	.LASF331
	.byte	0x5
	.uleb128 0x195
	.long	.LASF332
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wordsize.h.4.256e8fdbd37801980286acdbc40d0280,comdat
.Ldebug_macro5:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.long	.LASF333
	.byte	0x5
	.uleb128 0xa
	.long	.LASF334
	.byte	0x5
	.uleb128 0xc
	.long	.LASF335
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.432.619afd0aac7c4b439843706c1b28ddea,comdat
.Ldebug_macro6:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1b0
	.long	.LASF336
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF337
	.byte	0x5
	.uleb128 0x1b2
	.long	.LASF338
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF339
	.byte	0x5
	.uleb128 0x1b4
	.long	.LASF340
	.byte	0x5
	.uleb128 0x1b6
	.long	.LASF341
	.byte	0x5
	.uleb128 0x1b7
	.long	.LASF342
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stubs64.h.10.918ceb5fa58268542bf143e4c1efbcf3,comdat
.Ldebug_macro7:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF343
	.byte	0x5
	.uleb128 0xb
	.long	.LASF344
	.byte	0x5
	.uleb128 0xc
	.long	.LASF345
	.byte	0x5
	.uleb128 0xd
	.long	.LASF346
	.byte	0x5
	.uleb128 0xe
	.long	.LASF347
	.byte	0x5
	.uleb128 0xf
	.long	.LASF348
	.byte	0x5
	.uleb128 0x10
	.long	.LASF349
	.byte	0x5
	.uleb128 0x11
	.long	.LASF350
	.byte	0x5
	.uleb128 0x12
	.long	.LASF351
	.byte	0x5
	.uleb128 0x13
	.long	.LASF352
	.byte	0x5
	.uleb128 0x14
	.long	.LASF353
	.byte	0x5
	.uleb128 0x15
	.long	.LASF354
	.byte	0x5
	.uleb128 0x16
	.long	.LASF355
	.byte	0x5
	.uleb128 0x17
	.long	.LASF356
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro8:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF357
	.byte	0x5
	.uleb128 0x20
	.long	.LASF358
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.187.2ff233552538c6ff9b8575ca8ea52cb3,comdat
.Ldebug_macro9:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF359
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF360
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF361
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF362
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF363
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF364
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF365
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF366
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF367
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF368
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF369
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF370
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF371
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF372
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF373
	.byte	0x5
	.uleb128 0xca
	.long	.LASF374
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF375
	.byte	0x6
	.uleb128 0xee
	.long	.LASF376
	.byte	0x6
	.uleb128 0x191
	.long	.LASF377
	.byte	0x5
	.uleb128 0x196
	.long	.LASF378
	.byte	0x6
	.uleb128 0x19c
	.long	.LASF379
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.89.468e2451361e3b92f048f6cad51690ff,comdat
.Ldebug_macro10:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x59
	.long	.LASF381
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF382
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF383
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF384
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF385
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF386
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF387
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF388
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF389
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF390
	.byte	0x5
	.uleb128 0x70
	.long	.LASF391
	.byte	0x5
	.uleb128 0x71
	.long	.LASF392
	.byte	0x5
	.uleb128 0x72
	.long	.LASF393
	.byte	0x5
	.uleb128 0x73
	.long	.LASF394
	.byte	0x5
	.uleb128 0x75
	.long	.LASF395
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.typesizes.h.24.40eb69a6270178f15d1bf3d7b6635a8b,comdat
.Ldebug_macro11:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF396
	.byte	0x5
	.uleb128 0x22
	.long	.LASF397
	.byte	0x5
	.uleb128 0x23
	.long	.LASF398
	.byte	0x5
	.uleb128 0x26
	.long	.LASF399
	.byte	0x5
	.uleb128 0x27
	.long	.LASF400
	.byte	0x5
	.uleb128 0x28
	.long	.LASF401
	.byte	0x5
	.uleb128 0x29
	.long	.LASF402
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF403
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF404
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF405
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF406
	.byte	0x5
	.uleb128 0x33
	.long	.LASF407
	.byte	0x5
	.uleb128 0x34
	.long	.LASF408
	.byte	0x5
	.uleb128 0x35
	.long	.LASF409
	.byte	0x5
	.uleb128 0x36
	.long	.LASF410
	.byte	0x5
	.uleb128 0x37
	.long	.LASF411
	.byte	0x5
	.uleb128 0x38
	.long	.LASF412
	.byte	0x5
	.uleb128 0x39
	.long	.LASF413
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF414
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF415
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF416
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF417
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF418
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF419
	.byte	0x5
	.uleb128 0x40
	.long	.LASF420
	.byte	0x5
	.uleb128 0x41
	.long	.LASF421
	.byte	0x5
	.uleb128 0x42
	.long	.LASF422
	.byte	0x5
	.uleb128 0x43
	.long	.LASF423
	.byte	0x5
	.uleb128 0x44
	.long	.LASF424
	.byte	0x5
	.uleb128 0x45
	.long	.LASF425
	.byte	0x5
	.uleb128 0x46
	.long	.LASF426
	.byte	0x5
	.uleb128 0x47
	.long	.LASF427
	.byte	0x5
	.uleb128 0x48
	.long	.LASF428
	.byte	0x5
	.uleb128 0x49
	.long	.LASF429
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF430
	.byte	0x5
	.uleb128 0x50
	.long	.LASF431
	.byte	0x5
	.uleb128 0x53
	.long	.LASF432
	.byte	0x5
	.uleb128 0x57
	.long	.LASF433
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.36.2dd12c1fd035242ad5cfd0152a01be5a,comdat
.Ldebug_macro12:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.long	.LASF435
	.byte	0x5
	.uleb128 0x25
	.long	.LASF436
	.byte	0x5
	.uleb128 0x38
	.long	.LASF437
	.byte	0x6
	.uleb128 0x3a
	.long	.LASF438
	.byte	0x5
	.uleb128 0x42
	.long	.LASF439
	.byte	0x6
	.uleb128 0x44
	.long	.LASF440
	.byte	0x5
	.uleb128 0x48
	.long	.LASF441
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._G_config.h.5.b0f37d9e474454cf6e459063458db32f,comdat
.Ldebug_macro13:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5
	.long	.LASF443
	.byte	0x5
	.uleb128 0xa
	.long	.LASF357
	.byte	0x5
	.uleb128 0xe
	.long	.LASF358
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.238.04cc7214bceba497b20d15c10fd97511,comdat
.Ldebug_macro14:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0xee
	.long	.LASF376
	.byte	0x6
	.uleb128 0x191
	.long	.LASF377
	.byte	0x5
	.uleb128 0x196
	.long	.LASF378
	.byte	0x6
	.uleb128 0x19c
	.long	.LASF379
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.80.eea3eba2d2a17aace9470a8e0d8218dc,comdat
.Ldebug_macro15:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x50
	.long	.LASF445
	.byte	0x6
	.uleb128 0x60
	.long	.LASF446
	.byte	0x6
	.uleb128 0x386
	.long	.LASF446
	.byte	0x6
	.uleb128 0x387
	.long	.LASF447
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._G_config.h.46.5187c97b14fd664662cb32e6b94fc49e,comdat
.Ldebug_macro16:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF448
	.byte	0x5
	.uleb128 0x30
	.long	.LASF449
	.byte	0x5
	.uleb128 0x31
	.long	.LASF450
	.byte	0x5
	.uleb128 0x33
	.long	.LASF451
	.byte	0x5
	.uleb128 0x36
	.long	.LASF452
	.byte	0x5
	.uleb128 0x38
	.long	.LASF453
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libio.h.33.a775b9ecae273f33bc59931e9891e4ca,comdat
.Ldebug_macro17:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.long	.LASF454
	.byte	0x5
	.uleb128 0x22
	.long	.LASF455
	.byte	0x5
	.uleb128 0x23
	.long	.LASF456
	.byte	0x5
	.uleb128 0x24
	.long	.LASF457
	.byte	0x5
	.uleb128 0x25
	.long	.LASF458
	.byte	0x5
	.uleb128 0x26
	.long	.LASF459
	.byte	0x5
	.uleb128 0x27
	.long	.LASF460
	.byte	0x5
	.uleb128 0x28
	.long	.LASF461
	.byte	0x5
	.uleb128 0x29
	.long	.LASF462
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF463
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF464
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF465
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF466
	.byte	0x5
	.uleb128 0x30
	.long	.LASF467
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro18:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.long	.LASF468
	.byte	0x5
	.uleb128 0x27
	.long	.LASF469
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libio.h.51.dab170798ec1df48c625aea7c30e1b63,comdat
.Ldebug_macro19:
	.value	0x4
	.byte	0
	.byte	0x6
	.uleb128 0x33
	.long	.LASF470
	.byte	0x5
	.uleb128 0x34
	.long	.LASF471
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF472
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF473
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF474
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF475
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF476
	.byte	0x5
	.uleb128 0x50
	.long	.LASF477
	.byte	0x5
	.uleb128 0x51
	.long	.LASF478
	.byte	0x5
	.uleb128 0x52
	.long	.LASF479
	.byte	0x5
	.uleb128 0x53
	.long	.LASF480
	.byte	0x5
	.uleb128 0x54
	.long	.LASF481
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF482
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF483
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF484
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF485
	.byte	0x5
	.uleb128 0x60
	.long	.LASF486
	.byte	0x5
	.uleb128 0x61
	.long	.LASF487
	.byte	0x5
	.uleb128 0x62
	.long	.LASF488
	.byte	0x5
	.uleb128 0x63
	.long	.LASF489
	.byte	0x5
	.uleb128 0x64
	.long	.LASF490
	.byte	0x5
	.uleb128 0x65
	.long	.LASF491
	.byte	0x5
	.uleb128 0x66
	.long	.LASF492
	.byte	0x5
	.uleb128 0x67
	.long	.LASF493
	.byte	0x5
	.uleb128 0x68
	.long	.LASF494
	.byte	0x5
	.uleb128 0x69
	.long	.LASF495
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF496
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF497
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF498
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF499
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF500
	.byte	0x5
	.uleb128 0x70
	.long	.LASF501
	.byte	0x5
	.uleb128 0x71
	.long	.LASF502
	.byte	0x5
	.uleb128 0x75
	.long	.LASF503
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF504
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF505
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF506
	.byte	0x5
	.uleb128 0x80
	.long	.LASF507
	.byte	0x5
	.uleb128 0x81
	.long	.LASF508
	.byte	0x5
	.uleb128 0x82
	.long	.LASF509
	.byte	0x5
	.uleb128 0x83
	.long	.LASF510
	.byte	0x5
	.uleb128 0x84
	.long	.LASF511
	.byte	0x5
	.uleb128 0x85
	.long	.LASF512
	.byte	0x5
	.uleb128 0x86
	.long	.LASF513
	.byte	0x5
	.uleb128 0x87
	.long	.LASF514
	.byte	0x5
	.uleb128 0x88
	.long	.LASF515
	.byte	0x5
	.uleb128 0x89
	.long	.LASF516
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF517
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF518
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF519
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF520
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF521
	.byte	0x5
	.uleb128 0x110
	.long	.LASF522
	.byte	0x5
	.uleb128 0x13f
	.long	.LASF523
	.byte	0x5
	.uleb128 0x140
	.long	.LASF524
	.byte	0x5
	.uleb128 0x141
	.long	.LASF525
	.byte	0x5
	.uleb128 0x18b
	.long	.LASF526
	.byte	0x5
	.uleb128 0x190
	.long	.LASF527
	.byte	0x5
	.uleb128 0x193
	.long	.LASF528
	.byte	0x5
	.uleb128 0x197
	.long	.LASF529
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF530
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF531
	.byte	0x5
	.uleb128 0x1b5
	.long	.LASF532
	.byte	0x5
	.uleb128 0x1c3
	.long	.LASF533
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF534
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF535
	.byte	0x5
	.uleb128 0x1c6
	.long	.LASF536
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF537
	.byte	0x5
	.uleb128 0x1c8
	.long	.LASF538
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.120.80cbf0ec1718a5b27e6428218e29c72d,comdat
.Ldebug_macro20:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x78
	.long	.LASF539
	.byte	0x5
	.uleb128 0x79
	.long	.LASF540
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF541
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF542
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF543
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF544
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF545
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio_lim.h.23.5601568edf6da86ede461f368e1c5446,comdat
.Ldebug_macro21:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF546
	.byte	0x5
	.uleb128 0x18
	.long	.LASF547
	.byte	0x5
	.uleb128 0x19
	.long	.LASF548
	.byte	0x6
	.uleb128 0x24
	.long	.LASF549
	.byte	0x5
	.uleb128 0x25
	.long	.LASF550
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.172.df21df34a7396d7da2e08f9b617d582f,comdat
.Ldebug_macro22:
	.value	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xac
	.long	.LASF551
	.byte	0x5
	.uleb128 0xad
	.long	.LASF552
	.byte	0x5
	.uleb128 0xae
	.long	.LASF553
	.byte	0x5
	.uleb128 0x21f
	.long	.LASF554
	.byte	0x5
	.uleb128 0x249
	.long	.LASF555
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF175:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF366:
	.string	"_SIZE_T_ "
.LASF249:
	.string	"__USE_ISOCXX11"
.LASF553:
	.string	"stderr stderr"
.LASF498:
	.string	"_IO_IS_FILEBUF 0x2000"
.LASF180:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF145:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF324:
	.string	"__extern_inline extern __inline"
.LASF307:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF128:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF398:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF425:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF566:
	.string	"src/m1/m1.c"
.LASF206:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF431:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF179:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF118:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF452:
	.string	"_G_HAVE_ST_BLKSIZE defined (_STATBUF_ST_BLKSIZE)"
.LASF304:
	.string	"__flexarr []"
.LASF538:
	.string	"_IO_cleanup_region_end(_Doit) "
.LASF103:
	.string	"__UINT8_C(c) c"
.LASF481:
	.string	"_IOS_BIN 128"
.LASF323:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF497:
	.string	"_IO_IS_APPENDING 0x1000"
.LASF148:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308085e-16L)"
.LASF310:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF489:
	.string	"_IO_EOF_SEEN 0x10"
.LASF544:
	.string	"SEEK_CUR 1"
.LASF554:
	.string	"getc(_fp) _IO_getc (_fp)"
.LASF141:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF113:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF67:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF552:
	.string	"stdout stdout"
.LASF381:
	.string	"__S16_TYPE short int"
.LASF435:
	.string	"__need_FILE "
.LASF213:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF271:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF361:
	.string	"_SIZE_T "
.LASF515:
	.string	"_IO_SCIENTIFIC 04000"
.LASF449:
	.string	"_G_HAVE_MMAP 1"
.LASF161:
	.string	"__LDBL_MIN__ 3.36210314311209350626e-4932L"
.LASF473:
	.string	"EOF (-1)"
.LASF488:
	.string	"_IO_NO_WRITES 8"
.LASF3:
	.string	"__GNUC_MINOR__ 4"
.LASF410:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF373:
	.string	"_GCC_SIZE_T "
.LASF93:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF559:
	.string	"unsigned int"
.LASF277:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF388:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF18:
	.string	"__SIZEOF_SHORT__ 2"
.LASF358:
	.string	"__need_NULL "
.LASF447:
	.string	"__need_wint_t"
.LASF22:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF2:
	.string	"__GNUC__ 5"
.LASF26:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF494:
	.string	"_IO_LINE_BUF 0x200"
.LASF356:
	.string	"__stub_stty "
.LASF43:
	.string	"__INT64_TYPE__ long int"
.LASF109:
	.string	"__UINT64_C(c) c ## UL"
.LASF273:
	.string	"__GNU_LIBRARY__"
.LASF139:
	.string	"__DBL_MANT_DIG__ 53"
.LASF138:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF399:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF71:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF9:
	.string	"__ATOMIC_RELEASE 3"
.LASF539:
	.string	"_IOFBF 0"
.LASF433:
	.string	"__FD_SETSIZE 1024"
.LASF41:
	.string	"__INT16_TYPE__ short int"
.LASF172:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF371:
	.string	"_SIZE_T_DECLARED "
.LASF430:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF154:
	.string	"__LDBL_DIG__ 18"
.LASF293:
	.string	"__BEGIN_NAMESPACE_STD "
.LASF7:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF242:
	.string	"__STDC_ISO_10646__ 201505L"
.LASF295:
	.string	"__USING_NAMESPACE_STD(name) "
.LASF47:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF112:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF48:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF54:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF205:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF383:
	.string	"__S32_TYPE int"
.LASF62:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF243:
	.string	"__STDC_NO_THREADS__ 1"
.LASF28:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF362:
	.string	"_SYS_SIZE_T_H "
.LASF150:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF51:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF75:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF61:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF427:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF132:
	.string	"__FLT_MAX__ 3.40282346638528859812e+38F"
.LASF55:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF69:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF56:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF149:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544177e-324L)"
.LASF256:
	.string	"__USE_UNIX98"
.LASF272:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF520:
	.string	"_IO_BOOLALPHA 0200000"
.LASF238:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF211:
	.string	"__SIZEOF_INT128__ 16"
.LASF284:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF476:
	.string	"_IOS_ATEND 4"
.LASF95:
	.string	"__INT8_C(c) c"
.LASF364:
	.string	"_T_SIZE "
.LASF542:
	.string	"BUFSIZ _IO_BUFSIZ"
.LASF50:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF282:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF428:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF363:
	.string	"_T_SIZE_ "
.LASF531:
	.string	"_IO_ferror_unlocked(__fp) (((__fp)->_flags & _IO_ERR_SEEN) != 0)"
.LASF370:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF330:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF420:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF405:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF236:
	.string	"__unix__ 1"
.LASF320:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF188:
	.string	"__REGISTER_PREFIX__ "
.LASF332:
	.string	"_Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]"
.LASF367:
	.string	"_BSD_SIZE_T_ "
.LASF353:
	.string	"__stub_setlogin "
.LASF126:
	.string	"__FLT_DIG__ 6"
.LASF194:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF83:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF244:
	.string	"_STDIO_H 1"
.LASF147:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309e-308L)"
.LASF119:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF80:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF120:
	.string	"__GCC_IEC_559 2"
.LASF283:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF162:
	.string	"__LDBL_EPSILON__ 1.08420217248550443401e-19L"
.LASF104:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF117:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF314:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF102:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF182:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF270:
	.string	"__KERNEL_STRICT_NAMES "
.LASF33:
	.string	"__WCHAR_TYPE__ int"
.LASF86:
	.string	"__INT8_MAX__ 0x7f"
.LASF195:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF253:
	.string	"__USE_POSIX199506"
.LASF246:
	.string	"__USE_ISOC11"
.LASF124:
	.string	"__FLT_RADIX__ 2"
.LASF462:
	.string	"_IO_iconv_t _G_iconv_t"
.LASF286:
	.string	"__PMT(args) args"
.LASF401:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF21:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF152:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF380:
	.string	"_BITS_TYPES_H 1"
.LASF409:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF114:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF222:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF466:
	.string	"_IO_wint_t wint_t"
.LASF157:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF35:
	.string	"__INTMAX_TYPE__ long int"
.LASF349:
	.string	"__stub_gtty "
.LASF485:
	.string	"_IO_USER_BUF 1"
.LASF421:
	.string	"__USECONDS_T_TYPE __U32_TYPE"
.LASF64:
	.string	"__INTPTR_TYPE__ long int"
.LASF178:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF135:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092e-45F"
.LASF203:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF226:
	.string	"__MMX__ 1"
.LASF412:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF511:
	.string	"_IO_SHOWBASE 0200"
.LASF160:
	.string	"__LDBL_MAX__ 1.18973149535723176502e+4932L"
.LASF506:
	.string	"_IO_RIGHT 04"
.LASF382:
	.string	"__U16_TYPE unsigned short int"
.LASF25:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF167:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF214:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF181:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF438:
	.string	"__need_FILE"
.LASF42:
	.string	"__INT32_TYPE__ int"
.LASF309:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF384:
	.string	"__U32_TYPE unsigned int"
.LASF342:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF248:
	.string	"__USE_ISOC95"
.LASF169:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF541:
	.string	"_IONBF 2"
.LASF247:
	.string	"__USE_ISOC99"
.LASF451:
	.string	"_G_IO_IO_FILE_VERSION 0x20001"
.LASF495:
	.string	"_IO_TIED_PUT_GET 0x400"
.LASF241:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF5:
	.string	"__VERSION__ \"5.4.0 20160609\""
.LASF146:
	.string	"__DBL_MAX__ ((double)1.79769313486231570815e+308L)"
.LASF239:
	.string	"_STDC_PREDEF_H 1"
.LASF351:
	.string	"__stub_putmsg "
.LASF84:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF368:
	.string	"_SIZE_T_DEFINED_ "
.LASF291:
	.string	"__BEGIN_DECLS "
.LASF523:
	.string	"_IO_stdin ((_IO_FILE*)(&_IO_2_1_stdin_))"
.LASF377:
	.string	"NULL"
.LASF478:
	.string	"_IOS_TRUNC 16"
.LASF429:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF422:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF545:
	.string	"SEEK_END 2"
.LASF68:
	.string	"__GXX_ABI_VERSION 1009"
.LASF512:
	.string	"_IO_SHOWPOINT 0400"
.LASF533:
	.string	"_IO_peekc(_fp) _IO_peekc_unlocked (_fp)"
.LASF216:
	.string	"__amd64__ 1"
.LASF445:
	.string	"____mbstate_t_defined 1"
.LASF333:
	.string	"__WORDSIZE 64"
.LASF475:
	.string	"_IOS_OUTPUT 2"
.LASF45:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF483:
	.string	"_OLD_STDIO_MAGIC 0xFABC0000"
.LASF479:
	.string	"_IOS_NOCREATE 32"
.LASF225:
	.string	"__code_model_small__ 1"
.LASF198:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF73:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF53:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF130:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF504:
	.string	"_IO_SKIPWS 01"
.LASF378:
	.string	"NULL ((void *)0)"
.LASF319:
	.string	"__nonnull(params) __attribute__ ((__nonnull__ params))"
.LASF530:
	.string	"_IO_feof_unlocked(__fp) (((__fp)->_flags & _IO_EOF_SEEN) != 0)"
.LASF191:
	.string	"__NO_INLINE__ 1"
.LASF525:
	.string	"_IO_stderr ((_IO_FILE*)(&_IO_2_1_stderr_))"
.LASF345:
	.string	"__stub_fattach "
.LASF325:
	.string	"__extern_always_inline extern __always_inline"
.LASF125:
	.string	"__FLT_MANT_DIG__ 24"
.LASF189:
	.string	"__USER_LABEL_PREFIX__ "
.LASF290:
	.string	"__long_double_t long double"
.LASF220:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF306:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF31:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF446:
	.string	"__need_mbstate_t"
.LASF123:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF289:
	.string	"__ptr_t void *"
.LASF461:
	.string	"_IO_uid_t __uid_t"
.LASF142:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF564:
	.string	"char"
.LASF509:
	.string	"_IO_OCT 040"
.LASF156:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF89:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF463:
	.string	"_IO_HAVE_ST_BLKSIZE _G_HAVE_ST_BLKSIZE"
.LASF294:
	.string	"__END_NAMESPACE_STD "
.LASF122:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF218:
	.string	"__x86_64__ 1"
.LASF81:
	.string	"__INTMAX_C(c) c ## L"
.LASF305:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF415:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF233:
	.string	"__linux 1"
.LASF459:
	.string	"_IO_off64_t __off64_t"
.LASF418:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF535:
	.string	"_IO_funlockfile(_fp) "
.LASF424:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF6:
	.string	"__ATOMIC_RELAXED 0"
.LASF100:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF327:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF338:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF90:
	.string	"__UINT8_MAX__ 0xff"
.LASF502:
	.string	"_IO_FLAGS2_NOTCANCEL 2"
.LASF322:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF91:
	.string	"__UINT16_MAX__ 0xffff"
.LASF482:
	.string	"_IO_MAGIC 0xFBAD0000"
.LASF321:
	.string	"__wur "
.LASF59:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF551:
	.string	"stdin stdin"
.LASF296:
	.string	"__BEGIN_NAMESPACE_C99 "
.LASF92:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF396:
	.string	"_BITS_TYPESIZES_H 1"
.LASF171:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF537:
	.string	"_IO_cleanup_region_start(_fct,_fp) "
.LASF78:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF252:
	.string	"__USE_POSIX199309"
.LASF49:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF232:
	.string	"__gnu_linux__ 1"
.LASF395:
	.string	"__STD_TYPE typedef"
.LASF404:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF257:
	.string	"__USE_XOPEN2K"
.LASF140:
	.string	"__DBL_DIG__ 15"
.LASF199:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF278:
	.string	"_SYS_CDEFS_H 1"
.LASF442:
	.string	"_IO_STDIO_H "
.LASF14:
	.string	"__LP64__ 1"
.LASF204:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF313:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF339:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF13:
	.string	"_LP64 1"
.LASF245:
	.string	"_FEATURES_H 1"
.LASF406:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF385:
	.string	"__SLONGWORD_TYPE long int"
.LASF217:
	.string	"__x86_64 1"
.LASF23:
	.string	"__CHAR_BIT__ 8"
.LASF197:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF116:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF12:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF298:
	.string	"__USING_NAMESPACE_C99(name) "
.LASF133:
	.string	"__FLT_MIN__ 1.17549435082228750797e-38F"
.LASF521:
	.string	"_IO_file_flags _flags"
.LASF328:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF522:
	.string	"__HAVE_COLUMN "
.LASF474:
	.string	"_IOS_INPUT 1"
.LASF555:
	.string	"putc(_ch,_fp) _IO_putc (_ch, _fp)"
.LASF108:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF279:
	.string	"__PMT"
.LASF280:
	.string	"__LEAF , __leaf__"
.LASF287:
	.string	"__CONCAT(x,y) x ## y"
.LASF65:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF97:
	.string	"__INT16_C(c) c"
.LASF96:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF19:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF173:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF137:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF434:
	.string	"__STD_TYPE"
.LASF163:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L"
.LASF456:
	.string	"_IO_size_t size_t"
.LASF403:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF274:
	.string	"__GNU_LIBRARY__ 6"
.LASF0:
	.string	"__STDC__ 1"
.LASF228:
	.string	"__SSE2__ 1"
.LASF565:
	.string	"GNU C89 5.4.0 20160609 -mtune=generic -march=x86-64 -g3 -ansi -fstack-protector-strong"
.LASF143:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF16:
	.string	"__SIZEOF_LONG__ 8"
.LASF11:
	.string	"__ATOMIC_CONSUME 1"
.LASF501:
	.string	"_IO_FLAGS2_MMAP 1"
.LASF360:
	.string	"__SIZE_T__ "
.LASF34:
	.string	"__WINT_TYPE__ unsigned int"
.LASF87:
	.string	"__INT16_MAX__ 0x7fff"
.LASF107:
	.string	"__UINT32_C(c) c ## U"
.LASF58:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF441:
	.string	"_STDIO_USES_IOSTREAM "
.LASF20:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF4:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF413:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF518:
	.string	"_IO_STDIO 040000"
.LASF77:
	.string	"__WINT_MIN__ 0U"
.LASF331:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF543:
	.string	"SEEK_SET 0"
.LASF414:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF346:
	.string	"__stub_fchflags "
.LASF300:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF439:
	.string	"____FILE_defined 1"
.LASF165:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF432:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF121:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF472:
	.string	"_IO_UNIFIED_JUMPTABLES 1"
.LASF493:
	.string	"_IO_IN_BACKUP 0x100"
.LASF534:
	.string	"_IO_flockfile(_fp) "
.LASF212:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF316:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF85:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF29:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF317:
	.string	"__attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))"
.LASF450:
	.string	"_G_HAVE_MREMAP 1"
.LASF276:
	.string	"__GLIBC_MINOR__ 23"
.LASF263:
	.string	"__USE_FILE_OFFSET64"
.LASF115:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF468:
	.string	"__need___va_list"
.LASF88:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF507:
	.string	"_IO_INTERNAL 010"
.LASF372:
	.string	"___int_size_t_h "
.LASF8:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF105:
	.string	"__UINT16_C(c) c"
.LASF350:
	.string	"__stub_lchmod "
.LASF357:
	.string	"__need_size_t "
.LASF299:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF265:
	.string	"__USE_ATFILE"
.LASF230:
	.string	"__SSE_MATH__ 1"
.LASF36:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF193:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF376:
	.string	"__need_size_t"
.LASF390:
	.string	"__UWORD_TYPE unsigned long int"
.LASF183:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF505:
	.string	"_IO_LEFT 02"
.LASF326:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF268:
	.string	"__USE_FORTIFY_LEVEL"
.LASF492:
	.string	"_IO_LINKED 0x80"
.LASF70:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF201:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF532:
	.string	"_IO_PENDING_OUTPUT_COUNT(_fp) ((_fp)->_IO_write_ptr - (_fp)->_IO_write_base)"
.LASF500:
	.string	"_IO_USER_LOCK 0x8000"
.LASF27:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF444:
	.string	"__need_mbstate_t "
.LASF547:
	.string	"TMP_MAX 238328"
.LASF131:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF301:
	.string	"__warndecl(name,msg) extern void name (void) __attribute__((__warning__ (msg)))"
.LASF540:
	.string	"_IOLBF 1"
.LASF288:
	.string	"__STRING(x) #x"
.LASF437:
	.string	"__FILE_defined 1"
.LASF155:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF186:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF469:
	.string	"__GNUC_VA_LIST "
.LASF110:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF15:
	.string	"__SIZEOF_INT__ 4"
.LASF536:
	.string	"_IO_ftrylockfile(_fp) "
.LASF389:
	.string	"__SWORD_TYPE long int"
.LASF561:
	.string	"short int"
.LASF72:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF348:
	.string	"__stub_getmsg "
.LASF176:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF562:
	.string	"long int"
.LASF517:
	.string	"_IO_UNITBUF 020000"
.LASF407:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF251:
	.string	"__USE_POSIX2"
.LASF38:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF379:
	.string	"__need_NULL"
.LASF190:
	.string	"__GNUC_GNU_INLINE__ 1"
.LASF184:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF527:
	.string	"_IO_getc_unlocked(_fp) (_IO_BE ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end, 0) ? __uflow (_fp) : *(unsigned char *) (_fp)->_IO_read_ptr++)"
.LASF402:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF60:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF99:
	.string	"__INT32_C(c) c"
.LASF417:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF166:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF40:
	.string	"__INT8_TYPE__ signed char"
.LASF76:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF484:
	.string	"_IO_MAGIC_MASK 0xFFFF0000"
.LASF460:
	.string	"_IO_pid_t __pid_t"
.LASF453:
	.string	"_G_BUFSIZ 8192"
.LASF336:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF267:
	.string	"__USE_REENTRANT"
.LASF490:
	.string	"_IO_ERR_SEEN 0x20"
.LASF46:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF355:
	.string	"__stub_sstk "
.LASF259:
	.string	"__USE_XOPEN2K8"
.LASF513:
	.string	"_IO_UPPERCASE 01000"
.LASF170:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF548:
	.string	"FILENAME_MAX 4096"
.LASF254:
	.string	"__USE_XOPEN"
.LASF436:
	.string	"__need___FILE "
.LASF550:
	.string	"FOPEN_MAX 16"
.LASF510:
	.string	"_IO_HEX 0100"
.LASF17:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF44:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF375:
	.string	"__size_t "
.LASF231:
	.string	"__SSE2_MATH__ 1"
.LASF393:
	.string	"__S64_TYPE long int"
.LASF312:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF546:
	.string	"L_tmpnam 20"
.LASF264:
	.string	"__USE_MISC"
.LASF499:
	.string	"_IO_BAD_SEEN 0x4000"
.LASF297:
	.string	"__END_NAMESPACE_C99 "
.LASF30:
	.string	"__SIZEOF_POINTER__ 8"
.LASF465:
	.string	"_IO_va_list _G_va_list"
.LASF423:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF74:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF467:
	.string	"__need___va_list "
.LASF302:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF369:
	.string	"_SIZE_T_DEFINED "
.LASF443:
	.string	"_G_config_h 1"
.LASF207:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF343:
	.string	"__stub___compat_bdflush "
.LASF549:
	.string	"FOPEN_MAX"
.LASF392:
	.string	"__ULONG32_TYPE unsigned int"
.LASF408:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF563:
	.string	"sizetype"
.LASF524:
	.string	"_IO_stdout ((_IO_FILE*)(&_IO_2_1_stdout_))"
.LASF354:
	.string	"__stub_sigreturn "
.LASF556:
	.string	"long unsigned int"
.LASF416:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF200:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF344:
	.string	"__stub_chflags "
.LASF235:
	.string	"__unix 1"
.LASF486:
	.string	"_IO_UNBUFFERED 2"
.LASF419:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF221:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF457:
	.string	"_IO_ssize_t __ssize_t"
.LASF1:
	.string	"__STDC_HOSTED__ 1"
.LASF341:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF66:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF528:
	.string	"_IO_peekc_unlocked(_fp) (_IO_BE ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end, 0) && __underflow (_fp) == EOF ? EOF : *(unsigned char *) (_fp)->_IO_read_ptr)"
.LASF508:
	.string	"_IO_DEC 020"
.LASF285:
	.string	"__P(args) args"
.LASF454:
	.string	"_IO_fpos_t _G_fpos_t"
.LASF387:
	.string	"__SQUAD_TYPE long int"
.LASF258:
	.string	"__USE_XOPEN2KXSI"
.LASF311:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF94:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF223:
	.string	"__k8 1"
.LASF37:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF275:
	.string	"__GLIBC__ 2"
.LASF129:
	.string	"__FLT_MAX_EXP__ 128"
.LASF329:
	.string	"__restrict_arr __restrict"
.LASF10:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF491:
	.string	"_IO_DELETE_DONT_CLOSE 0x40"
.LASF318:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF557:
	.string	"unsigned char"
.LASF516:
	.string	"_IO_FIXED 010000"
.LASF567:
	.string	"/home/stepan/Documents/Task0/project"
.LASF394:
	.string	"__U64_TYPE unsigned long int"
.LASF503:
	.string	"_IO_FLAGS2_USER_WBUF 8"
.LASF266:
	.string	"__USE_GNU"
.LASF229:
	.string	"__FXSR__ 1"
.LASF281:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF52:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF82:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF79:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF458:
	.string	"_IO_off_t __off_t"
.LASF397:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF168:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF529:
	.string	"_IO_putc_unlocked(_ch,_fp) (_IO_BE ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end, 0) ? __overflow (_fp, (unsigned char) (_ch)) : (unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))"
.LASF134:
	.string	"__FLT_EPSILON__ 1.19209289550781250000e-7F"
.LASF519:
	.string	"_IO_DONT_CLOSE 0100000"
.LASF224:
	.string	"__k8__ 1"
.LASF400:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF386:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF153:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF202:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF255:
	.string	"__USE_XOPEN_EXTENDED"
.LASF111:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF262:
	.string	"__USE_LARGEFILE64"
.LASF455:
	.string	"_IO_fpos64_t _G_fpos64_t"
.LASF151:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF101:
	.string	"__INT64_C(c) c ## L"
.LASF208:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF292:
	.string	"__END_DECLS "
.LASF260:
	.string	"__USE_XOPEN2K8XSI"
.LASF32:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF57:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF240:
	.string	"__STDC_IEC_559__ 1"
.LASF187:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF315:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF440:
	.string	"__need___FILE"
.LASF261:
	.string	"__USE_LARGEFILE"
.LASF560:
	.string	"signed char"
.LASF219:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF464:
	.string	"_IO_BUFSIZ _G_BUFSIZ"
.LASF144:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF337:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF558:
	.string	"short unsigned int"
.LASF227:
	.string	"__SSE__ 1"
.LASF487:
	.string	"_IO_NO_READS 4"
.LASF24:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF374:
	.string	"_SIZET_ "
.LASF347:
	.string	"__stub_fdetach "
.LASF365:
	.string	"__SIZE_T "
.LASF352:
	.string	"__stub_revoke "
.LASF127:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF210:
	.string	"__SSP_STRONG__ 3"
.LASF185:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF237:
	.string	"__ELF__ 1"
.LASF514:
	.string	"_IO_SHOWPOS 02000"
.LASF303:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF192:
	.string	"__STRICT_ANSI__ 1"
.LASF106:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF526:
	.string	"_IO_BE(expr,res) __builtin_expect ((expr), res)"
.LASF308:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF215:
	.string	"__amd64 1"
.LASF470:
	.string	"_IO_va_list"
.LASF234:
	.string	"__linux__ 1"
.LASF334:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF480:
	.string	"_IOS_NOREPLACE 64"
.LASF448:
	.string	"_G_va_list __gnuc_va_list"
.LASF98:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF63:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF426:
	.string	"__TIMER_T_TYPE void *"
.LASF269:
	.string	"__KERNEL_STRICT_NAMES"
.LASF158:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF177:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF471:
	.string	"_IO_va_list __gnuc_va_list"
.LASF477:
	.string	"_IOS_APPEND 8"
.LASF209:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF39:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF391:
	.string	"__SLONG32_TYPE int"
.LASF250:
	.string	"__USE_POSIX"
.LASF196:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF496:
	.string	"_IO_CURRENTLY_PUTTING 0x800"
.LASF335:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF164:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF411:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF359:
	.string	"__size_t__ "
.LASF174:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF136:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF340:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF159:
	.string	"__DECIMAL_DIG__ 21"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
