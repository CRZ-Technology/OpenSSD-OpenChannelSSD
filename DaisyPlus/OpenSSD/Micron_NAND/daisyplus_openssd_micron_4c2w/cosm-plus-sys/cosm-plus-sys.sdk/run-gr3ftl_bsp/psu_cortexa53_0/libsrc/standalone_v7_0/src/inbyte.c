#include "xparameters.h"
#include "xcoresightpsdcc.h"

#ifdef __cplusplus
extern "C" {
#endif
char inbyte(void);
#ifdef __cplusplus
}
#endif 

char inbyte(void) {
	 return XCoresightPs_DccRecvByte(STDIN_BASEADDRESS);
}
