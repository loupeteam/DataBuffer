(*
* File: DataBuffer.fun
* Copyright (c) 2023 Loupe
* https://loupe.team
* 
* This file is part of DataBuffer, licensed under the MIT License.
* 
*)

FUNCTION datbufClearBuffer : UINT (*Clear a data buffer. Returns 0 or a DATBUF_ERR_enum value*) (*$GROUP=User*)
	VAR_INPUT
		pBuffer : UDINT; (*Address of an initialized datbufBuffer_typ*)
	END_VAR
END_FUNCTION

FUNCTION datbufInitBuffer : UINT (*Initialize a data buffer and allocate its memory. Call once, in _INIT. Returns 0 or a DATBUF_ERR_enum value*) (*$GROUP=User*)
	VAR_INPUT
		pBuffer : UDINT; (*Address of the datbufBuffer_typ to initialize*)
		maxLength : UDINT; (*Size of the data storage to allocate [bytes]*)
	END_VAR
END_FUNCTION

FUNCTION datbufAppendToBuffer : UINT (*Append data to a data buffer. Returns 0 or a DATBUF_ERR_enum value*) (*$GROUP=User*)
	VAR_INPUT
		pBuffer : UDINT; (*Address of an initialized datbufBuffer_typ*)
		pData : UDINT; (*Address of the data to append*)
		dataLength : UDINT; (*Number of bytes to append [bytes]*)
	END_VAR
END_FUNCTION
