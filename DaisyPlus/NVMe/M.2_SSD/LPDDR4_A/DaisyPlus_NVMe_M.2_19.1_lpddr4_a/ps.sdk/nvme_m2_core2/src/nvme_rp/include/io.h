/*
 * io.h
 *
 *  Created on: 2020. 1. 16.
 *      Author: ProDesk
 */

#ifndef SRC_NVME_INCLUDE_IO_H_
#define SRC_NVME_INCLUDE_IO_H_

#include "xil_io.h"

# define __iomem

#define readl(Address) \
	Xil_In32((UINTPTR) (Address))

#define writel(Data, Address) \
	Xil_Out32((UINTPTR) (Address), (Data))

#define readw(Address) \
	Xil_In16((UINTPTR) (Address))

#define writew(Data, Address) \
	Xil_Out16((UINTPTR) (Address), (Data))

#endif /* SRC_NVME_INCLUDE_IO_H_ */
