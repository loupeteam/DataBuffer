/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Library: DataBuffer
 * File: datbufClearBuffer.c
 * Author: davidblackburn
 * Created: June 23, 2014
 ********************************************************************
 * Implementation of library DataBuffer
 ********************************************************************/

#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif

	#include "DataBuffer.h"

#ifdef __cplusplus
	};
#endif


#include <string.h>


/********************************************************************/
/* Clear a data buffer 												*/
/********************************************************************/


// Check null pointer		DONE and TESTED DFB 20140624
// Check initialized		DONE and TESTED DFB 20140624
// Clear buffer				DONE and TESTED DFB 20140624


unsigned short datbufClearBuffer(unsigned long pBuffer)
{


// Check for invalid inputs

if( pBuffer == 0 ) return DATBUF_ERR_INVALIDINPUT;
datbufBuffer_typ *buffer = (datbufBuffer_typ*)pBuffer;
if( buffer->pData == 0 ) return DATBUF_ERR_NOTINITIALIZED;


// Clear buffer

buffer->currentLength=	0;
memset( (void*)buffer->pData, 0, buffer->maxLength );

return 0;


} // End Fn //
