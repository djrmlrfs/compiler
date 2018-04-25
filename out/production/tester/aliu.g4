grammar Al;

//parser

allin   :   (defs )* EOF ;

defs : defun | defvars;
varname :   ID;
defvars :   defvar ';' ;
defvar  :   type  varname ('='  expr)? ;
typename:   ID;
type    :   (basetype | typename)  ('[' ']')* ;
basetype:   ('int' | 'bool' | 'void' | 'string') ;
funname :   ID;
defun   :   type funname '('  ')' block ;
block   :   '{' stmt* '}' ;
stmt    :   defvars
        |   ';'
        |   expr ';'    ;

expr:
		NEW (INT | STRING | BOOL ) ('[' expr ']')+ (NK)*
	|	expr ('[' expr ']')+
	|	expr Pnt expr
	|	Op1 expr
	|	('-' | '!' | '~') expr
	|	expr Op1
	|	expr Op3 expr
	|	expr Op4 expr
	|   expr Op5 expr
	|	expr Op6 expr
	|	varname
	|	Cnumber
	|	Cstring
	|	NULL
	|	TRUE
	|	FALSE
	|	'(' expr ')'
	|   <assoc=right> expr Equl expr
	;

NK  : '[]';
Equl: '=';
Pnt : '.' ;
Op1 : ('++' | '--');// op1 lval, lval op1, to opl
Op2 : ('-' | '!' | '~');//op2 int, ! bool, to int/bool
Op3 : ('+' | '-')
    ;
Op4 : ('>' | '<' | '>=' | '<=');//int op4 int to bool
Op5 : ('==' | '!=');    // int/str/bool op5 int/str/bool
Op6 : '&&' | '||' ;     //bool op6 bool to bool
exprs   :   expr (',' expr)* ;
//lexxer

STR  : '"' ('\\"' | '\\\\'|.)*? '"' ;

ID
    :	[a-zA-Z_] [a-zA-Z_0-9]*
    ;

NUM :  [1-9] [0-9]* | '0' ;

WS : ( ' ' | '\t' | '\n' | '\r' ) + -> skip;

LINE_COMMENT
    : '//' ~[\r\n]* -> skip
    ;