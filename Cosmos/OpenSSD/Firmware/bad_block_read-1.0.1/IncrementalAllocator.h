#ifndef INCREMENTALALLOCATOR_H_
#define INCREMENTALALLOCATOR_H_

#include "TBasis.h"

class IncrementalAllocator
{
public:
	void Initialize(Byte* pool, UInt32 poolSize);

	Byte* Allocate(UInt32 size);

private:
	Byte* pool;
	UInt32 poolSize;
	UInt32 allocationCursor;
};

extern IncrementalAllocator Memory;

#endif
