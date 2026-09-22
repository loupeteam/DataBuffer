(*
* File: DataBuffer.typ
* Copyright (c) 2023 Loupe
* https://loupe.team
* 
* This file is part of DataBuffer, licensed under the MIT License.
* 
*)

TYPE
	DATBUF_ERR_enum : (*Status values returned by the DataBuffer functions*)
		(
		DATBUF_ERR_INVALIDINPUT := 50000, (*A required address is 0, or maxLength is 0*)
		DATBUF_ERR_MEMALLOC, (*Memory for the buffer could not be allocated*)
		DATBUF_ERR_NOTINITIALIZED, (*Buffer has not been initialized with datbufInitBuffer*)
		DATBUF_ERR_BUFFERFULL (*Data did not fit in the buffer. The part that fit was appended*)
		);
	datbufBuffer_typ : 	STRUCT  (*Data buffer. Members are maintained by the library*)
		pData : UDINT; (*Address of the data storage. 0 until initialized*)
		currentLength : UDINT; (*Number of bytes of data currently in the buffer [bytes]*)
		maxLength : UDINT; (*Size of the data storage [bytes]*)
	END_STRUCT;
END_TYPE
