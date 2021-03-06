$PBExportHeader$n_cst_qrcoder.sru
forward
global type n_cst_qrcoder from nonvisualobject
end type
end forward

global type n_cst_qrcoder from nonvisualobject
end type
global n_cst_qrcoder n_cst_qrcoder

type variables
Public:

Constant Char ECCLEVEL_L = 'L'
Constant Char ECCLEVEL_M = 'M'
Constant Char ECCLEVEL_Q = 'Q'
Constant Char ECCLEVEL_H = 'H'

Constant Int ENCODINGMODE_NUMERIC = 1
Constant Int ENCODINGMODE_ALPHA = 2
Constant Int ENCODINGMODE_BYTE = 4
Constant Int ENCODINGMODE_KANJI = 8
Constant Int ENCODINGMODE_ECI = 7

Private:

Char ica_alphanumEncTable[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', '$', '%', '*', '+', '-', '.', '/', ':' }
Long ila_capacityBaseValues[] = { 41, 25, 17, 10, 34, 20, 14, 8, 27, 16, 11, 7, 17, 10, 7, 4, 77, 47, 32, 20, 63, 38, 26, 16, 48, 29, 20, 12, 34, 20, 14, 8, 127, 77, 53, 32, 101, 61, 42, 26, 77, 47, 32, 20, 58, 35, 24, 15, 187, 114, 78, 48, 149, 90, 62, 38, 111, 67, 46, 28, 82, 50, 34, 21, 255, 154, 106, 65, 202, 122, 84, 52, 144, 87, 60, 37, 106, 64, 44, 27, 322, 195, 134, 82, 255, 154, 106, 65, 178, 108, 74, 45, 139, 84, 58, 36, 370, 224, 154, 95, 293, 178, 122, 75, 207, 125, 86, 53, 154, 93, 64, 39, 461, 279, 192, 118, 365, 221, 152, 93, 259, 157, 108, 66, 202, 122, 84, 52, 552, 335, 230, 141, 432, 262, 180, 111, 312, 189, 130, 80, 235, 143, 98, 60, 652, 395, 271, 167, 513, 311, 213, 131, 364, 221, 151, 93, 288, 174, 119, 74, 772, 468, 321, 198, 604, 366, 251, 155, 427, 259, 177, 109, 331, 200, 137, 85, 883, 535, 367, 226, 691, 419, 287, 177, 489, 296, 203, 125, 374, 227, 155, 96, 1022, 619, 425, 262, 796, 483, 331, 204, 580, 352, 241, 149, 427, 259, 177, 109, 1101, 667, 458, 282, 871, 528, 362, 223, 621, 376, 258, 159, 468, 283, 194, 120, 1250, 758, 520, 320, 991, 600, 412, 254, 703, 426, 292, 180, 530, 321, 220, 136, 1408, 854, 586, 361, 1082, 656, 450, 277, 775, 470, 322, 198, 602, 365, 250, 154, 1548, 938, 644, 397, 1212, 734, 504, 310, 876, 531, 364, 224, 674, 408, 280, 173, 1725, 1046, 718, 442, 1346, 816, 560, 345, 948, 574, 394, 243, 746, 452, 310, 191, 1903, 1153, 792, 488, 1500, 909, 624, 384, 1063, 644, 442, 272, 813, 493, 338, 208, 2061, 1249, 858, 528, 1600, 970, 666, 410, 1159, 702, 482, 297, 919, 557, 382, 235, 2232, 1352, 929, 572, 1708, 1035, 711, 438, 1224, 742, 509, 314, 969, 587, 403, 248, 2409, 1460, 1003, 618, 1872, 1134, 779, 480, 1358, 823, 565, 348, 1056, 640, 439, 270, 2620, 1588, 1091, 672, 2059, 1248, 857, 528, 1468, 890, 611, 376, 1108, 672, 461, 284, 2812, 1704, 1171, 721, 2188, 1326, 911, 561, 1588, 963, 661, 407, 1228, 744, 511, 315, 3057, 1853, 1273, 784, 2395, 1451, 997, 614, 1718, 1041, 715, 440, 1286, 779, 535, 330, 3283, 1990, 1367, 842, 2544, 1542, 1059, 652, 1804, 1094, 751, 462, 1425, 864, 593, 365, 3517, 2132, 1465, 902, 2701, 1637, 1125, 692, 1933, 1172, 805, 496, 1501, 910, 625, 385, 3669, 2223, 1528, 940, 2857, 1732, 1190, 732, 2085, 1263, 868, 534, 1581, 958, 658, 405, 3909, 2369, 1628, 1002, 3035, 1839, 1264, 778, 2181, 1322, 908, 559, 1677, 1016, 698, 430, 4158, 2520, 1732, 1066, 3289, 1994, 1370, 843, 2358, 1429, 982, 604, 1782, 1080, 742, 457, 4417, 2677, 1840, 1132, 3486, 2113, 1452, 894, 2473, 1499, 1030, 634, 1897, 1150, 790, 486, 4686, 2840, 1952, 1201, 3693, 2238, 1538, 947, 2670, 1618, 1112, 684, 2022, 1226, 842, 518, 4965, 3009, 2068, 1273, 3909, 2369, 1628, 1002, 2805, 1700, 1168, 719, 2157, 1307, 898, 553, 5253, 3183, 2188, 1347, 4134, 2506, 1722, 1060, 2949, 1787, 1228, 756, 2301, 1394, 958, 590, 5529, 3351, 2303, 1417, 4343, 2632, 1809, 1113, 3081, 1867, 1283, 790, 2361, 1431, 983, 605, 5836, 3537, 2431, 1496, 4588, 2780, 1911, 1176, 3244, 1966, 1351, 832, 2524, 1530, 1051, 647, 6153, 3729, 2563, 1577, 4775, 2894, 1989, 1224, 3417, 2071, 1423, 876, 2625, 1591, 1093, 673, 6479, 3927, 2699, 1661, 5039, 3054, 2099, 1292, 3599, 2181, 1499, 923, 2735, 1658, 1139, 701, 6743, 4087, 2809, 1729, 5313, 3220, 2213, 1362, 3791, 2298, 1579, 972, 2927, 1774, 1219, 750, 7089, 4296, 2953, 1817, 5596, 3391, 2331, 1435, 3993, 2420, 1663, 1024, 3057, 1852, 1273, 784 }
Long ila_capacityECCBaseValues[] = { 19, 7, 1, 19, 0, 0, 16, 10, 1, 16, 0, 0, 13, 13, 1, 13, 0, 0, 9, 17, 1, 9, 0, 0, 34, 10, 1, 34, 0, 0, 28, 16, 1, 28, 0, 0, 22, 22, 1, 22, 0, 0, 16, 28, 1, 16, 0, 0, 55, 15, 1, 55, 0, 0, 44, 26, 1, 44, 0, 0, 34, 18, 2, 17, 0, 0, 26, 22, 2, 13, 0, 0, 80, 20, 1, 80, 0, 0, 64, 18, 2, 32, 0, 0, 48, 26, 2, 24, 0, 0, 36, 16, 4, 9, 0, 0, 108, 26, 1, 108, 0, 0, 86, 24, 2, 43, 0, 0, 62, 18, 2, 15, 2, 16, 46, 22, 2, 11, 2, 12, 136, 18, 2, 68, 0, 0, 108, 16, 4, 27, 0, 0, 76, 24, 4, 19, 0, 0, 60, 28, 4, 15, 0, 0, 156, 20, 2, 78, 0, 0, 124, 18, 4, 31, 0, 0, 88, 18, 2, 14, 4, 15, 66, 26, 4, 13, 1, 14, 194, 24, 2, 97, 0, 0, 154, 22, 2, 38, 2, 39, 110, 22, 4, 18, 2, 19, 86, 26, 4, 14, 2, 15, 232, 30, 2, 116, 0, 0, 182, 22, 3, 36, 2, 37, 132, 20, 4, 16, 4, 17, 100, 24, 4, 12, 4, 13, 274, 18, 2, 68, 2, 69, 216, 26, 4, 43, 1, 44, 154, 24, 6, 19, 2, 20, 122, 28, 6, 15, 2, 16, 324, 20, 4, 81, 0, 0, 254, 30, 1, 50, 4, 51, 180, 28, 4, 22, 4, 23, 140, 24, 3, 12, 8, 13, 370, 24, 2, 92, 2, 93, 290, 22, 6, 36, 2, 37, 206, 26, 4, 20, 6, 21, 158, 28, 7, 14, 4, 15, 428, 26, 4, 107, 0, 0, 334, 22, 8, 37, 1, 38, 244, 24, 8, 20, 4, 21, 180, 22, 12, 11, 4, 12, 461, 30, 3, 115, 1, 116, 365, 24, 4, 40, 5, 41, 261, 20, 11, 16, 5, 17, 197, 24, 11, 12, 5, 13, 523, 22, 5, 87, 1, 88, 415, 24, 5, 41, 5, 42, 295, 30, 5, 24, 7, 25, 223, 24, 11, 12, 7, 13, 589, 24, 5, 98, 1, 99, 453, 28, 7, 45, 3, 46, 325, 24, 15, 19, 2, 20, 253, 30, 3, 15, 13, 16, 647, 28, 1, 107, 5, 108, 507, 28, 10, 46, 1, 47, 367, 28, 1, 22, 15, 23, 283, 28, 2, 14, 17, 15, 721, 30, 5, 120, 1, 121, 563, 26, 9, 43, 4, 44, 397, 28, 17, 22, 1, 23, 313, 28, 2, 14, 19, 15, 795, 28, 3, 113, 4, 114, 627, 26, 3, 44, 11, 45, 445, 26, 17, 21, 4, 22, 341, 26, 9, 13, 16, 14, 861, 28, 3, 107, 5, 108, 669, 26, 3, 41, 13, 42, 485, 30, 15, 24, 5, 25, 385, 28, 15, 15, 10, 16, 932, 28, 4, 116, 4, 117, 714, 26, 17, 42, 0, 0, 512, 28, 17, 22, 6, 23, 406, 30, 19, 16, 6, 17, 1006, 28, 2, 111, 7, 112, 782, 28, 17, 46, 0, 0, 568, 30, 7, 24, 16, 25, 442, 24, 34, 13, 0, 0, 1094, 30, 4, 121, 5, 122, 860, 28, 4, 47, 14, 48, 614, 30, 11, 24, 14, 25, 464, 30, 16, 15, 14, 16, 1174, 30, 6, 117, 4, 118, 914, 28, 6, 45, 14, 46, 664, 30, 11, 24, 16, 25, 514, 30, 30, 16, 2, 17, 1276, 26, 8, 106, 4, 107, 1000, 28, 8, 47, 13, 48, 718, 30, 7, 24, 22, 25, 538, 30, 22, 15, 13, 16, 1370, 28, 10, 114, 2, 115, 1062, 28, 19, 46, 4, 47, 754, 28, 28, 22, 6, 23, 596, 30, 33, 16, 4, 17, 1468, 30, 8, 122, 4, 123, 1128, 28, 22, 45, 3, 46, 808, 30, 8, 23, 26, 24, 628, 30, 12, 15, 28, 16, 1531, 30, 3, 117, 10, 118, 1193, 28, 3, 45, 23, 46, 871, 30, 4, 24, 31, 25, 661, 30, 11, 15, 31, 16, 1631, 30, 7, 116, 7, 117, 1267, 28, 21, 45, 7, 46, 911, 30, 1, 23, 37, 24, 701, 30, 19, 15, 26, 16, 1735, 30, 5, 115, 10, 116, 1373, 28, 19, 47, 10, 48, 985, 30, 15, 24, 25, 25, 745, 30, 23, 15, 25, 16, 1843, 30, 13, 115, 3, 116, 1455, 28, 2, 46, 29, 47, 1033, 30, 42, 24, 1, 25, 793, 30, 23, 15, 28, 16, 1955, 30, 17, 115, 0, 0, 1541, 28, 10, 46, 23, 47, 1115, 30, 10, 24, 35, 25, 845, 30, 19, 15, 35, 16, 2071, 30, 17, 115, 1, 116, 1631, 28, 14, 46, 21, 47, 1171, 30, 29, 24, 19, 25, 901, 30, 11, 15, 46, 16, 2191, 30, 13, 115, 6, 116, 1725, 28, 14, 46, 23, 47, 1231, 30, 44, 24, 7, 25, 961, 30, 59, 16, 1, 17, 2306, 30, 12, 121, 7, 122, 1812, 28, 12, 47, 26, 48, 1286, 30, 39, 24, 14, 25, 986, 30, 22, 15, 41, 16, 2434, 30, 6, 121, 14, 122, 1914, 28, 6, 47, 34, 48, 1354, 30, 46, 24, 10, 25, 1054, 30, 2, 15, 64, 16, 2566, 30, 17, 122, 4, 123, 1992, 28, 29, 46, 14, 47, 1426, 30, 49, 24, 10, 25, 1096, 30, 24, 15, 46, 16, 2702, 30, 4, 122, 18, 123, 2102, 28, 13, 46, 32, 47, 1502, 30, 48, 24, 14, 25, 1142, 30, 42, 15, 32, 16, 2812, 30, 20, 117, 4, 118, 2216, 28, 40, 47, 7, 48, 1582, 30, 43, 24, 22, 25, 1222, 30, 10, 15, 67, 16, 2956, 30, 19, 118, 6, 119, 2334, 28, 18, 47, 31, 48, 1666, 30, 34, 24, 34, 25, 1276, 30, 20, 15, 61, 16 }
Long ila_alignmentPatternBaseValues[] = { 0, 0, 0, 0, 0, 0, 0, 6, 18, 0, 0, 0, 0, 0, 6, 22, 0, 0, 0, 0, 0, 6, 26, 0, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 6, 34, 0, 0, 0, 0, 0, 6, 22, 38, 0, 0, 0, 0, 6, 24, 42, 0, 0, 0, 0, 6, 26, 46, 0, 0, 0, 0, 6, 28, 50, 0, 0, 0, 0, 6, 30, 54, 0, 0, 0, 0, 6, 32, 58, 0, 0, 0, 0, 6, 34, 62, 0, 0, 0, 0, 6, 26, 46, 66, 0, 0, 0, 6, 26, 48, 70, 0, 0, 0, 6, 26, 50, 74, 0, 0, 0, 6, 30, 54, 78, 0, 0, 0, 6, 30, 56, 82, 0, 0, 0, 6, 30, 58, 86, 0, 0, 0, 6, 34, 62, 90, 0, 0, 0, 6, 28, 50, 72, 94, 0, 0, 6, 26, 50, 74, 98, 0, 0, 6, 30, 54, 78, 102, 0, 0, 6, 28, 54, 80, 106, 0, 0, 6, 32, 58, 84, 110, 0, 0, 6, 30, 58, 86, 114, 0, 0, 6, 34, 62, 90, 118, 0, 0, 6, 26, 50, 74, 98, 122, 0, 6, 30, 54, 78, 102, 126, 0, 6, 26, 52, 78, 104, 130, 0, 6, 30, 56, 82, 108, 134, 0, 6, 34, 60, 86, 112, 138, 0, 6, 30, 58, 86, 114, 142, 0, 6, 34, 62, 90, 118, 146, 0, 6, 30, 54, 78, 102, 126, 150, 6, 24, 50, 76, 102, 128, 154, 6, 28, 54, 80, 106, 132, 158, 6, 32, 58, 84, 110, 136, 162, 6, 26, 54, 82, 110, 138, 166, 6, 30, 58, 86, 114, 142, 170 }
Long ila_remainderBits[] = { 0, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0 }

s_antilog 				istra_galoisField[]
s_alphaNumEntry 		istra_alphanumEncDict[]
s_versionInfo			istra_capacityTable[]
s_eccInfo 				istra_capacityECCTable[]
s_alignmentPattern	istra_alignmentPatternTable[]




end variables

forward prototypes
public function boolean of_getbit (long al_decimal, unsignedinteger ai_bit)
public function boolean of_isinarray (any laa_array[], any la_value)
protected function long of_bitwisexor (long al_value1, long al_value2)
public subroutine of_createcapacityecctable (ref s_eccinfo rstra_capacityecctable[])
public subroutine of_createcapacitytable (ref s_versioninfo rstr_capacitytable[])
public function long of_createantilogtable (ref s_antilog rstra_galoisfield[])
public function long of_createalphanumencdict (ref s_alphanumentry rstra_alphanumdict[])
public function long of_createalignmentpatterntable (ref s_alignmentpattern rstra_alignmentpatterntable[])
public function integer of_getencodingmode (string as_plaintext)
public function string of_plaintexttobinarybyte (string as_plaintext, boolean ab_utf8bom)
public function string of_plaintexttobinaryalpha (string as_plaintext, boolean ab_utf8bom)
public function string of_plaintexttobinarynumeric (string as_plaintext, boolean ab_utf8bom)
public function string of_plaintexttobinary (string as_plaintext, integer li_encoding, boolean ab_utf8bom) throws throwable
public function string of_dectobin (long al_dec, long al_padleftupto)
public function string of_dectobin (long al_dec)
public function long of_getalphanumeencindexbychar (string as_search)
public function boolean of_isvalidiso (string as_plaintext)
public function boolean of_isutf8 (integer ai_encoding, string as_plaintext)
public function long of_getdatalength (integer ai_encoding, string as_plaintext, string as_codedtext)
public function long of_getversion (long al_length, integer ai_encoding, character ac_ecclevel)
public function long of_getcountindicatorlength (long al_version, integer ai_encoding)
public function n_cst_qrcode of_createqrcode (string as_plaintext, character ac_ecclevel, boolean ab_utf8bom) throws throwable
public function n_cst_qrcode of_createqrcode (string as_plaintext, character ac_ecclevel) throws throwable
public function boolean of_geteccinfo (long al_version, character ac_ecclevel, ref s_eccinfo rstr_eccinfo)
public function string of_repeatestring (string as_string, long al_repeat)
public function long of_binarystringtoblocklist (string as_bitstring, ref string rsa_blocklist[])
public function string of_getinterleavedata (string as_plaintext, character ac_ecclevel, boolean ab_utf8bom, ref long rl_version) throws throwable
public function s_polynom of_calculatemessagepolynom (string as_bitstring)
public function long of_bintodec (string as_binstring)
public function long of_shrinkalphaexp (long al_alphaexp)
public function s_polynom of_multiplyalphapolynoms (s_polynom lstr_polynombase, s_polynom lstr_polynommultiplier) throws throwable
public function s_polynom of_calculategeneratorpolynom (long al_eccwords) throws throwable
public function long of_getglueexponents (s_polynom lstr_polynom, ref long rla_exponents[])
public function long of_getalphaexpfromintval (long al_val)
public function long of_getintvalfromalphaexp (long al_alphaexp)
public subroutine of_sortpolynomsbyexponent (ref s_polynom rstr_polynom)
public function long of_calculateeccwords (string as_bitstring, s_eccinfo astr_eccinfo, ref string rsa_eccwords[]) throws throwable
public function s_polynom of_converttoalphanotation (s_polynom astr_polynom)
public function s_polynom of_multiplygeneratorpolynombyleadterm (s_polynom astr_genpolynom, s_polynomitem astr_leadterm, long al_lowerexponentby)
public function s_polynom of_converttodecnotation (s_polynom astr_polynom)
public function s_polynom of_xorpolynoms (s_polynom astr_messagepolynom, s_polynom astr_respolynom)
public function s_alignmentpattern of_getalignmentpattern (long al_version)
end prototypes

public function boolean of_getbit (long al_decimal, unsignedinteger ai_bit);//====================================================================
// Function: n_cst_qrcoder.of_getbit()
//--------------------------------------------------------------------
// Description: Returns the bit of the position
//--------------------------------------------------------------------
// Arguments:
// 	value	long           	al_decimal	
// 	value	unsignedinteger	ai_bit    	
//--------------------------------------------------------------------
// Returns:  boolean 	Returns true = 1 fale = 0
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getbit ( long al_decimal, unsignedinteger ai_bit )
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

public function boolean of_isinarray (any laa_array[], any la_value);//====================================================================
// Function: n_cst_qrcoder.of_isinarray()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	any	laa_array[]	
// 	value	any	la_value   	
//--------------------------------------------------------------------
// Returns:  boolean
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_isinarray ( any laa_array[], any la_value )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long ll_index, ll_count

ll_count = UpperBound(laa_array)
For ll_index = 1 To ll_count
	If laa_array[ll_index] = la_value Then
		Return True
	End If
Next

Return False

end function

protected function long of_bitwisexor (long al_value1, long al_value2);//====================================================================
// Function: n_cst_qrcoder.of_bitwisexor()
//--------------------------------------------------------------------
// Description: This method combines two value with the XOR operator.
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_value1	
// 	value	long	al_value2	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_bitwisexor ( long al_value1, long al_value2 )
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

public subroutine of_createcapacityecctable (ref s_eccinfo rstra_capacityecctable[]);//====================================================================
// Function: n_cst_qrcoder.of_createcapacityecctable()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	reference	s_eccinfo	rstra_capacityecctable[]	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_createcapacityecctable ( ref s_eccinfo rstra_capacityecctable[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 			ll_index
s_eccInfo	lstr_item, lstr_itemEmpty

For ll_index = 0 To (4 * 6 * 40) -1 Step 24
	
	lstr_item = lstr_itemEmpty
	lstr_item.Version = (ll_index + 24) / 24
	lstr_item.ecclevel = ECCLEVEL_L
	lstr_item.TotalDataCodewords = ila_capacityECCBaseValues[ll_index+1]
	lstr_item.ECCPerBlock = ila_capacityECCBaseValues[ll_index+2]
	lstr_item.BlocksInGroup1 = ila_capacityECCBaseValues[ll_index+3]
	lstr_item.CodewordsInGroup1 = ila_capacityECCBaseValues[ll_index+4]
	lstr_item.BlocksInGroup2  = ila_capacityECCBaseValues[ll_index+5]
	lstr_item.CodewordsInGroup2 = ila_capacityECCBaseValues[ll_index+6]
	rstra_capacityEccTable[UpperBound(rstra_capacityEccTable)+1] = lstr_item
	
	lstr_item = lstr_itemEmpty
	lstr_item.Version = (ll_index + 24) / 24
	lstr_item.ecclevel = ECCLEVEL_M
	lstr_item.TotalDataCodewords = ila_capacityECCBaseValues[ll_index+7]
	lstr_item.ECCPerBlock = ila_capacityECCBaseValues[ll_index+8]
	lstr_item.BlocksInGroup1 = ila_capacityECCBaseValues[ll_index+9]
	lstr_item.CodewordsInGroup1 = ila_capacityECCBaseValues[ll_index+10]
	lstr_item.BlocksInGroup2  = ila_capacityECCBaseValues[ll_index+11]
	lstr_item.CodewordsInGroup2 = ila_capacityECCBaseValues[ll_index+12]
	rstra_capacityEccTable[UpperBound(rstra_capacityEccTable)+1] = lstr_item
	
	lstr_item = lstr_itemEmpty
	lstr_item.Version = (ll_index + 24) / 24
	lstr_item.ecclevel = ECCLEVEL_Q
	lstr_item.TotalDataCodewords = ila_capacityECCBaseValues[ll_index+13]
	lstr_item.ECCPerBlock = ila_capacityECCBaseValues[ll_index+14]
	lstr_item.BlocksInGroup1 = ila_capacityECCBaseValues[ll_index+15]
	lstr_item.CodewordsInGroup1 = ila_capacityECCBaseValues[ll_index+16]
	lstr_item.BlocksInGroup2  = ila_capacityECCBaseValues[ll_index+17]
	lstr_item.CodewordsInGroup2 = ila_capacityECCBaseValues[ll_index+18]
	rstra_capacityEccTable[UpperBound(rstra_capacityEccTable)+1] = lstr_item
	
	lstr_item = lstr_itemEmpty
	lstr_item.Version = (ll_index + 24) / 24
	lstr_item.ecclevel = ECCLEVEL_H
	lstr_item.TotalDataCodewords = ila_capacityECCBaseValues[ll_index+19]
	lstr_item.ECCPerBlock = ila_capacityECCBaseValues[ll_index+20]
	lstr_item.BlocksInGroup1 = ila_capacityECCBaseValues[ll_index+21]
	lstr_item.CodewordsInGroup1 = ila_capacityECCBaseValues[ll_index+22]
	lstr_item.BlocksInGroup2  = ila_capacityECCBaseValues[ll_index+23]
	lstr_item.CodewordsInGroup2 = ila_capacityECCBaseValues[ll_index+24]
	rstra_capacityEccTable[UpperBound(rstra_capacityEccTable)+1] = lstr_item
Next

end subroutine

public subroutine of_createcapacitytable (ref s_versioninfo rstr_capacitytable[]);//====================================================================
// Function: n_cst_qrcoder.of_createcapacitytable()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	reference	s_versioninfo	rstr_capacitytable[]	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_createcapacitytable ( ref s_versioninfo rstr_capacitytable[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 							ll_index
s_versionInfo				lstr_item, lstr_itemEmpty

For ll_index = 0 To (16 * 40) -1 Step 16
	lstr_item = lstr_itemEmpty
	lstr_item.Version = (ll_index + 16) / 16
	
	lstr_item.Details[1].ErrorCorrectionLevel = ECCLEVEL_L
	lstr_item.Details[1].CapacityDict[1].Encoding = ENCODINGMODE_NUMERIC
	lstr_item.Details[1].CapacityDict[1].Capacity = ila_capacityBaseValues[ll_index+1]
	lstr_item.Details[1].CapacityDict[2].Encoding = ENCODINGMODE_ALPHA
	lstr_item.Details[1].CapacityDict[2].Capacity = ila_capacityBaseValues[ll_index+2]
	lstr_item.Details[1].CapacityDict[3].Encoding = ENCODINGMODE_BYTE
	lstr_item.Details[1].CapacityDict[3].Capacity = ila_capacityBaseValues[ll_index+3]
	lstr_item.Details[1].CapacityDict[4].Encoding = ENCODINGMODE_KANJI
	lstr_item.Details[1].CapacityDict[4].Capacity = ila_capacityBaseValues[ll_index+4]
	
	lstr_item.Details[2].ErrorCorrectionLevel = ECCLEVEL_M
	lstr_item.Details[2].CapacityDict[1].Encoding = ENCODINGMODE_NUMERIC
	lstr_item.Details[2].CapacityDict[1].Capacity = ila_capacityBaseValues[ll_index+5]
	lstr_item.Details[2].CapacityDict[2].Encoding = ENCODINGMODE_ALPHA
	lstr_item.Details[2].CapacityDict[2].Capacity = ila_capacityBaseValues[ll_index+6]
	lstr_item.Details[2].CapacityDict[3].Encoding = ENCODINGMODE_BYTE
	lstr_item.Details[2].CapacityDict[3].Capacity = ila_capacityBaseValues[ll_index+7]
	lstr_item.Details[2].CapacityDict[4].Encoding = ENCODINGMODE_KANJI
	lstr_item.Details[2].CapacityDict[4].Capacity = ila_capacityBaseValues[ll_index+8]
	
	lstr_item.Details[3].ErrorCorrectionLevel = ECCLEVEL_Q
	lstr_item.Details[3].CapacityDict[1].Encoding = ENCODINGMODE_NUMERIC
	lstr_item.Details[3].CapacityDict[1].Capacity = ila_capacityBaseValues[ll_index+9]
	lstr_item.Details[3].CapacityDict[2].Encoding = ENCODINGMODE_ALPHA
	lstr_item.Details[3].CapacityDict[2].Capacity = ila_capacityBaseValues[ll_index+10]
	lstr_item.Details[3].CapacityDict[3].Encoding = ENCODINGMODE_BYTE
	lstr_item.Details[3].CapacityDict[3].Capacity = ila_capacityBaseValues[ll_index+11]
	lstr_item.Details[3].CapacityDict[4].Encoding = ENCODINGMODE_KANJI
	lstr_item.Details[3].CapacityDict[4].Capacity = ila_capacityBaseValues[ll_index+12]
	
	lstr_item.Details[4].ErrorCorrectionLevel = ECCLEVEL_H
	lstr_item.Details[4].CapacityDict[1].Encoding = ENCODINGMODE_NUMERIC
	lstr_item.Details[4].CapacityDict[1].Capacity = ila_capacityBaseValues[ll_index+13]
	lstr_item.Details[4].CapacityDict[2].Encoding = ENCODINGMODE_ALPHA
	lstr_item.Details[4].CapacityDict[2].Capacity = ila_capacityBaseValues[ll_index+14]
	lstr_item.Details[4].CapacityDict[3].Encoding = ENCODINGMODE_BYTE
	lstr_item.Details[4].CapacityDict[3].Capacity = ila_capacityBaseValues[ll_index+15]
	lstr_item.Details[4].CapacityDict[4].Encoding = ENCODINGMODE_KANJI
	lstr_item.Details[4].CapacityDict[4].Capacity = ila_capacityBaseValues[ll_index+16]
	
	rstr_capacitytable[UpperBound(rstr_capacitytable)+1] = lstr_item
Next

end subroutine

public function long of_createantilogtable (ref s_antilog rstra_galoisfield[]);//====================================================================
// Function: n_cst_qrcoder.of_createantilogtable()
//--------------------------------------------------------------------
// Description: This method create the Antilog table
//--------------------------------------------------------------------
// Arguments:
// 	reference	s_antilog	rstra_galoisfield[]	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_createantilogtable ( ref s_antilog rstra_galoisfield[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long			ll_gfItem, ll_index
s_antilog	lstr_item, lstr_empty

For ll_index = 0 To 255
	ll_gfItem = 2 ^ ll_index
	
	If ll_index > 7 Then
		ll_gfItem = rstra_galoisField[ll_index].IntegerValue *2
	End If
	
	If ll_gfItem > 255 Then
		ll_gfItem = of_bitwiseXor(ll_gfItem, 285)
	End If
	
	lstr_item.IntegerValue = ll_gfItem
	lstr_item.ExponentAlpha = ll_index
	rstra_galoisField[UpperBound(rstra_galoisField)+1] = lstr_item
	lstr_item = lstr_empty
Next

Return UpperBound(rstra_galoisField)

end function

public function long of_createalphanumencdict (ref s_alphanumentry rstra_alphanumdict[]);//====================================================================
// Function: n_cst_qrcoder.of_createalphanumencdict()
//--------------------------------------------------------------------
// Description: Initialize Alphanumeric Dictionary
//--------------------------------------------------------------------
// Arguments:
// 	reference	s_alphanumentry	rstra_alphanumdict[]	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_createalphanumencdict ( ref s_alphanumentry rstra_alphanumdict[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long					ll_index, ll_count
s_alphaNumEntry	lstra_emptyDict[], lstr_emptyItem, lstr_item

ll_count = UpperBound(ica_alphanumEncTable)
For ll_index = 1 To ll_count
	lstr_item.Character = ica_alphanumEncTable[ll_index]
	lstr_item.Index = ll_index -1
	rstra_alphanumdict[UpperBound(rstra_alphanumdict)+1] = lstr_item
	lstr_item = lstr_emptyItem
Next

Return UpperBound(rstra_alphanumdict)

end function

public function long of_createalignmentpatterntable (ref s_alignmentpattern rstra_alignmentpatterntable[]);//====================================================================
// Function: n_cst_qrcoder.of_createalignmentpatterntable()
//--------------------------------------------------------------------
// Description: Creates the aligment table
//--------------------------------------------------------------------
// Arguments:
// 	reference	s_alignmentpattern	rstra_alignmentpatterntable[]	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_createalignmentpatterntable ( ref s_alignmentpattern rstra_alignmentpatterntable[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 		ll_index, ll_x, ll_y, ll_item
s_point	lstr_point, lstr_pointEmpty
s_point	lstra_points[], lstra_pointsEmpty[]

For ll_index = 0 To (7 * 40) -1 Step 7
	lstra_points = lstra_pointsEmpty
	For ll_x = 0 To 6
		If ila_alignmentPatternBaseValues[ll_index + ll_x + 1] <> 0 Then
			For ll_y = 0 To 6
				If ila_alignmentPatternBaseValues[ll_index + ll_y + 1] <> 0 Then
					lstr_point = lstr_pointEmpty
					lstr_point.X = ila_alignmentPatternBaseValues[ll_index + ll_x + 1] -2
					lstr_point.Y = ila_alignmentPatternBaseValues[ll_index + ll_y + 1] -2
					
					If Not of_isInArray(lstra_points, lstr_point) Then
						lstra_points[UpperBound(lstra_points)+1] = lstr_point
					End If
				End If
			Next
		End If
	Next
	
	ll_item = UpperBound(rstra_alignmentpatterntable) +1
	rstra_alignmentpatterntable[ll_item].Version = (ll_index + 7) / 7
	rstra_alignmentpatterntable[ll_item].PatternPositions = lstra_points
Next

Return UpperBound(rstra_alignmentpatterntable)

end function

public function integer of_getencodingmode (string as_plaintext);//====================================================================
// Function: n_cst_qrcoder.of_getencodingmode()
//--------------------------------------------------------------------
// Description: Finds the Encoding for the string
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_plaintext	
//--------------------------------------------------------------------
// Returns:  integer
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getencodingmode ( string as_plaintext )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


Constant String	lcs_numeric = "0123456789"

Long					ll_charIndex, ll_charCount
Long					ll_alphaIndex, ll_alphaCount
Integer				li_encoding
Boolean				lb_alphaFound
Character			lc_currentChar

ll_alphaCount = UpperBound(ica_alphanumEncTable)

ll_charCount = Len(as_plaintext)
For ll_charIndex = 1 To ll_charCount
	lc_currentChar = Mid(as_plaintext, ll_charIndex, 1)
	
	// Check if all chars are numbers
	If li_encoding = 0 Or li_encoding = ENCODINGMODE_NUMERIC Then
		If Pos(lcs_numeric, lc_currentChar) > 0 Then
			li_encoding = ENCODINGMODE_NUMERIC
		Else
			li_encoding = 0
		End If
	End If
	
	// Check if all chars are in alpha numeric table
	If li_encoding = 0 Or li_encoding = ENCODINGMODE_ALPHA Then
		lb_alphaFound = False
		For ll_alphaIndex = 1 To ll_alphaCount
			If ica_alphanumEncTable[ll_alphaIndex] = lc_currentChar Then
				lb_alphaFound = True
				Exit
			End If
		Next
		
		If lb_alphaFound Then
			li_encoding = ENCODINGMODE_ALPHA
		Else
			li_encoding = 0
		End If
	End If
	
	// Fallback to Byte encoding if there was not match
	If li_encoding = 0 Then
		li_encoding = ENCODINGMODE_BYTE
		Exit
	End If
Next

Return li_encoding

end function

public function string of_plaintexttobinarybyte (string as_plaintext, boolean ab_utf8bom);//====================================================================
// Function: n_cst_qrcoder.of_plaintexttobinarybyte()
//--------------------------------------------------------------------
// Description: Converts the plaintext (byte) to a binary string
//--------------------------------------------------------------------
// Arguments:
// 	value	string 	as_plaintext	
// 	value	boolean	ab_utf8bom  	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_plaintexttobinarybyte ( string as_plaintext, boolean ab_utf8bom )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String 	ls_codeText
Long		ll_item, ll_itemCount
byte		lba_codeBytes[], lba_bom[] = {239, 187, 191}
Blob lblob_test
Integer li_idx, li_max

If of_isValidIso(as_plaintext) Then
	//lba_codeBytes = GetByteArray(blob(as_plaintext,EncodingANSI!)) //pb120
	lblob_test = Blob(as_plaintext,EncodingANSI!)
	li_max = Len(lblob_test)
	For li_idx = 1 To li_max
		lba_codeBytes[li_idx] = Byte(BlobMid(lblob_test, li_idx, 1))
	Next
Else
	If ab_utf8bom Then
		//lba_codeBytes = GetByteArray(blob(lba_bom) + blob(as_plaintext,EncodingUTF8!))		//pb120
		
		Blob lbhead
		Long lBlobLen
		Long lBytePos
		lBlobLen = UpperBound(lba_bom)
		lbhead = Blob(Space(lBlobLen), EncodingUTF8!)
		For lBytePos = 1 To lBlobLen
			BlobEdit(lbhead, lBytePos, lba_bom[lBytePos], EncodingUTF8!)
		Next
		
		lblob_test = lbhead + Blob(as_plaintext,EncodingUTF8!)
		li_max = Len(lblob_test)
		For li_idx = 1 To li_max
			lba_codeBytes[li_idx] = Byte(BlobMid(lblob_test, li_idx, 1))
		Next
	Else
		//lba_codeBytes = GetByteArray(blob(as_plaintext,EncodingUTF8!)) //pb120
		lblob_test = Blob(as_plaintext,EncodingUTF8!)
		li_max = Len(lblob_test)
		For li_idx = 1 To li_max
			lba_codeBytes[li_idx] = Byte(BlobMid(lblob_test, li_idx, 1))
		Next
	End If
End If

ll_itemCount = UpperBound(lba_codeBytes)
For ll_item = 1 To ll_itemCount
	ls_codeText += of_decToBin(lba_codeBytes[ll_item], 8)
Next

Return ls_codeText



end function

public function string of_plaintexttobinaryalpha (string as_plaintext, boolean ab_utf8bom);//====================================================================
// Function: n_cst_qrcoder.of_plaintexttobinaryalpha()
//--------------------------------------------------------------------
// Description: Converts the (alphanumeric) plaintext to a binary string
//--------------------------------------------------------------------
// Arguments:
// 	value	string 	as_plaintext	
// 	value	boolean	ab_utf8bom  	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_plaintexttobinaryalpha ( string as_plaintext, boolean ab_utf8bom )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String 	ls_codeText, ls_token
Long		ll_dec

Do While Len(as_plaintext) >= 2
	ls_token = Left(as_plaintext, 2)
	ll_dec = of_getAlphaNumeEncIndexByChar(Mid(ls_token, 1, 1)) * 45 + of_getAlphaNumeEncIndexByChar(Mid(ls_token, 2, 1))
	ls_codeText += of_decToBin(ll_dec, 11)
	as_plaintext = Mid(as_plaintext, 3)
Loop


If Len(as_plaintext) > 0 Then
	ls_codeText += of_decToBin(of_getAlphaNumeEncIndexByChar(as_plaintext),6)
End If

Return ls_codeText

end function

public function string of_plaintexttobinarynumeric (string as_plaintext, boolean ab_utf8bom);//====================================================================
// Function: n_cst_qrcoder.of_plaintexttobinarynumeric()
//--------------------------------------------------------------------
// Description: Converts the (numeric) plaintext to a binary string
//--------------------------------------------------------------------
// Arguments:
// 	value	string 	as_plaintext	
// 	value	boolean	ab_utf8bom  	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_plaintexttobinarynumeric ( string as_plaintext, boolean ab_utf8bom )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String	ls_codeText
Long		ll_dec

Do While Len(as_plaintext) >= 3
	ll_dec = Long(Left(as_plaintext,3))
	ls_codeText += of_decToBin(ll_dec, 10)
	as_plaintext = Mid(as_plaintext,4)
Loop

If Len(as_plaintext) = 2 Then
	ll_dec = Long(Left(as_plaintext, Len(as_plaintext)))
	ls_codeText += of_decToBin(ll_dec, 7)
ElseIf Len(as_plaintext) = 1 Then
	ll_dec = Long(Left(as_plaintext, Len(as_plaintext)))
	ls_codeText += of_decToBin(ll_dec, 4)
End If

Return ls_codeText

end function

public function string of_plaintexttobinary (string as_plaintext, integer li_encoding, boolean ab_utf8bom) throws throwable;//====================================================================
// Function: n_cst_qrcoder.of_plaintexttobinary()
//--------------------------------------------------------------------
// Description: Converts the plaintext to binary data related to the encoding
//--------------------------------------------------------------------
// Arguments:
// 	value	string 	as_plaintext	
// 	value	integer	li_encoding 	
// 	value	boolean	ab_utf8bom  	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_plaintexttobinary ( string as_plaintext, integer li_encoding, boolean ab_utf8bom )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Choose Case li_encoding
	Case ENCODINGMODE_NUMERIC
		Return of_plainTextToBinaryNumeric(as_plaintext, ab_utf8bom)
	Case ENCODINGMODE_ALPHA
		Return of_plainTextToBinaryAlpha(as_plaintext, ab_utf8bom)
	Case ENCODINGMODE_BYTE
		Return of_plainTextToBinaryByte(as_plaintext, ab_utf8bom)
	Case Else
		Throwable exception
		exception = Create Throwable
		exception.Text = "Unknown Encoding passed"
		throw exception
End Choose

Return ""

end function

public function string of_dectobin (long al_dec, long al_padleftupto);//====================================================================
// Function: n_cst_qrcoder.of_dectobin()
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
// Usage: n_cst_qrcoder.of_dectobin ( long al_dec, long al_padleftupto )
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

public function string of_dectobin (long al_dec);Return of_decToBin(al_dec, 0)

end function

public function long of_getalphanumeencindexbychar (string as_search);//====================================================================
// Function: n_cst_qrcoder.of_getalphanumeencindexbychar()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_search	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getalphanumeencindexbychar ( string as_search )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long ll_item, ll_itemCount

ll_itemCount = UpperBound(istra_alphanumEncDict)
For ll_item = 1 To ll_itemCount
	If istra_alphanumEncDict[ll_item].Character = as_search Then
		Return istra_alphanumEncDict[ll_item].Index
	End If
Next

Return -1

end function

public function boolean of_isvalidiso (string as_plaintext);//====================================================================
// Function: n_cst_qrcoder.of_isvalidiso()
//--------------------------------------------------------------------
// Description: Checks if the values is ANSI "convertable"
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_plaintext	
//--------------------------------------------------------------------
// Returns:  boolean
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_isvalidiso ( string as_plaintext )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Return as_plaintext = String(Blob(as_plaintext, EncodingANSI!), EncodingANSI!)

end function

public function boolean of_isutf8 (integer ai_encoding, string as_plaintext);Return ai_encoding = ENCODINGMODE_BYTE And Not of_isValidIso(as_plaintext)

end function

public function long of_getdatalength (integer ai_encoding, string as_plaintext, string as_codedtext);//====================================================================
// Function: n_cst_qrcoder.of_getdatalength()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	integer	ai_encoding 	
// 	value	string 	as_plaintext	
// 	value	string 	as_codedtext	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getdatalength ( integer ai_encoding, string as_plaintext, string as_codedtext )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

If of_isUtf8(ai_encoding, as_codedtext) Then
	Return Len(as_codedtext) / 8
Else
	Return Len(as_plaintext)
End If

end function

public function long of_getversion (long al_length, integer ai_encoding, character ac_ecclevel);//====================================================================
// Function: n_cst_qrcoder.of_getversion()
//--------------------------------------------------------------------
// Description: Checks for the version to use
//--------------------------------------------------------------------
// Arguments:
// 	value	long     	al_length  	
// 	value	integer  	ai_encoding	
// 	value	character	ac_ecclevel	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getversion ( long al_length, integer ai_encoding, character ac_ecclevel )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 	ll_version, ll_capIndex, ll_capCount, ll_detailIndex, ll_detailCount, ll_dictIndex, ll_dictCount

SetNull(ll_version)

ll_capCount = UpperBound(istra_capacityTable)
For ll_capIndex = 1 To ll_capCount
	ll_detailCount = UpperBound(istra_capacityTable[ll_capIndex].details)
	For ll_detailIndex = 1 To ll_detailCount
		If istra_capacityTable[ll_capIndex].details[ll_detailIndex].errorcorrectionlevel = ac_ecclevel Then
			ll_dictCount = UpperBound(istra_capacityTable[ll_capIndex].details[ll_detailIndex].capacitydict)
			For ll_dictIndex = 1 To ll_dictCount
				If istra_capacityTable[ll_capIndex].details[ll_detailIndex].capacitydict[ll_dictIndex].encoding = ai_encoding Then
					If istra_capacityTable[ll_capIndex].details[ll_detailIndex].capacitydict[ll_dictIndex].capacity >= al_length Then
						If IsNull(ll_version) Or &
							istra_capacityTable[ll_capIndex].version < ll_version Then
							ll_version = istra_capacityTable[ll_capIndex].version
						End If
					End If
				End If
			Next
		End If
	Next
Next

Return ll_version

end function

public function long of_getcountindicatorlength (long al_version, integer ai_encoding);//====================================================================
// Function: n_cst_qrcoder.of_getcountindicatorlength()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	long   	al_version 	
// 	value	integer	ai_encoding	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getcountindicatorlength ( long al_version, integer ai_encoding )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

If al_version < 10 Then
	If ai_encoding = ENCODINGMODE_NUMERIC Then
		Return 10
	ElseIf ai_encoding = ENCODINGMODE_ALPHA Then
		Return 9
	Else
		Return 8
	End If
ElseIf al_version < 27 Then
	If ai_encoding = ENCODINGMODE_NUMERIC Then
		Return 12
	ElseIf ai_encoding = ENCODINGMODE_ALPHA Then
		Return 11
	ElseIf ai_encoding = ENCODINGMODE_BYTE Then
		Return 16
	Else
		Return 10
	End If
Else
	If ai_encoding = ENCODINGMODE_NUMERIC Then
		Return 14
	ElseIf ai_encoding = ENCODINGMODE_ALPHA Then
		Return 13
	ElseIf ai_encoding = ENCODINGMODE_BYTE Then
		Return 16
	Else
		Return 12
	End If
End If

end function

public function n_cst_qrcode of_createqrcode (string as_plaintext, character ac_ecclevel, boolean ab_utf8bom) throws throwable;//====================================================================
// Function: n_cst_qrcoder.of_createqrcode()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string   	as_plaintext	
// 	value	character	ac_ecclevel 	
// 	value	boolean  	ab_utf8bom  	
//--------------------------------------------------------------------
// Returns:  n_cst_qrcode
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_createqrcode ( string as_plaintext, character ac_ecclevel, boolean ab_utf8bom )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String				ls_interleaveData
Long					ll_version
n_cst_qrcode 		lnv_qrcode

ls_interleaveData = of_getInterleaveData(as_plaintext, ac_ecclevel, ab_utf8bom, Ref ll_version)

lnv_qrcode = Create n_cst_qrcode
lnv_qrcode.of_init(ll_version, ls_interleaveData, of_getAlignmentPattern(ll_version).patternPositions, ac_ecclevel)

Return lnv_qrcode

end function

public function n_cst_qrcode of_createqrcode (string as_plaintext, character ac_ecclevel) throws throwable;Return of_createQrCode(as_plaintext, ac_ecclevel, False)

end function

public function boolean of_geteccinfo (long al_version, character ac_ecclevel, ref s_eccinfo rstr_eccinfo);//====================================================================
// Function: n_cst_qrcoder.of_geteccinfo()
//--------------------------------------------------------------------
// Description: Retrieves the ECC info field for version and level
//--------------------------------------------------------------------
// Arguments:
// 	value    	long     	al_version  	
// 	value    	character	ac_ecclevel 	
// 	reference	s_eccinfo	rstr_eccinfo	
//--------------------------------------------------------------------
// Returns:  boolean TRUE = found FALSE = not found
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_geteccinfo ( long al_version, character ac_ecclevel, ref s_eccinfo rstr_eccinfo )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


Long ll_eccIndex, ll_eccCount

ll_eccCount = UpperBound(istra_capacityECCTable)
For ll_eccIndex = 1 To ll_eccCount
	If istra_capacityECCTable[ll_eccIndex].version = al_version And istra_capacityECCTable[ll_eccIndex].ecclevel = ac_ecclevel Then
		rstr_eccinfo = istra_capacityECCTable[ll_eccIndex]
		Return True
	End If
Next

Return False

end function

public function string of_repeatestring (string as_string, long al_repeat);//====================================================================
// Function: n_cst_qrcoder.of_repeatestring()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_string	
// 	value	long  	al_repeat	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_repeatestring ( string as_string, long al_repeat )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================
Long		ll_index
String	ls_result

For ll_index = 1 To al_repeat
	ls_result += as_string
Next

Return ls_result

end function

public function long of_binarystringtoblocklist (string as_bitstring, ref string rsa_blocklist[]);//====================================================================
// Function: n_cst_qrcoder.of_binarystringtoblocklist()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value    	string	as_bitstring   	
// 	reference	string	rsa_blocklist[]	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_binarystringtoblocklist ( string as_bitstring, ref string rsa_blocklist[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long	ll_item = 1, ll_itemCount

ll_itemCount = Len(as_bitString)
Do
	rsa_blocklist[UpperBound(rsa_blocklist) +1] = Left(as_bitString, 8)
	as_bitString = Mid(as_bitString, 9)
	ll_item += 8
Loop Until ll_item > ll_itemCount Or Len(as_bitString) = 0

Return UpperBound(rsa_blocklist)

end function

public function string of_getinterleavedata (string as_plaintext, character ac_ecclevel, boolean ab_utf8bom, ref long rl_version) throws throwable;//====================================================================
// Function: n_cst_qrcoder.of_getinterleavedata()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value    	string   	as_plaintext	
// 	value    	character	ac_ecclevel 	
// 	value    	boolean  	ab_utf8bom  	
// 	reference	long     	rl_version  	
//--------------------------------------------------------------------
// Returns:  string
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getinterleavedata ( string as_plaintext, character ac_ecclevel, boolean ab_utf8bom, ref long rl_version )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Integer				li_encoding
Long					ll_dataInputLength, ll_dataLength, ll_lengthDiff, ll_eccIndex, ll_codeBlockIndex, ll_codeGroupIndex
String				ls_codedText, ls_modIndicator, ls_countIndicator, ls_bitString, ls_bitStr
String				lsa_codeWords[], lsa_eccCodeWords[], lsa_empty[], ls_interleavedData
n_cst_qrcode 		lnv_qrcode
s_eccinfo			lstr_eccinfo
s_codewordBlock	lstra_codeWordWithECC[], lstr_codeWord, lstr_codeWordEmpty

li_encoding = of_getEncodingmode(as_plaintext)
ls_codedText = of_plainTextToBinary(as_plaintext, li_encoding, ab_utf8bom)
ll_dataInputLength = of_getDataLength(li_encoding, as_plaintext, ls_codedText)
rl_version = of_getVersion(ll_dataInputLength, li_encoding, ac_ecclevel)

ls_modIndicator = of_decToBin(li_encoding, 4)
ls_countIndicator = of_decToBin(ll_dataInputLength, of_getCountIndicatorLength(rl_version, li_encoding));
ls_bitString = ls_modIndicator + ls_countIndicator
ls_bitString += ls_codedText

If Not of_getEccInfo(rl_version, ac_ecclevel, Ref lstr_eccinfo) Then
	Throwable excpEccInfoNoutFound
	excpEccInfoNoutFound = Create Throwable
	excpEccInfoNoutFound.Text = "Ecc Info not found"
	throw excpEccInfoNoutFound
End If

ll_dataLength = lstr_eccinfo.TotalDataCodewords * 8
ll_lengthDiff = ll_dataLength - Len(ls_bitString)

If ll_lengthDiff > 0 Then
	ls_bitString += of_repeateString('0', Min(ll_lengthDiff, 4))
End If

If Mod(Len(ls_bitString), 8) <> 0 Then
	ls_bitString += of_repeateString('0', 8 - Mod(Len(ls_bitString),8));
End If

Do While Len(ls_bitString) < ll_dataLength
	ls_bitString += "1110110000010001"
Loop

If Len(ls_bitString) > ll_dataLength Then
	ls_bitString = Left(ls_bitString, ll_dataLength)
End If

For ll_eccIndex = 0 To lstr_eccinfo.BlocksInGroup1 -1
	ls_bitStr = Mid(ls_bitString, ll_eccIndex * lstr_eccinfo.CodewordsInGroup1 * 8, lstr_eccinfo.CodewordsInGroup1 * 8)
	lstr_codeWord = lstr_codeWordEmpty
	lstr_codeWord.BitString = ls_bitStr
	lstr_codeWord.BlockNumber = ll_eccIndex + 1
	lstr_codeWord.GroupNumber = 1
	
	lsa_codeWords = lsa_empty
	of_binaryStringToBlockList(ls_bitStr, Ref lsa_codeWords)
	lstr_codeWord.CodeWords = lsa_codeWords
	
	lsa_eccCodeWords = lsa_empty
	of_calculateEccWords(ls_bitStr, lstr_eccinfo, Ref lsa_eccCodeWords)
	lstr_codeWord.EccWords = lsa_eccCodeWords
	
	lstra_codeWordWithECC[UpperBound(lstra_codeWordWithECC)+1] = lstr_codeWord
Next

ls_bitString = Mid(ls_bitString, lstr_eccinfo.BlocksInGroup1 * lstr_eccinfo.CodewordsInGroup1 * 8);

For ll_eccIndex = 0 To lstr_eccinfo.BlocksInGroup2 -1
	ls_bitStr = Mid(ls_bitString, ll_eccIndex * lstr_eccinfo.CodewordsInGroup2 * 8, lstr_eccinfo.CodewordsInGroup2 * 8)
	lstr_codeWord = lstr_codeWordEmpty
	lstr_codeWord.BitString = ls_bitStr
	lstr_codeWord.BlockNumber = ll_eccIndex + 1
	lstr_codeWord.GroupNumber = 1
	
	lsa_codeWords = lsa_empty
	of_binaryStringToBlockList(ls_bitStr, Ref lsa_codeWords)
	lstr_codeWord.CodeWords = lsa_codeWords
	
	lsa_eccCodeWords = lsa_empty
	of_calculateEccWords(ls_bitStr, lstr_eccinfo, Ref lsa_eccCodeWords)
	lstr_codeWord.EccWords = lsa_eccCodeWords
	
	lstra_codeWordWithECC[UpperBound(lstra_codeWordWithECC)+1] = lstr_codeWord
Next

For ll_codeGroupIndex = 1 To Max(lstr_eccinfo.CodewordsInGroup1, lstr_eccinfo.CodewordsInGroup2)
	For ll_codeBlockIndex = 1 To UpperBound(lstra_codeWordWithECC)
		If UpperBound(lstra_codeWordWithECC[ll_codeBlockIndex].CodeWords) >= ll_codeGroupIndex Then
			ls_interleavedData += lstra_codeWordWithECC[ll_codeBlockIndex].CodeWords[ll_codeGroupIndex]
		End If
	Next
Next

For ll_codeGroupIndex = 1 To lstr_eccinfo.EccPerBlock
	For ll_codeBlockIndex = 1 To UpperBound(lstra_codeWordWithECC)
		If UpperBound(lstra_codeWordWithECC[ll_codeBlockIndex].EccWords) >= ll_codeGroupIndex Then
			ls_interleavedData += lstra_codeWordWithECC[ll_codeBlockIndex].EccWords[ll_codeGroupIndex]
		End If
	Next
Next

ls_interleavedData += Fill('0', ila_remainderBits[rl_version])

Return ls_interleavedData

end function

public function s_polynom of_calculatemessagepolynom (string as_bitstring);//====================================================================
// Function: n_cst_qrcoder.of_calculatemessagepolynom()
//--------------------------------------------------------------------
// Description:  Caclulates the Message ploynom
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_bitstring	
//--------------------------------------------------------------------
// Returns:  s_polynom
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_calculatemessagepolynom ( string as_bitstring )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_index
s_polynom		lstr_polynom
s_polynomItem	lstr_polynomItem, lstr_polynomItemEmpty

For ll_index = Len(as_bitstring) / 8 To 1 Step -1
	lstr_polynomItem = lstr_polynomItemEmpty
	lstr_polynomItem.coefficient = of_binToDec(Left(as_bitstring, 8))
	lstr_polynomItem.Exponent = ll_index -1
	lstr_polynom.items[UpperBound(lstr_polynom.items) +1] = lstr_polynomItem
	as_bitstring = Mid(as_bitstring, 9)
Next

Return lstr_polynom

end function

public function long of_bintodec (string as_binstring);//====================================================================
// Function: n_cst_qrcoder.of_bintodec()
//--------------------------------------------------------------------
// Description: Converts a binary string to a long value
//--------------------------------------------------------------------
// Arguments:
// 	value	string	as_binstring	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_bintodec ( string as_binstring )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

String 	ls_digit
Long		ll_counter = 0, ll_result = 0

ls_digit = Mid(as_binString, Len(as_binString) - ll_counter, 1)
Do While ll_counter < Len(as_binString)
	If ls_digit = "1" Then
		ll_result += 2 ^ ll_counter
	End If
	ll_counter++
	ls_digit = Mid(as_binString, Len(as_binString) - ll_counter, 1)
Loop

Return ll_result

end function

public function long of_shrinkalphaexp (long al_alphaexp);Return Mod(al_alphaExp, 256) + Long(Truncate(al_alphaExp / 256, 0))

end function

public function s_polynom of_multiplyalphapolynoms (s_polynom lstr_polynombase, s_polynom lstr_polynommultiplier) throws throwable;//====================================================================
// Function: n_cst_qrcoder.of_multiplyalphapolynoms()
//--------------------------------------------------------------------
// Description: This method is to multiply two polynoms
//--------------------------------------------------------------------
// Arguments:
// 	value	s_polynom	lstr_polynombase      	
// 	value	s_polynom	lstr_polynommultiplier	
//--------------------------------------------------------------------
// Returns:  s_polynom
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_multiplyalphapolynoms ( s_polynom lstr_polynombase, s_polynom lstr_polynommultiplier )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_itemBase, ll_itemBaseCount, ll_itemMulti, ll_itemMultiCount, lla_exponentsToGlue[]
Long				ll_expIndex, ll_expCount, ll_coefficient, ll_resultIndex, ll_resultCount, ll_glueIndex, ll_glueCount
s_polynom 		lstr_result, lstr_result2
s_polynomItem	lstr_item, lstr_itemEmpty, lstra_gluedPolynoms[], lstr_gluedItem

ll_itemBaseCount = UpperBound(lstr_polynomBase.items)
For ll_itemBase = 1 To ll_itemBaseCount
	ll_itemMultiCount = UpperBound(lstr_polynomMultiplier.items)
	For ll_itemMulti = 1 To ll_itemMultiCount
		lstr_item = lstr_itemEmpty
		lstr_item.Coefficient = of_shrinkAlphaExp(lstr_polynomBase.items[ll_itemBase].Coefficient + lstr_polynomMultiplier.items[ll_itemMulti].Coefficient)
		lstr_item.Exponent = (lstr_polynomBase.items[ll_itemBase].Exponent + lstr_polynomMultiplier.items[ll_itemMulti].Exponent);
		lstr_result.items[UpperBound(lstr_result.items) +1] = lstr_item
	Next
Next

ll_expCount = of_getGlueExponents(lstr_result, Ref lla_exponentsToGlue)
For ll_expIndex = 1 To ll_expCount
	lstr_gluedItem = lstr_itemEmpty
	lstr_gluedItem.Exponent = lla_exponentsToGlue[ll_expIndex]
	ll_coefficient = 0
	
	ll_resultCount = UpperBound(lstr_result.items)
	For ll_resultIndex = 1 To ll_resultCount
		If lstr_result.items[ll_resultIndex].Exponent = lla_exponentsToGlue[ll_expIndex] Then
			ll_coefficient = of_bitwiseXor(ll_coefficient, of_getIntValFromAlphaExp(lstr_result.items[ll_resultIndex].Coefficient))
		End If
	Next
	lstr_gluedItem.Coefficient = of_getAlphaExpFromIntVal(ll_coefficient)
	lstra_gluedPolynoms[UpperBound(lstra_gluedPolynoms)+1] = lstr_gluedItem
Next

ll_resultCount = UpperBound(lstr_result.items)
For ll_resultIndex = 1 To ll_resultCount
	If Not of_isInArray(lla_exponentsToGlue, lstr_result.items[ll_resultIndex].Exponent) Then
		lstr_result2.items[UpperBound(lstr_result2.items) +1] = lstr_result.items[ll_resultIndex]
	End If
Next

ll_glueCount = UpperBound(lstra_gluedPolynoms)
For ll_glueIndex = 1 To ll_glueCount
	lstr_result2.items[UpperBound(lstr_result2.items)+1] = lstra_gluedPolynoms[ll_glueIndex]
Next

of_sortPolynomsByExponent(Ref lstr_result2)

Return lstr_result2

end function

public function s_polynom of_calculategeneratorpolynom (long al_eccwords) throws throwable;//====================================================================
// Function: n_cst_qrcoder.of_calculategeneratorpolynom()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_eccwords	
//--------------------------------------------------------------------
// Returns:  s_polynom
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_calculategeneratorpolynom ( long al_eccwords )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_index
s_polynom		lstr_generatorPolynom, lstr_multiplierPolynom, lstr_polynomEmpty
s_polynomItem	lstr_ploynomItem, lstr_polynomItemEmpty

lstr_ploynomItem = lstr_polynomItemEmpty
lstr_ploynomItem.Coefficient = 0
lstr_ploynomItem.Exponent = 1
lstr_generatorPolynom.items[UpperBound(lstr_generatorPolynom.items) +1] = lstr_ploynomItem

lstr_ploynomItem = lstr_polynomItemEmpty
lstr_ploynomItem.Coefficient = 0
lstr_ploynomItem.Exponent = 0
lstr_generatorPolynom.items[UpperBound(lstr_generatorPolynom.items) +1] = lstr_ploynomItem

For ll_index = 1 To al_eccWords -1
	lstr_multiplierPolynom = lstr_polynomEmpty
	
	lstr_ploynomItem = lstr_polynomItemEmpty
	lstr_ploynomItem.Coefficient = 0
	lstr_ploynomItem.Exponent = 1
	lstr_multiplierPolynom.items[UpperBound(lstr_multiplierPolynom.items) +1] = lstr_ploynomItem
	
	lstr_ploynomItem = lstr_polynomItemEmpty
	lstr_ploynomItem.Coefficient = ll_index
	lstr_ploynomItem.Exponent = 0
	lstr_multiplierPolynom.items[UpperBound(lstr_multiplierPolynom.items) +1] = lstr_ploynomItem
	
	lstr_generatorPolynom = of_multiplyAlphaPolynoms(lstr_generatorPolynom, lstr_multiplierPolynom)
Next

Return lstr_generatorPolynom


end function

public function long of_getglueexponents (s_polynom lstr_polynom, ref long rla_exponents[]);//====================================================================
// Function: n_cst_qrcoder.of_getglueexponents()
//--------------------------------------------------------------------
// Description: This is to retrieve the glue exponents
//--------------------------------------------------------------------
// Arguments:
// 	value    	s_polynom	lstr_polynom   	
// 	reference	long     	rla_exponents[]	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getglueexponents ( s_polynom lstr_polynom, ref long rla_exponents[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long	ll_count, ll_group, ll_lastGroup = -1, ll_index, ll_counter

of_sortPolynomsByExponent(Ref lstr_polynom)

ll_count = UpperBound(lstr_polynom.items)
For ll_index = 1 To ll_count
	ll_group = lstr_polynom.items[ll_index].exponent
	If ll_lastGroup <> ll_group Then
		ll_counter = 1
	Else
		ll_counter++
	End If
	
	If ll_counter = 2 Then
		rla_exponents[UpperBound(rla_exponents)+1] = ll_group
	End If
	ll_lastGroup = ll_group
Next

Return UpperBound(rla_exponents)

end function

public function long of_getalphaexpfromintval (long al_val);//====================================================================
// Function: n_cst_qrcoder.of_getalphaexpfromintval()
//--------------------------------------------------------------------
// Description: Search Alphae Exponent for Value
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_val	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getalphaexpfromintval ( long al_val )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long ll_index, ll_count

ll_count = UpperBound(istra_galoisField)
For ll_index = 1 To ll_count
	If istra_galoisField[ll_index].integerValue = al_val Then
		Return istra_galoisField[ll_index].exponentAlpha
	End If
Next

Return -1


end function

public function long of_getintvalfromalphaexp (long al_alphaexp);//====================================================================
// Function: n_cst_qrcoder.of_getintvalfromalphaexp()
//--------------------------------------------------------------------
// Description: Gets the Alpha Exp for the integer
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_alphaexp	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getintvalfromalphaexp ( long al_alphaexp )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================


Long	ll_index, ll_count

ll_count = UpperBound(istra_galoisField)
For ll_index = 1 To ll_count
	If istra_galoisField[ll_index].ExponentAlpha = al_alphaexp Then
		Return istra_galoisField[ll_index].integerValue
	End If
Next

Return -1

end function

public subroutine of_sortpolynomsbyexponent (ref s_polynom rstr_polynom);//====================================================================
// Function: n_cst_qrcoder.of_sortpolynomsbyexponent()
//--------------------------------------------------------------------
// Description: Sort Array (Desc)
//--------------------------------------------------------------------
// Arguments:
// 	reference	s_polynom	rstr_polynom	
//--------------------------------------------------------------------
// Returns:  (none)
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_sortpolynomsbyexponent ( ref s_polynom rstr_polynom )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 				ll_row
Boolean 			lb_sorted
s_polynomitem	lstr_help

Do
	lb_sorted = True
	For ll_row = 1 To UpperBound(rstr_polynom.items) -1
		If rstr_polynom.items[ll_row].Exponent < rstr_polynom.items[ll_row +1].Exponent Then
			lstr_help = rstr_polynom.items[ll_row]
			rstr_polynom.items[ll_row] = rstr_polynom.items[ll_row +1]
			rstr_polynom.items[ll_row +1] = lstr_help
			lb_sorted = False
		End If
	Next
Loop While Not lb_sorted

end subroutine

public function long of_calculateeccwords (string as_bitstring, s_eccinfo astr_eccinfo, ref string rsa_eccwords[]) throws throwable;//====================================================================
// Function: n_cst_qrcoder.of_calculateeccwords()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value    	string   	as_bitstring  	
// 	value    	s_eccinfo	astr_eccinfo  	
// 	reference	string   	rsa_eccwords[]	
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_calculateeccwords ( string as_bitstring, s_eccinfo astr_eccinfo, ref string rsa_eccwords[] )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long 				ll_eccWords, ll_index, ll_genLeadTermFactor, ll_index2
s_polynom		lstr_messagePolynom, lstr_generatorPolynom, lstr_leadTermSource, lstr_polyEmpty, lstr_leadTermSourceHelp
s_polynom		lstr_resPolynom

ll_eccWords = astr_eccinfo.EccPerBlock
lstr_messagePolynom = of_calculateMessagePolynom(as_bitString)
lstr_generatorPolynom = of_calculateGeneratorPolynom(ll_eccWords)

For ll_index = 1 To UpperBound(lstr_messagePolynom.items)
	lstr_messagePolynom.items[ll_index].exponent = lstr_messagePolynom.items[ll_index].exponent + ll_eccWords
Next

ll_genLeadTermFactor = lstr_messagePolynom.items[1].exponent - lstr_generatorPolynom.items[1].exponent
For ll_index = 1 To UpperBound(lstr_generatorPolynom.items)
	lstr_generatorPolynom.items[ll_index].exponent = lstr_generatorPolynom.items[ll_index].exponent + ll_genLeadTermFactor
Next

lstr_leadTermSource = lstr_messagePolynom
For ll_index = 1 To UpperBound(lstr_messagePolynom.items)
	If lstr_leadTermSource.items[1].coefficient = 0 Then
		For ll_index2 = 2 To UpperBound(lstr_leadTermSource.items)
			lstr_leadTermSourceHelp.items[ll_index2 -1] = lstr_leadTermSource.items[ll_index2]
		Next
		lstr_leadTermSource = lstr_leadTermSourceHelp
	Else
		lstr_resPolynom = of_multiplyGeneratorPolynomByLeadTerm(lstr_generatorPolynom, of_ConvertToAlphaNotation(lstr_leadTermSource).items[1], ll_index -1)
		lstr_resPolynom = of_convertToDecNotation(lstr_resPolynom)
		lstr_resPolynom = of_xorPolynoms(lstr_leadTermSource, lstr_resPolynom)
		lstr_leadTermSource = lstr_resPolynom
	End If
Next

For ll_index = 1 To UpperBound(lstr_leadTermSource.items)
	rsa_eccwords[ll_index] = of_decToBin(lstr_leadTermSource.items[ll_index].coefficient, 8)
Next

Return UpperBound(rsa_eccwords)

end function

public function s_polynom of_converttoalphanotation (s_polynom astr_polynom);//====================================================================
// Function: n_cst_qrcoder.of_converttoalphanotation()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	s_polynom	astr_polynom	
//--------------------------------------------------------------------
// Returns:  s_polynom
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_converttoalphanotation ( s_polynom astr_polynom )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_index, ll_count
s_polynom		lstr_result
s_polynomItem	lstr_item, lstr_empty

For ll_index = 1 To UpperBound(astr_polynom.items)
	lstr_item = lstr_empty
	If astr_polynom.items[ll_index].coefficient <> 0 Then
		lstr_item.coefficient = of_getAlphaExpFromIntVal(astr_polynom.items[ll_index].coefficient)
	Else
		lstr_item.coefficient = 0
	End If
	lstr_item.exponent = astr_polynom.items[ll_index].exponent
	lstr_result.items[UpperBound(lstr_result.items) +1] = lstr_item
Next

Return lstr_result

end function

public function s_polynom of_multiplygeneratorpolynombyleadterm (s_polynom astr_genpolynom, s_polynomitem astr_leadterm, long al_lowerexponentby);//====================================================================
// Function: n_cst_qrcoder.of_multiplygeneratorpolynombyleadterm()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	s_polynom    	astr_genpolynom   	
// 	value	s_polynomitem	astr_leadterm     	
// 	value	long         	al_lowerexponentby	
//--------------------------------------------------------------------
// Returns:  s_polynom
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_multiplygeneratorpolynombyleadterm ( s_polynom astr_genpolynom, s_polynomitem astr_leadterm, long al_lowerexponentby )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_index
s_polynom		lstr_result
s_polynomItem	lstr_item, lstr_empty

For ll_index = 1 To UpperBound(astr_genpolynom.items)
	lstr_item = lstr_empty
	lstr_item.Coefficient = Mod(astr_genpolynom.items[ll_index].Coefficient + astr_leadTerm.Coefficient,255);
	lstr_item.Exponent = astr_genpolynom.items[ll_index].Exponent - al_lowerExponentBy;
	lstr_result.items[UpperBound(lstr_result.items) +1] = lstr_item
Next

Return lstr_result

end function

public function s_polynom of_converttodecnotation (s_polynom astr_polynom);//====================================================================
// Function: n_cst_qrcoder.of_converttodecnotation()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	s_polynom	astr_polynom	
//--------------------------------------------------------------------
// Returns:  s_polynom
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_converttodecnotation ( s_polynom astr_polynom )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long	ll_index, ll_count

ll_count = UpperBound(astr_polynom.items)
For ll_index = 1 To ll_count
	astr_polynom.items[ll_index].coefficient = of_getIntValFromAlphaExp(astr_polynom.items[ll_index].coefficient)
Next

Return astr_polynom

end function

public function s_polynom of_xorpolynoms (s_polynom astr_messagepolynom, s_polynom astr_respolynom);//====================================================================
// Function: n_cst_qrcoder.of_xorpolynoms()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	s_polynom	astr_messagepolynom	
// 	value	s_polynom	astr_respolynom    	
//--------------------------------------------------------------------
// Returns:  s_polynom
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_xorpolynoms ( s_polynom astr_messagepolynom, s_polynom astr_respolynom )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long				ll_index
s_polynom 		lstr_longPoly, lstr_shortPoly, lstr_result, lstr_result2
s_polynomItem	lstr_item, lstr_empty

If UpperBound(astr_messagePolynom.items) >= UpperBound(astr_resPolynom.items) Then
	lstr_longPoly = astr_messagePolynom
	lstr_shortPoly = astr_resPolynom
Else
	lstr_longPoly = astr_resPolynom
	lstr_shortPoly = astr_messagePolynom
End If

For ll_index = 1 To UpperBound(lstr_longPoly.items)
	lstr_item = lstr_empty
	If UpperBound(lstr_shortPoly.items) >= ll_index Then
		lstr_item.Coefficient = of_bitwiseXor(lstr_longPoly.items[ll_index].Coefficient, lstr_shortPoly.items[ll_index].Coefficient)
	Else
		lstr_item.Coefficient = of_bitwiseXor(lstr_longPoly.items[ll_index].Coefficient, 0)
	End If
	lstr_item.Exponent = astr_messagePolynom.items[1].Exponent - (ll_index -1);
	lstr_result.items[UpperBound(lstr_result.items) +1] = lstr_item
Next

For ll_index = 2 To UpperBound(lstr_result.items)
	lstr_result2.items[ll_index -1] = lstr_result.items[ll_index]
Next

Return lstr_result2

end function

public function s_alignmentpattern of_getalignmentpattern (long al_version);//====================================================================
// Function: n_cst_qrcoder.of_getalignmentpattern()
//--------------------------------------------------------------------
// Description:
//--------------------------------------------------------------------
// Arguments:
// 	value	long	al_version	
//--------------------------------------------------------------------
// Returns:  s_alignmentpattern
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.of_getalignmentpattern ( long al_version )
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

Long	ll_index, ll_count

ll_count = UpperBound(istra_alignmentPatternTable)
For ll_index = 1 To ll_count
	If istra_alignmentPatternTable[ll_index].version = al_version Then
		Return istra_alignmentPatternTable[ll_index]
	End If
Next

s_alignmentPattern lstr_empty
Return lstr_empty

end function

on n_cst_qrcoder.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_qrcoder.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;//====================================================================
// Event: n_cst_qrcoder.constructor()
//--------------------------------------------------------------------
// Description: Initializing
//--------------------------------------------------------------------
// Arguments:
//--------------------------------------------------------------------
// Returns:  long
//--------------------------------------------------------------------
// Author:	PB.BaoGa		Date: 2021/09/20
//--------------------------------------------------------------------
// Usage: n_cst_qrcoder.constructor for n_cst_qrcoder
//--------------------------------------------------------------------
//	Copyright (c) PB.BaoGa(TM), All rights reserved.
//--------------------------------------------------------------------
// Modify History:
//
//====================================================================

of_createAntiLogTable(Ref istra_galoisField)
of_createAlphaNumEncDict(Ref istra_alphanumEncDict)
of_createCapacityTable(Ref istra_capacityTable)
of_createCapacityEccTable(Ref istra_capacityECCTable)
of_createAlignmentPatternTable(Ref istra_alignmentPatternTable)

Return 0

end event

