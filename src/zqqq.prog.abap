*&---------------------------------------------------------------------*
*& Report  ZQQQ
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
REPORT ZQQQ.

*DATA(lo_struc) = CAST cl_abap_structdescr( ( cl_abap_typedescr=>describe_by_name( 'T100' ) ).
*
**DATA structdescr TYPE REF TO cl_abap_structdescr.
**structdescr ?= cl_abap_typedescr=>describe_by_name( 'T100' ).
*
**DATA components  TYPE abap_compdescr_tab.
**
**data(lt_tab) = value stringtab( for wa in structdescr->components ( wa-name ) ).
**
**break-point.

DATA(components) = CAST cl_abap_structdescr( cl_abap_typedescr=>describe_by_name( 'T100' ) )->components.

data(lt_tab) = value stringtab( for wa in CAST cl_abap_structdescr( cl_abap_typedescr=>describe_by_name( 'T100' ) )->components ( conv string( wa-name ) ) ).

break-point.
