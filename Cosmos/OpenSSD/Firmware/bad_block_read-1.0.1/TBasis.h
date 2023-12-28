#ifndef __TBASIS__
#define __TBASIS__

typedef char SByte;
typedef unsigned char Byte;

typedef char Int8;
typedef short Int16;
typedef int Int32;
typedef long long Int64;

typedef unsigned char UInt8;
typedef unsigned short UInt16;
typedef unsigned int UInt32;
typedef unsigned long long UInt64;

typedef char Char8;
typedef wchar_t Char;

typedef Byte Boolean;

#define True (1)
#define False (0)

typedef void* Handle;
typedef Byte* Address;

typedef float Float;
typedef double Double;

#define Null 0

#define interface struct
#define constlist struct
#define constant const static

typedef Float Decimal;

#endif
