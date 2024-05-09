#include "IIR_Filter.h"

void IIR_Filter(DATA_TYPE x, DATA_TYPE &y)
{
#pragma HLS INTERFACE ap_ctrl_none port = return
#pragma HLS INTERFACE ap_none      port = x
#pragma HLS INTERFACE ap_none      port = y

	static DATA_TYPE xn1 = 0;
	static DATA_TYPE xn2 = 0;

	static DATA_TYPE yn1 = 0;
	static DATA_TYPE yn2 = 0;

	DATA_TYPE xn = x;
	DATA_TYPE yn;

	yn = b0*xn  + b1*xn1 + b2*xn2 - a1*yn1 - a2*yn2;

	xn2 = xn1;
	xn1 = xn;

	yn2 = yn1;
	yn1 = yn;

	y = yn;
}
