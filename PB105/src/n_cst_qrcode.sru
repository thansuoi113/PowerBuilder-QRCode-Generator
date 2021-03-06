$PBExportHeader$n_cst_qrcode.sru
forward
global type n_cst_qrcode from nonvisualobject
end type
end forward

global type n_cst_qrcode from nonvisualobject
end type
global n_cst_qrcode n_cst_qrcode

type variables
Private:

Long				il_version
s_qr_rectangle	istra_blockedModules[]

Public:

s_bitarray		istra_moduleMatrix[]

end variables
forward prototypes
public subroutine of_placefinderpatterns ()
public subroutine of_reserveseperatorareas ()
public subroutine of_placetimingpatterns ()
public subroutine of_placedarkmodule ()
public subroutine of_reserveversionareas ()
public subroutine of_placealignmentpatterns (s_point astra_alignment[])
public function boolean of_intersects (s_qr_rectangle astr_rectangle1, s_qr_rectangle astr_rectangle2)
public subroutine of_placedatawords (string as_interleavedata)
public function boolean of_isblocked (s_qr_rectangle astr_rectangle, s_qr_rectangle astra_rectangle[])
public function boolean of_pattern (long al_index, long al_x, long al_y)
public function long of_maskcode ()
public subroutine of_init (long al_version)
public subroutine of_setmodulmatrixvalue (long al_x, long al_y, boolean ab_flag)
public function boolean of_xor (boolean ab_a, boolean ab_b)
public function boolean of_getmodulmatrixvalue (long al_x, long al_y)
public function long of_score (n_cst_qrcode anv_qrcode)
public function string of_dectobin (long al_dec, long al_padleftupto)
public function string of_trimstart (string as_trim, character ac_trimchar)
protected function long of_bitwisexor (long al_value1, long al_value2)
public function boolean of_getbit (long al_decimal, unsignedinteger ai_bit)
public function string of_getformatstring (character ac_ecclevel, long al_maskversion)
public subroutine of_init (long al_version, string as_interleavedata, s_point astra_alignmentpatternlocations[], character ac_ecclevel)
public subroutine of_placeformat (string as_formatstring)
public function string of_getversionstring (long al_version)
public subroutine of_placeversion (string as_versionstring)
public subroutine of_addquietzone ()
public function long of_getmodulmatrix (ref s_bitarray rstra_modulematrix[])
end prototypes

public subroutine of_placefinderpatterns ();//====================================================================
// Function: n_cst_qrcode.of_placefinderpatterns()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_placefinderpatterns ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_size, ll_index, ll_x, ll_y
Long				lla_locations[]
s_qr_rectangle	lstr_rectangle, lstr_empty

ll_size = UpperBound(istra_moduleMatrix)

lla_locations[1] = 0
lla_locations[2] = 0
lla_locations[3] = ll_size -7
lla_locations[4] = 0
lla_locations[5] = 0
lla_locations[6] = ll_size -7

For ll_index = 0 To 5 Step 2
	For ll_x = 0 To 6
		For ll_y = 0 To 6
			If Not (((ll_x = 1 Or ll_x = 5) And ll_y > 0 And ll_y < 6) Or (ll_x > 0 And ll_x < 6 And (ll_y = 1 Or ll_y = 5))) Then
				istra_moduleMatrix[ll_y + lla_locations[ll_index +2] +1].bits[ll_x + lla_locations[ll_index+1] +1] = True
			End If
		Next
	Next
	lstr_rectangle = lstr_empty
	lstr_rectangle.X = lla_locations[ll_index+1]
	lstr_rectangle.Y = lla_locations[ll_index+2]
	lstr_rectangle.Width = 7
	lstr_rectangle.Height = 7
	istra_blockedModules[UpperBound(istra_blockedModules) +1] = lstr_rectangle
Next

end subroutine

public subroutine of_reserveseperatorareas ();//====================================================================
// Function: n_cst_qrcode.of_reserveseperatorareas()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_reserveseperatorareas ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long					ll_index, ll_size
s_qr_rectangle 	lstr_rectangle, lstr_empty

ll_size = UpperBound(istra_moduleMatrix)
ll_index = UpperBound(istra_blockedModules)

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = 7
lstr_rectangle.Y = 0
lstr_rectangle.Width = 1
lstr_rectangle.Height = 8
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = 0
lstr_rectangle.Y = 7
lstr_rectangle.Width = 7
lstr_rectangle.Height = 1
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = 0
lstr_rectangle.Y = ll_size -8
lstr_rectangle.Width = 8
lstr_rectangle.Height = 1
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = 7
lstr_rectangle.Y = ll_size -7
lstr_rectangle.Width = 1
lstr_rectangle.Height = 7
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = ll_size -8
lstr_rectangle.Y = 0
lstr_rectangle.Width = 1
lstr_rectangle.Height = 8
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = ll_size -7
lstr_rectangle.Y = 7
lstr_rectangle.Width = 7
lstr_rectangle.Height = 1
istra_blockedModules[ll_index] = lstr_rectangle

end subroutine

public subroutine of_placetimingpatterns ();//====================================================================
// Function: n_cst_qrcode.of_placetimingpatterns()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_placetimingpatterns ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 				ll_size, ll_index
s_qr_rectangle	lstr_rectangle, lstr_empty

ll_size = UpperBound(istra_moduleMatrix)
For ll_index = 8 To (ll_size -8)
	If Mod(ll_index, 2) = 0 Then
		istra_moduleMatrix[7].bits[ll_index+1] = True
		istra_moduleMatrix[ll_index+1].bits[7] = True
	End If
Next

lstr_rectangle = lstr_empty
lstr_rectangle.X = 6
lstr_rectangle.Y = 8
lstr_rectangle.Width = 1
lstr_rectangle.Height = ll_size -16
istra_blockedModules[UpperBound(istra_blockedModules) +1] = lstr_rectangle

lstr_rectangle = lstr_empty
lstr_rectangle.X = 8
lstr_rectangle.Y = 6
lstr_rectangle.Width = ll_size -16
lstr_rectangle.Height = 1
istra_blockedModules[UpperBound(istra_blockedModules) +1] = lstr_rectangle

end subroutine

public subroutine of_placedarkmodule ();s_qr_rectangle	lstr_rectangle

istra_moduleMatrix[(4 * il_version) + 10].bits[9] = True

lstr_rectangle.X = 8
lstr_rectangle.Y = 4 * il_version + 9
lstr_rectangle.Width = 1
lstr_rectangle.Height = 1
istra_blockedModules[UpperBound(istra_blockedModules) +1] = lstr_rectangle

end subroutine

public subroutine of_reserveversionareas ();//====================================================================
// Function: n_cst_qrcode.of_reserveversionareas()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_reserveversionareas ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_index, ll_size
s_qr_rectangle	lstr_rectangle, lstr_empty

ll_size = UpperBound(istra_moduleMatrix)
ll_index = UpperBound(istra_blockedModules)

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = 8
lstr_rectangle.Y = 0
lstr_rectangle.Width = 1
lstr_rectangle.Height = 6
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = 8
lstr_rectangle.Y = 7
lstr_rectangle.Width = 1
lstr_rectangle.Height = 1
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = 0
lstr_rectangle.Y = 8
lstr_rectangle.Width = 6
lstr_rectangle.Height = 1
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = 7
lstr_rectangle.Y = 8
lstr_rectangle.Width = 2
lstr_rectangle.Height = 1
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = ll_size -8
lstr_rectangle.Y = 8
lstr_rectangle.Width = 8
lstr_rectangle.Height = 1
istra_blockedModules[ll_index] = lstr_rectangle

ll_index++
lstr_rectangle = lstr_empty
lstr_rectangle.X = 8
lstr_rectangle.Y = ll_size -7
lstr_rectangle.Width = 1
lstr_rectangle.Height = 7
istra_blockedModules[ll_index] = lstr_rectangle

If il_version >= 7 Then
	
	ll_index++
	lstr_rectangle = lstr_empty
	lstr_rectangle.X = ll_size -11
	lstr_rectangle.Y = 0
	lstr_rectangle.Width = 3
	lstr_rectangle.Height = 6
	istra_blockedModules[ll_index] = lstr_rectangle
	
	ll_index++
	lstr_rectangle = lstr_empty
	lstr_rectangle.X = 0
	lstr_rectangle.Y = ll_size -11
	lstr_rectangle.Width = 6
	lstr_rectangle.Height = 3
	istra_blockedModules[ll_index] = lstr_rectangle
End If


end subroutine

public subroutine of_placealignmentpatterns (s_point astra_alignment[]);//====================================================================
// Function: n_cst_qrcode.of_placealignmentpatterns()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	s_point	astra_alignment[]	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_placealignmentpatterns ( s_point astra_alignment[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 				ll_index, ll_count, ll_index2, ll_count2, ll_x, ll_y
Boolean			lb_blocked
s_qr_rectangle	lstr_rectangle, lstr_rectangle2, lstr_empty

ll_count = UpperBound(astra_alignment)
For ll_index = 1 To ll_count
	
	lb_blocked = False
	lstr_rectangle = lstr_empty
	lstr_rectangle.X = astra_alignment[ll_index].X
	lstr_rectangle.Y = astra_alignment[ll_index].Y
	lstr_rectangle.Width = 5
	lstr_rectangle.Height = 5
	
	ll_count2 = UpperBound(istra_blockedModules)
	For ll_index2 = 1 To ll_count2
		If of_intersects(lstr_rectangle, istra_blockedModules[ll_index2]) Then
			lb_blocked = True
			Exit
		End If
	Next
	
	If lb_blocked Then Continue
	
	For ll_x = 0 To 4
		For ll_y = 0 To 4
			If (ll_y = 0 Or ll_y = 4 Or ll_x = 0 Or ll_x = 4 Or (ll_x = 2 And ll_y = 2)) Then
				istra_moduleMatrix[astra_alignment[ll_index].Y + ll_y +1].bits[astra_alignment[ll_index].X + ll_x +1] = True;
			End If
		Next
	Next
	
	lstr_rectangle2 = lstr_empty
	lstr_rectangle2.X = astra_alignment[ll_index].X
	lstr_rectangle2.Y = astra_alignment[ll_index].Y
	lstr_rectangle2.Width = 5
	lstr_rectangle2.Height = 5
	istra_blockedModules[UpperBound(istra_blockedModules) +1] = lstr_rectangle2
Next

end subroutine

public function boolean of_intersects (s_qr_rectangle astr_rectangle1, s_qr_rectangle astr_rectangle2);Return astr_rectangle2.X < astr_rectangle1.X + astr_rectangle1.Width And &
	astr_rectangle1.X < astr_rectangle2.X + astr_rectangle2.Width And &
	astr_rectangle2.Y < astr_rectangle1.Y + astr_rectangle1.Height And &
	astr_rectangle1.Y < astr_rectangle2.Y + astr_rectangle2.Height

end function

public subroutine of_placedatawords (string as_interleavedata);//====================================================================
// Function: n_cst_qrcode.of_placedatawords()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_interleavedata	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_placedatawords ( string as_interleavedata )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_size, ll_len, ll_index, ll_x, ll_y, ll_yMod, ll_dataWordPointer = 1
Boolean			lb_up = True, lba_datawords[]
s_qr_rectangle	lstr_rectangle, lstr_empty

ll_len = Len(as_interleavedata)
For ll_index = ll_len To 1 Step -1
	lba_datawords[ll_index] = Mid(as_interleavedata, ll_index, 1) = "1"
Next

ll_size = UpperBound(istra_moduleMatrix)
For ll_x = (ll_size -1) To 0 Step -2
	If ll_x = 7 Or ll_x = 6 Then
		ll_x = 5
	End If
	
	For ll_yMod = 1 To ll_size
		ll_y = 0
		If lb_up Then
			ll_y = ll_size - ll_yMod
			
			lstr_rectangle = lstr_empty
			lstr_rectangle.X = ll_x
			lstr_rectangle.Y = ll_y
			lstr_rectangle.Width = 1
			lstr_rectangle.Height = 1
			
			If ll_dataWordPointer <= ll_len And (Not of_isBlocked(lstr_rectangle, istra_blockedModules)) Then
				istra_moduleMatrix[ll_y+1].bits[ll_x+1] = lba_datawords[ll_dataWordPointer]
				ll_dataWordPointer++
			End If
			
			lstr_rectangle = lstr_empty
			lstr_rectangle.X = ll_x -1
			lstr_rectangle.Y = ll_y
			lstr_rectangle.Width = 1
			lstr_rectangle.Height = 1
			
			If ll_dataWordPointer <= ll_len And ll_x > 0 And (Not of_isBlocked(lstr_rectangle, istra_blockedModules)) Then
				istra_moduleMatrix[ll_y+1].bits[ll_x] = lba_datawords[ll_dataWordPointer]
				ll_dataWordPointer++
			End If
		Else
			ll_y = ll_yMod -1
			
			lstr_rectangle = lstr_empty
			lstr_rectangle.X = ll_x
			lstr_rectangle.Y = ll_y
			lstr_rectangle.Width = 1
			lstr_rectangle.Height = 1
			
			If ll_dataWordPointer <= ll_len And (Not of_isBlocked(lstr_rectangle, istra_blockedModules)) Then
				istra_moduleMatrix[ll_y+1].bits[ll_x+1] = lba_datawords[ll_dataWordPointer]
				ll_dataWordPointer++
			End If
			
			lstr_rectangle = lstr_empty
			lstr_rectangle.X = ll_x -1
			lstr_rectangle.Y = ll_y
			lstr_rectangle.Width = 1
			lstr_rectangle.Height = 1
			
			If ll_dataWordPointer <= ll_len And ll_x > 0 And (Not of_isBlocked(lstr_rectangle, istra_blockedModules)) Then
				istra_moduleMatrix[ll_y+1].bits[ll_x] = lba_datawords[ll_dataWordPointer]
				ll_dataWordPointer++
			End If
		End If
	Next
	
	lb_up = Not lb_up
Next

end subroutine

public function boolean of_isblocked (s_qr_rectangle astr_rectangle, s_qr_rectangle astra_rectangle[]);//====================================================================
// Function: n_cst_qrcode.of_isblocked()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	s_qr_rectangle	astr_rectangle   	
// 	value	s_qr_rectangle	astra_rectangle[]	
//--------------------------------------------------------------------
// Returns:  boolean
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_isblocked ( s_qr_rectangle astr_rectangle, s_qr_rectangle astra_rectangle[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long		ll_index, ll_count
Boolean	lb_blocked = False

ll_count = UpperBound(astra_rectangle)
For ll_index = 1 To ll_count
	If of_intersects(astra_rectangle[ll_index], astr_rectangle) Then
		lb_blocked = True
	End If
Next

Return lb_blocked

end function

public function boolean of_pattern (long al_index, long al_x, long al_y);//====================================================================
// Function: n_cst_qrcode.of_pattern()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_index	
// 	value	long	al_x    	
// 	value	long	al_y    	
//--------------------------------------------------------------------
// Returns:  boolean
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_pattern ( long al_index, long al_x, long al_y )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Boolean	lb_null

SetNull(lb_null)

If al_index < 1 Or al_index > 8 Then Return lb_null

Choose Case al_index
	Case 1
		Return Mod((al_x + al_y), 2) = 0
	Case 2
		Return Mod(al_y, 2) = 0
	Case 3
		Return Mod(al_y, 3) = 0
	Case 4
		Return Mod(al_x + al_y, 3) = 0
	Case 5
		Return Mod(Long(al_y / 2) + Long(al_x / 3), 2) = 0
	Case 6
		Return (Mod(al_x * al_y, 2) + Mod(al_x * al_y, 3)) = 0
	Case 7
		Return Mod(Mod(al_x * al_y, 2) + Mod(al_x * al_y, 3), 2) = 0
	Case 8
		Return Mod(Mod(al_x + al_y, 2) + Mod(al_x * al_y, 3), 2) = 0
End Choose

Return lb_null


end function

public function long of_maskcode ();//====================================================================
// Function: n_cst_qrcode.of_maskcode()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_maskcode ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_resultPatternScore = 0, ll_size, ll_patternIndex, ll_y, ll_x, ll_score
Long				ll_resultPatternIndex = -1
Boolean			lb_temp
n_cst_qrcode	lnv_qrcodeTemp
s_qr_rectangle	lstr_rectangle, lstr_empty

ll_size = UpperBound(istra_moduleMatrix)
For ll_patternIndex = 1 To 8
	lnv_qrcodeTemp = Create n_cst_qrcode
	lnv_qrcodeTemp.of_init(il_version)
	For ll_y = 1 To ll_size
		For ll_x = 1 To ll_size
			lnv_qrcodeTemp.of_setModulMatrixValue(ll_y, ll_x, istra_moduleMatrix[ll_x].bits[ll_y])
		Next
	Next
	
	For ll_x = 1 To ll_size
		For ll_y = 1 To ll_size
			lstr_rectangle = lstr_empty
			lstr_rectangle.X = ll_x -1
			lstr_rectangle.Y = ll_y -1
			lstr_rectangle.Width = 1
			lstr_rectangle.Height = 1
			
			If Not of_isBlocked(lstr_rectangle, istra_blockedModules) Then
				lb_temp = lnv_qrcodeTemp.of_getModulMatrixValue(ll_y, ll_x)
				lnv_qrcodeTemp.of_setModulMatrixValue(ll_y, ll_x, of_xor(lb_temp, of_pattern(ll_patternIndex, ll_x -1, ll_y -1)))
			End If
		Next
	Next
	
	ll_score = of_score(lnv_qrcodeTemp)
	If ll_resultPatternIndex < 0 Or ll_resultPatternScore > ll_score Then
		ll_resultPatternIndex = ll_patternIndex
		ll_resultPatternScore = ll_score
	End If
Next

For ll_x = 1 To ll_size
	For ll_y = 1 To ll_size
		lstr_rectangle = lstr_empty
		lstr_rectangle.X = ll_x -1
		lstr_rectangle.Y = ll_y -1
		lstr_rectangle.Width = 1
		lstr_rectangle.Height = 1
		
		If Not of_isBlocked(lstr_rectangle, istra_blockedModules) Then
			istra_moduleMatrix[ll_y].bits[ll_x] = of_xor(istra_moduleMatrix[ll_y].bits[ll_x], of_pattern(ll_resultPatternIndex, ll_x -1, ll_y -1))
		End If
	Next
Next

Return ll_resultPatternIndex -1

end function

public subroutine of_init (long al_version);//====================================================================
// Function: n_cst_qrcode.of_init()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_version	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_init ( long al_version )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long	ll_size, ll_index

s_bitarray	lstr_empty

il_version = al_version

ll_size = 21 + (il_version - 1) * 4
istra_moduleMatrix[ll_size] = lstr_empty
For ll_index = 1 To ll_size
	istra_moduleMatrix[ll_index].bits[ll_size] = False
Next

end subroutine

public subroutine of_setmodulmatrixvalue (long al_x, long al_y, boolean ab_flag);istra_moduleMatrix[al_x].bits[al_y] = ab_flag

end subroutine

public function boolean of_xor (boolean ab_a, boolean ab_b);//====================================================================
// Function: n_cst_qrcode.of_xor()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	boolean	ab_a	
// 	value	boolean	ab_b	
//--------------------------------------------------------------------
// Returns:  boolean
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_xor ( boolean ab_a, boolean ab_b )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

If ab_a And ab_b Then
	Return False
End If

If (Not ab_a) And (Not ab_b) Then
	Return False
End If

Return True

end function

public function boolean of_getmodulmatrixvalue (long al_x, long al_y);Return istra_moduleMatrix[al_x].bits[al_y]

end function

public function long of_score (n_cst_qrcode anv_qrcode);//====================================================================
// Function: n_cst_qrcode.of_score()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	n_cst_qrcode	anv_qrcode	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_score ( n_cst_qrcode anv_qrcode )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long		ll_score = 0, ll_size, ll_y, ll_modInRow, ll_modInColumn, ll_x
Long		ll_blackModules, ll_row, ll_bit, ll_percent
Boolean	lb_lastValRow, lb_lastValColumn

ll_size = UpperBound(anv_qrcode.istra_moduleMatrix)
For ll_y = 1 To ll_size
	ll_modInRow = 0
	ll_modInColumn = 0
	lb_lastValRow = anv_qrcode.istra_moduleMatrix[ll_y].bits[1]
	lb_lastValColumn = anv_qrcode.istra_moduleMatrix[1].bits[ll_y]
	
	// Penalty 1
	For ll_x = 1 To ll_size
		If anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x] = lb_lastValRow Then
			ll_modInRow++
		Else
			ll_modInRow = 1
		End If
		
		If ll_modInRow = 5 Then
			ll_score += 3
		ElseIf ll_modInRow > 5 Then
			ll_score++
		End If
		
		lb_lastValRow = anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x]
		
		If anv_qrcode.istra_moduleMatrix[ll_x].bits[ll_y] = lb_lastValColumn Then
			ll_modInColumn++
		Else
			ll_modInColumn = 1
		End If
		
		If ll_modInColumn = 5 Then
			ll_score += 3
		ElseIf ll_modInColumn > 5 Then
			ll_score++
		End If
		
		lb_lastValColumn = anv_qrcode.istra_moduleMatrix[ll_x].bits[ll_y]
	Next
	
	// Workaround: No idea why, but this is needed to prevent of adding an additional row
	If ll_y = ll_size Then Exit
Next

// Penalty 2
For ll_y = 1 To ll_size -1
	For ll_x = 1 To ll_size -1
		If anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x] = anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +1] And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x] = anv_qrcode.istra_moduleMatrix[ll_y +1].bits[ll_x] And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x] = anv_qrcode.istra_moduleMatrix[ll_y +1].bits[ll_x +1] Then
			ll_score += 3
		End If
	Next
Next

// Penalty 3
For ll_y = 1 To ll_size
	For ll_x = 1 To ll_size -10
		If (anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +1]) And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +2] And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +3] And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +4] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +5]) And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +6] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +7]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +8]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +9]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +10])) Or &
			((Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +1]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +2]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +3]) And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +4] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +5]) And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +6] And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +7] And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +8] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +9]) And &
			anv_qrcode.istra_moduleMatrix[ll_y].bits[ll_x +10]) Then
			
			ll_score += 40
		End If
		
		If (anv_qrcode.istra_moduleMatrix[ll_x].bits[ll_y] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +1].bits[ll_y]) And &
			anv_qrcode.istra_moduleMatrix[ll_x +2].bits[ll_y] And &
			anv_qrcode.istra_moduleMatrix[ll_x +3].bits[ll_y] And &
			anv_qrcode.istra_moduleMatrix[ll_x +4].bits[ll_y] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +5].bits[ll_y]) And &
			anv_qrcode.istra_moduleMatrix[ll_x +6].bits[ll_y] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +7].bits[ll_y]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +8].bits[ll_y]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +9].bits[ll_y]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +10].bits[ll_y])) Or &
			((Not anv_qrcode.istra_moduleMatrix[ll_x].bits[ll_y]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +1].bits[ll_y]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +2].bits[ll_y]) And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +3].bits[ll_y]) And &
			anv_qrcode.istra_moduleMatrix[ll_x +4].bits[ll_y] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +5].bits[ll_y]) And &
			anv_qrcode.istra_moduleMatrix[ll_x +6].bits[ll_y] And &
			anv_qrcode.istra_moduleMatrix[ll_x +7].bits[ll_y] And &
			anv_qrcode.istra_moduleMatrix[ll_x +8].bits[ll_y] And &
			(Not anv_qrcode.istra_moduleMatrix[ll_x +9].bits[ll_y]) And &
			anv_qrcode.istra_moduleMatrix[ll_x +10].bits[ll_y]) Then
			
			ll_score += 40
		End If
	Next
	
	// Workaround: No idea why, but this is needed to prevent of adding an additional row
	If ll_y = ll_size Then Exit
Next

//Penalty 4
ll_blackModules = 0
For ll_row = 1 To UpperBound(anv_qrcode.istra_moduleMatrix)
	For ll_bit = 1 To UpperBound(anv_qrcode.istra_moduleMatrix[ll_row].bits)
		If anv_qrcode.istra_moduleMatrix[ll_row].bits[ll_bit] Then
			ll_blackModules++
		End If
	Next
Next

ll_percent = Long(Dec(ll_blackModules) / (UpperBound(anv_qrcode.istra_moduleMatrix) ^2) * 100)
If Mod(ll_percent, 5) = 0 Then
	ll_score += Min(Abs((ll_percent -55) / 5), (Abs((ll_percent -45) / 5)) * 10)
Else
	ll_score += Min(Abs((Truncate(ll_percent / 5, 0) -50) / 5), (Abs((Truncate(ll_percent / 5, 0) + 5) -50) / 5)) * 10
End If

Return ll_score




end function

public function string of_dectobin (long al_dec, long al_padleftupto);//====================================================================
// Function: n_cst_qrcode.of_dectobin()
//--------------------------------------------------------------------
// Description: Converts a decimal number to a binary string
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_dec        	
// 	value	long	al_padleftupto	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_dectobin ( long al_dec, long al_padleftupto )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 		ll_dec, ll_pad, ll_padCount
String	ls_binString

ll_dec = al_dec
Do While ll_dec > 0
	ls_binString = String(Mod(ll_dec, 2)) + ls_binString
	ll_dec /= 2
Loop

If al_padLeftUpTo > 0 And al_padLeftUpTo > Len(ls_binString) Then
	ll_padCount = al_padLeftUpTo - Len(ls_binString)
	For ll_pad = 1 To ll_padCount
		ls_binString = "0" + ls_binString
	Next
End If

Return ls_binString

end function

public function string of_trimstart (string as_trim, character ac_trimchar);//====================================================================
// Function: n_cst_qrcode.of_trimstart()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string   	as_trim    	
// 	value	character	ac_trimchar	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_trimstart ( string as_trim, character ac_trimchar )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long ll_index, ll_len, ll_mid = 1

ll_len = Len(as_trim)
For ll_index = 1 To ll_len
	If Mid(as_trim, ll_index, 1) = ac_trimchar Then
		ll_mid++
	Else
		Exit
	End If
Next

If ll_mid > 1 Then
	Return Mid(as_trim, ll_mid)
Else
	Return as_trim
End If





end function

protected function long of_bitwisexor (long al_value1, long al_value2);//====================================================================
// Function: n_cst_qrcode.of_bitwisexor()
//--------------------------------------------------------------------
// Description: This method combines two value with the XOR operator.
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_value1	
// 	value	long	al_value2	
//--------------------------------------------------------------------
// Returns:  long The XOR value
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_bitwisexor ( long al_value1, long al_value2 )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


Integer     li_Cnt
Long        ll_Result
Boolean     lb_Value1[32], lb_Value2[32]

// Check for nulls
If IsNull(al_Value1) Or IsNull(al_Value2) Then
	SetNull(ll_Result)
	Return ll_Result
End If

// Get all bits for both values
For li_Cnt = 1 To 32
	lb_Value1[li_Cnt] = of_getbit(al_Value1, li_Cnt)
	lb_Value2[li_Cnt] = of_getbit(al_Value2, li_Cnt)
Next

// Perform the XOR
For li_Cnt = 1 To 32
	If (lb_Value1[li_Cnt] And Not lb_Value2[li_Cnt]) Or &
		(Not lb_Value1[li_Cnt] And lb_Value2[li_Cnt]) Then
		ll_Result = ll_Result + (2^(li_Cnt - 1))
	End If
Next

Return ll_Result

end function

public function boolean of_getbit (long al_decimal, unsignedinteger ai_bit);//====================================================================
// Function: n_cst_qrcode.of_getbit()
//--------------------------------------------------------------------
// Description: Returns the bit of the position
//--------------------------------------------------------------------
// Arguments:
// 	value	long           	al_decimal	
// 	value	unsignedinteger	ai_bit    	
//--------------------------------------------------------------------
// Returns:  boolean true = 1 fale = 0
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_getbit ( long al_decimal, unsignedinteger ai_bit )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Boolean lb_null

// Check parameters
If IsNull(al_decimal) Or IsNull(ai_bit) Then
	SetNull(lb_null)
	Return lb_null
End If

// Assumption ai_bit is the nth bit counting right to left with
// the leftmost bit being bit one.
// al_decimal is a binary number as a base 10 long.
If Int(Mod(al_decimal / (2 ^(ai_bit - 1)), 2)) > 0 Then
	Return True
End If

Return False

end function

public function string of_getformatstring (character ac_ecclevel, long al_maskversion);//====================================================================
// Function: n_cst_qrcode.of_getformatstring()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	character	ac_ecclevel   	
// 	value	long     	al_maskversion	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_getformatstring ( character ac_ecclevel, long al_maskversion )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String	ls_generator = "10100110111";
String 	ls_mask = "101010000010010";
String	ls_fstr, ls_fstrecc, ls_fstreccNew, ls_resultMask
Long		ll_index

If ac_ecclevel = n_cst_qrcoder.ECCLEVEL_L Then
	ls_fstr = "01"
ElseIf ac_ecclevel = n_cst_qrcoder.ECCLEVEL_M Then
	ls_fstr = "00"
ElseIf ac_ecclevel = n_cst_qrcoder.ECCLEVEL_Q Then
	ls_fstr = "11"
Else
	ls_fstr = "10"
End If

ls_fstr += of_decToBin(al_maskversion, 3)
ls_fstrecc = of_trimStart(Left(ls_fstr + Fill('0', 15), 15), '0')

Do While Len(ls_fstrecc) > 10
	ls_generator = Left(ls_generator + Fill('0', Len(ls_fstrecc)), Len(ls_fstrecc))
	ls_fstreccNew = ""
	For ll_index = 1 To Len(ls_fstrecc)
		ls_fstreccNew += String(of_bitwiseXor(Long(Mid(ls_fstrecc, ll_index, 1)), Long(Mid(ls_generator, ll_index, 1))))
	Next
	ls_fstrecc = of_trimStart(ls_fstreccNew, '0')
Loop

ls_fstrecc = Right(Fill('0', 10) + ls_fstrecc, 10)
ls_fstr += ls_fstrecc


For ll_index = 1 To Len(ls_fstr)
	ls_resultMask += String(of_bitwiseXor(Long(Mid(ls_fstr, ll_index, 1)), Long(Mid(ls_mask, ll_index, 1))))
Next

Return ls_resultMask

end function

public subroutine of_init (long al_version, string as_interleavedata, s_point astra_alignmentpatternlocations[], character ac_ecclevel);//====================================================================
// Function: n_cst_qrcode.of_init()
//--------------------------------------------------------------------
// Description: Initialization
//--------------------------------------------------------------------
// Arguments:
// 	value	long     	al_version                       	
// 	value	string   	as_interleavedata                	
// 	value	s_point  	astra_alignmentpatternlocations[]	
// 	value	character	ac_ecclevel                      	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_init ( long al_version, string as_interleavedata, s_point astra_alignmentpatternlocations[], character ac_ecclevel )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 		ll_maskVersion
String	ls_formatString, ls_versionString

of_init(al_version)

of_placeFinderPatterns()
of_reserveSeperatorAreas()
of_placeAlignmentPatterns(astra_alignmentPatternLocations);
of_placeTimingPatterns()
of_placeDarkModule()
of_reserveVersionAreas()
of_placeDataWords(as_interleavedata)

ll_maskVersion = of_maskCode()
ls_formatString = of_getFormatString(ac_ecclevel, ll_maskVersion)
of_placeFormat(ls_formatString)

If al_version > 7 Then
	ls_versionString = of_getVersionString(al_version)
	of_placeVersion(ls_versionString)
End If

of_addQuietZone()

end subroutine

public subroutine of_placeformat (string as_formatstring);//====================================================================
// Function: n_cst_qrcode.of_placeformat()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_formatstring	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_placeformat ( string as_formatstring )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long		ll_size, ll_index, ll_strPointer
Long		lla_mods[15,4]
s_point	lstr_p1, lstr_p2, lstr_empty

ll_size = UpperBound(istra_moduleMatrix)
as_formatstring = Reverse(as_formatstring)

lla_mods[1,1] = 8
lla_mods[1,2] = 0
lla_mods[1,3] = ll_size -1
lla_mods[1,4] = 8

lla_mods[2,1] = 8
lla_mods[2,2] = 1
lla_mods[2,3] = ll_size -2
lla_mods[2,4] = 8

lla_mods[3,1] = 8
lla_mods[3,2] = 2
lla_mods[3,3] = ll_size -3
lla_mods[3,4] = 8

lla_mods[4,1] = 8
lla_mods[4,2] = 3
lla_mods[4,3] = ll_size -4
lla_mods[4,4] = 8

lla_mods[5,1] = 8
lla_mods[5,2] = 4
lla_mods[5,3] = ll_size -5
lla_mods[5,4] = 8

lla_mods[6,1] = 8
lla_mods[6,2] = 5
lla_mods[6,3] = ll_size -6
lla_mods[6,4] = 8

lla_mods[7,1] = 8
lla_mods[7,2] = 7
lla_mods[7,3] = ll_size -7
lla_mods[7,4] = 8

lla_mods[8,1] = 8
lla_mods[8,2] = 8
lla_mods[8,3] = ll_size -8
lla_mods[8,4] = 8

lla_mods[9,1] = 7
lla_mods[9,2] = 8
lla_mods[9,3] = 8
lla_mods[9,4] = ll_size -7

lla_mods[10,1] = 5
lla_mods[10,2] = 8
lla_mods[10,3] = 8
lla_mods[10,4] = ll_size -6

lla_mods[11,1] = 4
lla_mods[11,2] = 8
lla_mods[11,3] = 8
lla_mods[11,4] = ll_size -5

lla_mods[12,1] = 3
lla_mods[12,2] = 8
lla_mods[12,3] = 8
lla_mods[12,4] = ll_size -4

lla_mods[13,1] = 2
lla_mods[13,2] = 8
lla_mods[13,3] = 8
lla_mods[13,4] = ll_size -3

lla_mods[14,1] = 1
lla_mods[14,2] = 8
lla_mods[14,3] = 8
lla_mods[14,4] = ll_size -2

lla_mods[15,1] = 0
lla_mods[15,2] = 8
lla_mods[15,3] = 8
lla_mods[15,4] = ll_size -1

ll_strPointer = Len(as_formatstring)

For ll_index = 1 To 15
	lstr_p1 = lstr_empty
	lstr_p2 = lstr_empty
	
	lstr_p1.X = lla_mods[ll_index,1]
	lstr_p1.Y = lla_mods[ll_index,2]
	
	lstr_p2.X = lla_mods[ll_index,3]
	lstr_p2.Y = lla_mods[ll_index,4]
	
	If Mid(as_formatstring, ll_index, 1) = "1" Then
		istra_moduleMatrix[lstr_p1.Y +1].bits[lstr_p1.X +1] = True
	Else
		istra_moduleMatrix[lstr_p1.Y +1].bits[lstr_p1.X +1] = False
	End If
	
	If Mid(as_formatstring, ll_index, 1) = "1" Then
		istra_moduleMatrix[lstr_p2.Y +1].bits[lstr_p2.X +1] = True
	Else
		istra_moduleMatrix[lstr_p2.Y +1].bits[lstr_p2.X +1] = False
	End If
Next


end subroutine

public function string of_getversionstring (long al_version);//====================================================================
// Function: n_cst_qrcode.of_getversionstring()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_version	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_getversionstring ( long al_version )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String 	ls_generator = "1111100100101"
String 	ls_result
String	ls_ecc, ls_eccNew
Long		ll_index

ls_result = of_decToBin(al_version, 6)
ls_ecc = of_trimStart(ls_result + Left(Fill('0', 18), 18), '0')

Do While Len(ls_ecc) > 12
	ls_eccNew = ""
	ls_generator = Left(ls_result+ Fill('0', Len(ls_ecc)), Len(ls_ecc))
	For ll_index = 1 To Len(ls_ecc)
		ls_eccNew += String(of_bitwiseXor(Long(Mid(ls_ecc, ll_index, 1)), Long(Mid(ls_generator, ll_index, 1))))
	Next
	
	ls_ecc = of_trimStart(ls_eccNew, '0')
Loop

ls_ecc = Right(Fill('0', 12) + ls_ecc, 12)
ls_result = ls_ecc

Return ls_result;

end function

public subroutine of_placeversion (string as_versionstring);//====================================================================
// Function: n_cst_qrcode.of_placeversion()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_versionstring	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_placeversion ( string as_versionstring )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long	ll_size, ll_x, ll_y

ll_size = UpperBound(istra_moduleMatrix)
as_versionstring = Reverse(as_versionstring)

For ll_x = 1 To 6
	For ll_y = 1 To 3
		If Mid(as_versionstring, ((ll_x -1) * 3 + (ll_y -1)) +1, 1) = "1" Then
			istra_moduleMatrix[ll_y + ll_size -11].bits[ll_x] = True
			istra_moduleMatrix[ll_x].bits[ll_y + ll_size -11] = True
		Else
			istra_moduleMatrix[ll_y + ll_size -11].bits[ll_x] = False
			istra_moduleMatrix[ll_x].bits[ll_y + ll_size -11] = False
		End If
		
	Next
Next

end subroutine

public subroutine of_addquietzone ();//====================================================================
// Function: n_cst_qrcode.of_addquietzone()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_addquietzone ( )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 				ll_index, ll_count, ll_bit, ll_bitCount
Boolean			lba_quietpart[4], lba_tempLine[], lba_empty[]
s_bitarray		lstra_moduleMatrix[]

ll_count = UpperBound(istra_moduleMatrix)

For ll_index = 1 To 4
	lstra_moduleMatrix[ll_index].bits[UpperBound(istra_moduleMatrix) +8] = False
Next

For ll_index = 1 To ll_count
	lstra_moduleMatrix[ll_index+4] = istra_moduleMatrix[ll_index]
Next

For ll_index = 1 To 4
	lstra_moduleMatrix[UpperBound(lstra_moduleMatrix) +1].bits[UpperBound(istra_moduleMatrix) +8] = False
Next

istra_moduleMatrix = lstra_moduleMatrix
For ll_index = 5 To UpperBound(istra_moduleMatrix) -4
	lba_tempLine = lba_quietpart
	For ll_bit = 1 To UpperBound(istra_moduleMatrix[ll_index].bits)
		lba_tempLine[UpperBound(lba_tempLine) +1] = istra_moduleMatrix[ll_index].bits[ll_bit]
	Next
	
	For ll_bit = 1 To 4
		lba_tempLine[UpperBound(lba_tempLine) +1] = lba_quietpart[ll_bit]
	Next
	
	istra_moduleMatrix[ll_index].bits = lba_tempLine
Next

end subroutine

public function long of_getmodulmatrix (ref s_bitarray rstra_modulematrix[]);//====================================================================
// Function: n_cst_qrcode.of_getmodulmatrix()
//--------------------------------------------------------------------
// Description:  Returns the current modul matrix
//--------------------------------------------------------------------
// Arguments:
// 	reference	s_bitarray	rstra_modulematrix[]	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcode.of_getmodulmatrix ( ref s_bitarray rstra_modulematrix[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


rstra_moduleMatrix = istra_moduleMatrix

Return UpperBound(istra_moduleMatrix)

end function

on n_cst_qrcode.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_qrcode.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

