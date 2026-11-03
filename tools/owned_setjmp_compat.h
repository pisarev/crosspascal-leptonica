/* Copyright (C) 2026 Yuriy Pisarev. MIT license; see LICENSE. */
/* Owner-authored isolated Win64 msvcrt ABI overlay. NOT a vendor header. */
#ifndef CROSSLEPT_OWNED_SETJMP_COMPAT_007_H
#define CROSSLEPT_OWNED_SETJMP_COMPAT_007_H
#include <setjmp.h>
/* The frozen MinGW-W64 setjmp.h declares _setjmp(jmp_buf, void*) when
 * USE_NO_MINGW_SETJMP_TWO_ARGS is UNDEFINED. Preserve that declaration;
 * replace only the setjmp invocation in the explicitly chosen translation
 * unit. Never wrap setjmp in a helper that returns before longjmp. */
#if !defined(_WIN64) || !defined(__SEH__) || defined(USE_NO_MINGW_SETJMP_TWO_ARGS)
#error compatibility overlay requires pinned x64 SEH and two-argument prototype
#endif
#undef setjmp
#define setjmp(BUF) _setjmp((BUF), (void *)0)
#endif
