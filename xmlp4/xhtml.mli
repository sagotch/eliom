type elt =
  | Pcdata of string
  | Whitespace of string
  | Comment of string
  | Element of string * attrs * elt list
  | BlockElement of string * attrs * elt list
  | SemiBlockElement of string * attrs * elt list
and attrs = (string * string) list

type +'a t

val tot : elt -> 'a t
val toelt : 'a t -> elt
val toeltl : 'a t list -> elt list

(*
type tag = [ `Br | `Span | `Bdo | `Map | `Object | `Img | `Tt | `I | `B | `Big
           | `Small | `Em | `Strong | `Dfn | `Code | `Q | `Samp | `Kbd | `Var
           | `Cite | `Abbr | `Acronym | `Sub | `Sup | `Input | `Select
           | `Textarea | `Label | `Button | `Ins | `Del | `Script | `Noscript
           | `A | `H1 | `H2 | `H3 | `H4 | `H5 | `H6 | `Ul | `Ol | `Dl | `Pre
           | `Hr | `Blockquote | `Address | `P | `Div | `Fieldset | `Table
           | `Form | `Html | `Head | `Body | `Title | `Base | `Style | `Meta
           | `Link | `Li | `Dt | `Dd | `Param | `Area | `Optgroup | `Option
           | `Legend | `Caption | `Thead | `Tfoot | `Tbody | `Colgroup
           | `Col | `Tr | `Th | `Td ]
*)

type xhtml = [ `Html ]
type xhform = [ `Form ]
type xhalink = [ `A ]
type xhimg = [ `Img ]
type xhheadlink = [ `Link ]
type xhscript = [ `Script ]
type xhinput = [ `Input ]
type xhtextarea = [ `Textarea ]

type pcdata = [ `Pcdata ]

type xhnotag

type xhhtmlcont = [ `Body | `Head ]

type xhbodycont = [ `Address | `Blockquote | `Del | `Div | `Dl | `Fieldset
| `Form | `H1 | `H2 | `H3 | `H4 | `H5 | `H6 | `Hr | `Ins | `Noscript | `Ol
| `P | `Pre | `Script | `Table | `Ul ]

type xhdivcont = 
    [ `A | `Abbr | `Acronym | `Address | `B | `Bdo | `Big | `Blockquote | `Br | `Button | `Cite | `Code | `Del | `Dfn | `Div | `Dl | `Em | `Fieldset | `Form | `H1 | `H2 | `H3 | `H4 | `H5 | `H6 | `Hr | `I | `Img | `Input | `Ins | `Kbd | `Label | `Map | `Noscript | `Object | `Ol | `P | `Pcdata | `Pre | `Q | `Samp | `Script | `Select | `Small | `Span | `Strong | `Sub | `Sup | `Table | `Textarea | `Tt | `Ul | `Var ]

type xhobjectcont = 
 [ `A | `Abbr | `Acronym | `Address | `B | `Bdo | `Big | `Blockquote | `Br | `Button | `Cite | `Code | `Del | `Dfn | `Div | `Dl | `Em | `Fieldset | `Form | `H1 | `H2 | `H3 | `H4 | `H5 | `H6 | `Hr | `I | `Img | `Input | `Ins | `Kbd | `Label | `Map | `Noscript | `Object | `Ol | `P | `Param | `Pcdata | `Pre | `Q | `Samp | `Script | `Select | `Small | `Span | `Strong | `Sub | `Sup | `Table | `Textarea | `Tt | `Ul | `Var ]

type xhfieldsetcont = 
    [ `A | `Abbr | `Acronym | `Address | `B | `Bdo | `Big | `Blockquote | `Br | `Button | `Cite | `Code | `Del | `Dfn | `Div | `Dl | `Em | `Fieldset | `Form | `H1 | `H2 | `H3 | `H4 | `H5 | `H6 | `Hr | `I | `Img | `Input | `Ins | `Kbd | `Label | `Legend | `Map | `Noscript | `Object | `Ol | `P | `Pcdata | `Pre | `Q | `Samp | `Script | `Select | `Small | `Span | `Strong | `Sub | `Sup | `Table | `Textarea | `Tt | `Ul | `Var ]

type xhbuttoncont =
   [ `Abbr | `Acronym | `Address | `B | `Bdo | `Big | `Blockquote | `Br | `Cite | `Code | `Del | `Dfn | `Div | `Dl | `Em | `H1 | `H2 | `H3 | `H4 | `H5 | `H6 | `Hr | `I | `Img | `Ins | `Kbd | `Map | `Noscript | `Object | `Ol | `P | `Pcdata | `Pre | `Q | `Samp | `Script | `Small | `Span | `Strong | `Sub | `Sup | `Table | `Tt | `Ul | `Var ]

type xhheadcont =
    [ `Base | `Link | `Object | `Script | `Style | `Title ]

type xhformcont = 
    [ `Address | `Blockquote | `Del | `Div | `Dl | `Fieldset | `H1 | `H2 | `H3 | `H4 | `H5 | `H6 | `Hr | `Ins | `Noscript | `Ol | `P | `Pre | `Script | `Table | `Ul ]

type xhblockquotecont =
  [ `Address | `Blockquote | `Del | `Div | `Dl | `Fieldset | `Form | `H1 | `H2 | `H3 | `H4 | `H5 | `H6 | `Hr | `Ins | `Noscript | `Ol | `P | `Pre | `Script | `Table  | `Ul ]

type xhmapcont =
    [ `Address | `Area | `Blockquote | `Del | `Div | `Dl | `Fieldset | `Form | `H1 | `H2 | `H3 | `H4 | `H5 | `H6 | `Hr | `Ins | `Noscript | `Ol | `P | `Pre | `Script | `Table | `Ul ]

type xhinlinecont =
    [ `A | `Abbr | `Acronym | `B | `Bdo | `Big | `Br | `Button | `Cite | `Code | `Del | `Dfn | `Em | `I | `Img | `Input | `Ins | `Kbd | `Label | `Map | `Object | `Pcdata | `Q | `Samp | `Script | `Select | `Small | `Span | `Strong | `Sub | `Sup | `Textarea | `Tt | `Var ]

type xhlabelcont =
    [ `A | `Abbr | `Acronym | `B | `Bdo | `Big | `Br | `Button | `Cite | `Code | `Del | `Dfn | `Em | `I | `Img | `Input | `Ins | `Kbd | `Map | `Object | `Pcdata | `Q | `Samp | `Script | `Select | `Small | `Span | `Strong | `Sub | `Sup | `Textarea | `Tt | `Var ]

type xhacont =
    [ `Abbr | `Acronym | `B | `Bdo | `Big | `Br | `Button | `Cite | `Code | `Del | `Dfn | `Em | `I | `Img | `Input | `Ins | `Kbd | `Label | `Map | `Object | `Pcdata | `Q | `Samp | `Script | `Select | `Small | `Span | `Strong | `Sub | `Sup | `Textarea | `Tt | `Var ]

type xhprecont =
    [ `A | `Abbr | `Acronym | `B | `Bdo | `Br | `Cite | `Code | `Dfn | `Em | `I | `Kbd | `Map | `Pcdata | `Q | `Samp | `Script | `Span | `Strong | `Tt | `Var ]

type xhdlcont =
    [ `Dd | `Dt ]

type xhoptgroupcont = [ `Option ]

type xhcolgroupcont = [ `Col ]

type xhulcont = [ `Li ]

type xhselectcont = [ `Optgroup | `Option ]

type xhtbodycont = [ `Tr ]

type xhtablecont =
    [ `Caption | `Col | `Colgroup | `Tbody | `Tfoot | `Thead | `Tr ]

type xhtrcont = [ `Td | `Th ]

type xhabbrcont = xhinlinecont
type xhacronymcont = xhinlinecont
type xhaddresscont = xhinlinecont
type xhbcont = xhinlinecont
type xhbdocont = xhinlinecont
type xhbigcont = xhinlinecont
type xhcaptioncont = xhinlinecont
type xhcitecont = xhinlinecont
type xhcodecont = xhinlinecont
type xhdfncont = xhinlinecont
type xhdtcont = xhinlinecont
type xhemcont = xhinlinecont
type xhh1cont = xhinlinecont
type xhh2cont = xhinlinecont
type xhh3cont = xhinlinecont
type xhh4cont = xhinlinecont
type xhh5cont = xhinlinecont
type xhh6cont = xhinlinecont
type xhicont = xhinlinecont
type xhkbdcont = xhinlinecont
type xhlegendcont = xhinlinecont
type xhpcont = xhinlinecont
type xhqcont = xhinlinecont
type xhsampcont = xhinlinecont
type xhsmallcont = xhinlinecont
type xhspancont = xhinlinecont
type xhstrongcont = xhinlinecont
type xhsubcont = xhinlinecont
type xhsupcont = xhinlinecont
type xhttcont = xhinlinecont
type xhvarcont = xhinlinecont

type xhddcont = xhdivcont
type xhdelcont = xhdivcont
(* type xhdivcont = xhdivcont *)
type xhinscont = xhdivcont
type xhlicont = xhdivcont
type xhthcont = xhdivcont
type xhtdcont = xhdivcont

(* type xhtbodycont = xhbodycont *)
type xhnoscriptcont = xhbodycont

type xhareacont = xhnotag
type xhbasecont = xhnotag
type xhbrcont = xhnotag
type xhcolcont = xhnotag
type xhhrcont = xhnotag
type xhimgcont = xhnotag
type xhinputcont = xhnotag
type xhmetacont = xhnotag
type xhparamcont = xhnotag


(*
type xhobjectcont = xhobjectcont
type xhfieldsetcont = xhfieldsetcont
type xhheadcont = xhheadcont
type xhformcont = xhformcont
type xhmapcont = xhmapcont
type xhlabelcont = xhlabelcont
type xhacont = xhacont
type xhprecont = xhprecont
type xhdlcont = xhdlcont
type xhoptgroupcont = xhoptgroupcont
type xhcolgroupcont = xhcolgroupcont
type xhulcont = xhulcont
type xhselectcont = xhselectcont
type xhtablecont = xhtablecont
type xhtrcont = xhtrcont
type xhbuttoncont = xhbuttoncont
type xhblockquotecont = xhblockquotecont
*)

type xhlinkcont = pcdata
type xhoptioncont = pcdata
type xhscriptcont = pcdata
type xhstylecont = pcdata
type xhtextareacont = pcdata
type xhtitlecont = pcdata

type xholcont = xhulcont
type xhtheadcont = xhtbodycont
type xhtfootcont = xhtbodycont


val xh_print : xhtml t -> string

