set lang "C"
set moduleName "honeybee"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName1 "edge"
set BitWidth1 "192"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "0"
set Reference1 "0"
set Dims1 [list 0]
set Interface1 "wire"
set structMem1 ""
set PortName10 "p1"
set BitWidth10 "96"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "0"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set structMem10 ""
set PortName100 "x"
set BitWidth100 "32"
set ArrayOpt100 ""
set Const100 "0"
set Volatile100 "0"
set Pointer100 "0"
set Reference100 "0"
set Dims100 [list 0]
set Interface100 "wire"
set DataType100 "float"
set Port100 [list $PortName100 $Interface100 $DataType100 $Pointer100 $Dims100 $Const100 $Volatile100 $ArrayOpt100]
lappend structMem10 $Port100
set PortName101 "y"
set BitWidth101 "32"
set ArrayOpt101 ""
set Const101 "0"
set Volatile101 "0"
set Pointer101 "0"
set Reference101 "0"
set Dims101 [list 0]
set Interface101 "wire"
set DataType101 "float"
set Port101 [list $PortName101 $Interface101 $DataType101 $Pointer101 $Dims101 $Const101 $Volatile101 $ArrayOpt101]
lappend structMem10 $Port101
set PortName102 "z"
set BitWidth102 "32"
set ArrayOpt102 ""
set Const102 "0"
set Volatile102 "0"
set Pointer102 "0"
set Reference102 "0"
set Dims102 [list 0]
set Interface102 "wire"
set DataType102 "float"
set Port102 [list $PortName102 $Interface102 $DataType102 $Pointer102 $Dims102 $Const102 $Volatile102 $ArrayOpt102]
lappend structMem10 $Port102
set structParameter10 [list ]
set structArgument10 [list ]
set NameSpace10 [list ]
set structIsPacked10 "0"
set DataType10 [list "point_t" "struct point" $structMem10 0 0 $structParameter10 $structArgument10 $NameSpace10 $structIsPacked10]
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend structMem1 $Port10
set PortName11 "p2"
set BitWidth11 "96"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "0"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set structMem11 ""
set PortName110 "x"
set BitWidth110 "32"
set ArrayOpt110 ""
set Const110 "0"
set Volatile110 "0"
set Pointer110 "0"
set Reference110 "0"
set Dims110 [list 0]
set Interface110 "wire"
set DataType110 "float"
set Port110 [list $PortName110 $Interface110 $DataType110 $Pointer110 $Dims110 $Const110 $Volatile110 $ArrayOpt110]
lappend structMem11 $Port110
set PortName111 "y"
set BitWidth111 "32"
set ArrayOpt111 ""
set Const111 "0"
set Volatile111 "0"
set Pointer111 "0"
set Reference111 "0"
set Dims111 [list 0]
set Interface111 "wire"
set DataType111 "float"
set Port111 [list $PortName111 $Interface111 $DataType111 $Pointer111 $Dims111 $Const111 $Volatile111 $ArrayOpt111]
lappend structMem11 $Port111
set PortName112 "z"
set BitWidth112 "32"
set ArrayOpt112 ""
set Const112 "0"
set Volatile112 "0"
set Pointer112 "0"
set Reference112 "0"
set Dims112 [list 0]
set Interface112 "wire"
set DataType112 "float"
set Port112 [list $PortName112 $Interface112 $DataType112 $Pointer112 $Dims112 $Const112 $Volatile112 $ArrayOpt112]
lappend structMem11 $Port112
set structParameter11 [list ]
set structArgument11 [list ]
set NameSpace11 [list ]
set structIsPacked11 "0"
set DataType11 [list "point_t" "struct point" $structMem11 0 0 $structParameter11 $structArgument11 $NameSpace11 $structIsPacked11]
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend structMem1 $Port11
set structParameter1 [list ]
set structArgument1 [list ]
set NameSpace1 [list ]
set structIsPacked1 "0"
set DataType1 [list "edge_t" "struct edge" $structMem1 0 0 $structParameter1 $structArgument1 $NameSpace1 $structIsPacked1]
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName0 "return"
set BitWidth0 "32"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "0"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "int"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 0 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
