#include "xparameters.h"
#include "xcoresightpsdcc.h"

#ifdef __cplusplus
extern "C" {
#endif
void outbyte(char c); 

#ifdef __cplusplus
}
#endif 

void outbyte(char c) {
	 XCoresightPs_DccSendByte(STDOUT_BASEADDRESS, c);
}
