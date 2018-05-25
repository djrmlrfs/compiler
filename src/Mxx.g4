grammar Mxx;

program  : (defclass | deffunc | gvar)+;
defclass : CLASS cname cbody;
cbody    : '{' (memdef | mthdef)* '}';
cname    : ID;
mthdef   : vtype? fname '(' params? ')' block;
memdef   : vtype vname  ';';
kh       : '[' ']' | '[]' ;
defvar
    :   vtype vname  ';'                  # defvarno
    |   vtype vname '=' expr ';'          # defvarhave
    ;
vtype    :   vbtp ( kh )* ;
vbtp     :   INT | BOOL | STRING | VOID | ID ;
deffunc  :   vtype fname '(' params? ')' fbody ;
fbody    : '{' stat* '}' ;
fname    :   ID ;
params   :   param (',' param)* ;
param    :   vtype vname ;
vname    :   ID | THIS ;
gvar     :   defvar  ;
block    : '{' stat* '}' ;
stat
    :   block                       #blockStmt
    |   ifstat                      #ifStmt
    |   whilestat                   #whileStmt
    |   forstat                     #forStmt
    |   RETURN expr? ';'            #returnStmt
    |   BREAK ';'                   #breakStmt
    |   CONTINUE ';'                #continueStmt
    |   defvar                      #defvarStmt
    |   expr ';'                    #exprStmt
    |   ';'                         #emptyStmt
    ;
sob    :   stat | block ;
ifstat :   IF '(' expr ')' sob elseBlock?  ;
elseBlock   :   ELSE sob ;
whilestat   :   WHILE '(' expr ')' sob ;
forstat     :   FOR '(' A=expr? ';' B=expr? ';' C=expr? ')' sob ;
dotAtom     :   fname '(' exprs? ')' |   variable ;
expr
    :   fname '(' exprs? ')'                                                        # funcCall
    |   cval '.' fname '(' exprs? ')'                                               # cfunCall
    |   NEW vbtp '(' exprs? ')'                                                     # nvar
    |   NEW vbtp                                                                    # nvar2
    |   NEW type=vbtp (index)+ (kh)*                                                # narr
    |   variable ('.' variable)+                                                    # pnt
    |   expr ('.' dotAtom)+                                                         # pnt2
    |   vname ('[' expr ']')*                                                       # inarr
    |   op=('!' |'~'|'-') expr                                                      # op1
    |   op=('--'|'++' ) lval                                                        # op2
    |   lval op=('++' | '--')                                                       # op3
    |   expr op=('*' | '/' | '%') expr                                              # op4
    |   expr op=('+' | '-') expr                                                    # op5
    |   expr op=('>>' | '<<') expr                                                  # shift
    |   expr op=('>' | '>=' |'<'| '<=') expr                                        # moreless
    |   expr op=('!=' | '==') expr                                                  # equal
    |   expr '&' expr                                                               # and
    |   expr '^' expr                                                               # xor
    |   expr '|' expr                                                               # or
    |   expr '&&' expr                                                              # land
    |   expr '||' expr                                                              # lor
    |   Cnum                                                                        # cnum
    |   Cstr                                                                        # cstr
    |   NULL                                                                        # null
    |   TRUE                                                                        # true
    |   FALSE                                                                       # false
    |   '(' expr ')'                                                                # xkh
    |   lval '=' expr                                                               # assign
    ;

index    :   '[' expr ']' ;
variable
    :   vname index*
    |   '(' NEW type=vbtp (index)+ ')'
    ;
cval    :   variable ('.' variable)*  ;
lval    :   variable ('.' variable)* ;
exprs   :   expr (',' expr)* ;

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
THIS    :   'this';
BRACKET :   '[]';

Cnum    :   [0-9]+;
Cstr    :   '"' ('\\"' | ~('"'|'\n') )* '"'  ;
ID	:	[a-zA-Z_] [a-zA-Z_0-9]*;

Ws: [ \t]+ -> skip;
Newl: ( '\r' '\n'? | '\n' ) -> skip;
Bcom: '/*' .*? '*/' -> skip;
Lcom: '//' ~[\r\n]* -> skip;