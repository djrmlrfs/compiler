grammar Mxx;

program	:	defination+ EOF	;

defination
	:	deffunc
	|	defclass
	|	defvaris
	;

defclass :	CLASS cname '{' (defmeth | defvaris)* '}' ;
cname	:	ID ;
defmeth	:	deffunc	| defcons ;
defcons	:	fname '(' ')' block ;
defvaris :	vtype vname ('=' expr)? ';' ;

vtype
	:	INT ('[]')*
	|	BOOL ('[]')*
	|	STRING ('[]')*
	|	VOID
	|	tname ('[]')*
	;

tname	:	ID ;
deffunc	:	vtype fname '(' params? ')' block ;
fname	:	ID ;
params	:	param (',' param)* ;
param	:	vtype vname ;
vname	:	ID;
block	:	'{' state* '}' ;

state
	:	block
	|	IF '(' expr ')' state (ELSE state)?
	|	FOR '(' zzxp=expr? ';' pexp=expr? ';' zcxp=expr? ')' state
	|	WHILE '(' expr ')' state
	|	RETURN expr? ';'
	|	BREAK ';'
	|	CONTINUE ';'
	|	defvaris
	|	expr ';'
	|	';'
	;

expr
	:	fname '(' exprs? ')'
	|	NEW cname '('  ')'
	|	NEW (INT | STRING | BOOL | cname) ('[' expr ']')* ('[]')*
	|	expr ('[' expr ']')+
	|	expr Pnt='.' expr
	|	Op1=('++' | '--') expr
	|	Op2=('-' | '!' | '~') expr
	|	expr Op1=('++' | '--')
	|   expr Op3=('*' | '/' | '%' ) expr
	|   expr Op3_1=('+' | '-') expr
	|	expr Op3=('<<' | '>>') expr
	|   expr Op3=('&' | '^' | '|') expr
	|	expr Op4=('>' | '<' | '>=' | '<=') expr
	|   expr Op5=('==' | '!=') expr
	|	expr Op6=('&&' | '||') expr
	|	vname
	|	Cnumber
	|	Cstring
	|	NULL
	|	TRUE
	|	FALSE
	|	'(' expr ')'
	|   <assoc=right> expr Equl='=' expr
	;

exprs   :   expr (',' expr)* ;

//keywords

CLASS   :   'class';
INT     :   'int';
STRING  :   'string';
RETURN  :   'return';
BREAK   :   'break';
CONTINUE:   'continue';
IF      :   'if';
ELSE    :   'else';
WHILE   :   'while';
FOR     :   'for';
NEW     :   'new';
NULL    :   'null';
VOID    :   'void';
BOOL    :   'bool';
FALSE   :   'false';
TRUE    :   'true';

Cnumber :	[0-9]+;
Cstring :   '"' ('\\"' | '\\\\'|.)*? '"' ;
ID      :   [a-zA-Z_] [a-zA-Z_0-9]*;
Spaces  :   ( ' ' | '\t' | '\n' | '\r' ) + -> skip;
Comment :   '//' ~[\r\n]* -> skip;
Comm2   :	'/*' .*? '*/' -> skip;