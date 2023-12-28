#include "IncrementalAllocator.h"

IncrementalAllocator Memory;

void IncrementalAllocator::Initialize(Byte* pool, UInt32 poolSize)
{
	this->pool = pool;
	this->poolSize = poolSize;
	this->allocationCursor = 0;
}

Byte* IncrementalAllocator::Allocate(UInt32 size)
{
	Byte* allocation = 0;
	if (allocationCursor + size <= poolSize)
	{
		allocation = (pool + allocationCursor);
		allocationCursor += size;
	}

	return allocation;
}
