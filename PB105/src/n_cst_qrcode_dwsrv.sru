$PBExportHeader$n_cst_qrcode_dwsrv.sru
forward
global type n_cst_qrcode_dwsrv from nonvisualobject
end type
end forward

global type n_cst_qrcode_dwsrv from nonvisualobject
end type
global n_cst_qrcode_dwsrv n_cst_qrcode_dwsrv

type variables
Private:
n_cst_qrcoder		inv_qrcoder
datawindow			idw_requestor

end variables
forward prototypes
public subroutine of_setrequestor (datawindow adw_requestor)
public function long of_render (string as_text, long al_blocksizeinpixel) throws throwable
end prototypes

public subroutine of_setrequestor (datawindow adw_requestor);//====================================================================
// Function: n_cst_qrcode_dwsrv.of_setrequestor()
//--------------------------------------------------------------------
// Description: Initialize Requestor
//--------------------------------------------------------------------
// Arguments:
// 	value	datawindow	adw_requestor	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode_dwsrv.of_setrequestor ( datawindow adw_requestor )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


idw_requestor = adw_requestor
end subroutine

public function long of_render (string as_text, long al_blocksizeinpixel) throws throwable;//====================================================================
// Function: n_cst_qrcode_dwsrv.of_render()
//--------------------------------------------------------------------
// Description: Renders the QR Code
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_text            	
// 	value	long  	al_blocksizeinpixel	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode_dwsrv.of_render ( string as_text, long al_blocksizeinpixel )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long					ll_size, ll_x, ll_y
String				ls_modify
n_cst_qrcode		lnv_qrcode
s_bitarray			lstra_modulMatrix[]

lnv_qrcode = inv_qrcoder.of_createQrCode(as_text, n_cst_qrcoder.ECCLEVEL_M)

ll_size = lnv_qrcode.of_getModulMatrix(Ref lstra_modulMatrix)

For ll_x = 1 To ll_size
	For ll_y = 1 To ll_size
		If lstra_modulMatrix[ll_y].bits[ll_x] Then
			ls_modify += &
				" create rectangle(band=detail"  +  &
				" moveable=0 resizeable=0 x='" + String((ll_x -1) * PixelsToUnits(al_blockSizeInPixel, XPixelsToUnits!)) + "' y='" + String((ll_y -1) * PixelsToUnits(al_blockSizeInPixel, YPixelsToUnits!)) + "' height='" + String(PixelsToUnits(al_blockSizeInPixel, YPixelsToUnits!)) + "' width='" + String(PixelsToUnits(al_blockSizeInPixel, XPixelsToUnits!)) + "' name=r_qr_" + String(ll_x) + "_" + String(ll_y) + &
				" background.mode='0' background.color='0')"
		End If
	Next
Next

idw_requestor.SetRedraw(False)
idw_requestor.Modify(ls_modify)
idw_requestor.SetRedraw(True)

Return 1



end function

on n_cst_qrcode_dwsrv.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_qrcode_dwsrv.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;//====================================================================
// Event: n_cst_qrcode_dwsrv.constructor()
//--------------------------------------------------------------------
// Description: Initialization
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode_dwsrv.constructor for n_cst_qrcode_dwsrv
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


inv_qrcoder = Create n_cst_qrcoder

Return 0


end event

event destructor;//====================================================================
// Event: n_cst_qrcode_dwsrv.destructor()
//--------------------------------------------------------------------
// Description: Finalize
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode_dwsrv.destructor for n_cst_qrcode_dwsrv
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Destroy inv_qrcoder

Return 0



end event

