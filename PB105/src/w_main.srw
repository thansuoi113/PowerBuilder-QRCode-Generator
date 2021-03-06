$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type st_2 from statictext within w_main
end type
type st_1 from statictext within w_main
end type
type dw_1 from datawindow within w_main
end type
type sle_blocksize from singlelineedit within w_main
end type
type sle_text from singlelineedit within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 2002
integer height = 1480
boolean titlebar = true
string title = "PowerBuilder QRCode Generator"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_2 st_2
st_1 st_1
dw_1 dw_1
sle_blocksize sle_blocksize
sle_text sle_text
cb_1 cb_1
end type
global w_main w_main

type variables
private:

n_cst_qrcode_dwsrv	inv_qrcode_dwsrv
end variables

on w_main.create
this.st_2=create st_2
this.st_1=create st_1
this.dw_1=create dw_1
this.sle_blocksize=create sle_blocksize
this.sle_text=create sle_text
this.cb_1=create cb_1
this.Control[]={this.st_2,&
this.st_1,&
this.dw_1,&
this.sle_blocksize,&
this.sle_text,&
this.cb_1}
end on

on w_main.destroy
destroy(this.st_2)
destroy(this.st_1)
destroy(this.dw_1)
destroy(this.sle_blocksize)
destroy(this.sle_text)
destroy(this.cb_1)
end on

type st_2 from statictext within w_main
integer x = 82
integer y = 44
integer width = 297
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Text:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_main
integer x = 82
integer y = 156
integer width = 297
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Blocksize:"
alignment alignment = right!
boolean focusrectangle = false
end type

type dw_1 from datawindow within w_main
integer x = 59
integer y = 292
integer width = 1870
integer height = 1024
integer taborder = 20
string title = "none"
string dataobject = "d_test"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;insertRow(0)

inv_qrcode_dwsrv = create n_cst_qrcode_dwsrv
inv_qrcode_dwsrv.of_setRequestor(this)

return 0
end event

event destructor;destroy inv_qrcode_dwsrv

return 0
end event

type sle_blocksize from singlelineedit within w_main
integer x = 379
integer y = 144
integer width = 283
integer height = 88
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "5"
borderstyle borderstyle = stylelowered!
boolean righttoleft = true
end type

type sle_text from singlelineedit within w_main
integer x = 379
integer y = 40
integer width = 1541
integer height = 88
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "https://programmingmethodsit.com"
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_main
integer x = 1591
integer y = 140
integer width = 334
integer height = 104
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Generator"
end type

event clicked;dw_1.dataobject = "d_test"
dw_1.insertRow(0)

try
	inv_qrcode_dwsrv.of_render(sle_text.text, long(sle_blocksize.text))
catch (Throwable exp)
	MessageBox("Error", exp.getMessage())
end try
end event

