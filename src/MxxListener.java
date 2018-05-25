// Generated from D:/Homework/compiler/tt/src\Mxx.g4 by ANTLR 4.7
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MxxParser}.
 */
public interface MxxListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MxxParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MxxParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MxxParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#defclass}.
	 * @param ctx the parse tree
	 */
	void enterDefclass(MxxParser.DefclassContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#defclass}.
	 * @param ctx the parse tree
	 */
	void exitDefclass(MxxParser.DefclassContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#cbody}.
	 * @param ctx the parse tree
	 */
	void enterCbody(MxxParser.CbodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#cbody}.
	 * @param ctx the parse tree
	 */
	void exitCbody(MxxParser.CbodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#cname}.
	 * @param ctx the parse tree
	 */
	void enterCname(MxxParser.CnameContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#cname}.
	 * @param ctx the parse tree
	 */
	void exitCname(MxxParser.CnameContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#mthdef}.
	 * @param ctx the parse tree
	 */
	void enterMthdef(MxxParser.MthdefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#mthdef}.
	 * @param ctx the parse tree
	 */
	void exitMthdef(MxxParser.MthdefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#memdef}.
	 * @param ctx the parse tree
	 */
	void enterMemdef(MxxParser.MemdefContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#memdef}.
	 * @param ctx the parse tree
	 */
	void exitMemdef(MxxParser.MemdefContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#kh}.
	 * @param ctx the parse tree
	 */
	void enterKh(MxxParser.KhContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#kh}.
	 * @param ctx the parse tree
	 */
	void exitKh(MxxParser.KhContext ctx);
	/**
	 * Enter a parse tree produced by the {@code defvarno}
	 * labeled alternative in {@link MxxParser#defvar}.
	 * @param ctx the parse tree
	 */
	void enterDefvarno(MxxParser.DefvarnoContext ctx);
	/**
	 * Exit a parse tree produced by the {@code defvarno}
	 * labeled alternative in {@link MxxParser#defvar}.
	 * @param ctx the parse tree
	 */
	void exitDefvarno(MxxParser.DefvarnoContext ctx);
	/**
	 * Enter a parse tree produced by the {@code defvarhave}
	 * labeled alternative in {@link MxxParser#defvar}.
	 * @param ctx the parse tree
	 */
	void enterDefvarhave(MxxParser.DefvarhaveContext ctx);
	/**
	 * Exit a parse tree produced by the {@code defvarhave}
	 * labeled alternative in {@link MxxParser#defvar}.
	 * @param ctx the parse tree
	 */
	void exitDefvarhave(MxxParser.DefvarhaveContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#vtype}.
	 * @param ctx the parse tree
	 */
	void enterVtype(MxxParser.VtypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#vtype}.
	 * @param ctx the parse tree
	 */
	void exitVtype(MxxParser.VtypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#vbtp}.
	 * @param ctx the parse tree
	 */
	void enterVbtp(MxxParser.VbtpContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#vbtp}.
	 * @param ctx the parse tree
	 */
	void exitVbtp(MxxParser.VbtpContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#deffunc}.
	 * @param ctx the parse tree
	 */
	void enterDeffunc(MxxParser.DeffuncContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#deffunc}.
	 * @param ctx the parse tree
	 */
	void exitDeffunc(MxxParser.DeffuncContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#fbody}.
	 * @param ctx the parse tree
	 */
	void enterFbody(MxxParser.FbodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#fbody}.
	 * @param ctx the parse tree
	 */
	void exitFbody(MxxParser.FbodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#fname}.
	 * @param ctx the parse tree
	 */
	void enterFname(MxxParser.FnameContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#fname}.
	 * @param ctx the parse tree
	 */
	void exitFname(MxxParser.FnameContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#params}.
	 * @param ctx the parse tree
	 */
	void enterParams(MxxParser.ParamsContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#params}.
	 * @param ctx the parse tree
	 */
	void exitParams(MxxParser.ParamsContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#param}.
	 * @param ctx the parse tree
	 */
	void enterParam(MxxParser.ParamContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#param}.
	 * @param ctx the parse tree
	 */
	void exitParam(MxxParser.ParamContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#vname}.
	 * @param ctx the parse tree
	 */
	void enterVname(MxxParser.VnameContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#vname}.
	 * @param ctx the parse tree
	 */
	void exitVname(MxxParser.VnameContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#gvar}.
	 * @param ctx the parse tree
	 */
	void enterGvar(MxxParser.GvarContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#gvar}.
	 * @param ctx the parse tree
	 */
	void exitGvar(MxxParser.GvarContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#block}.
	 * @param ctx the parse tree
	 */
	void enterBlock(MxxParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#block}.
	 * @param ctx the parse tree
	 */
	void exitBlock(MxxParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by the {@code blockStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterBlockStmt(MxxParser.BlockStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code blockStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitBlockStmt(MxxParser.BlockStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(MxxParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(MxxParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code whileStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterWhileStmt(MxxParser.WhileStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code whileStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitWhileStmt(MxxParser.WhileStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code forStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterForStmt(MxxParser.ForStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code forStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitForStmt(MxxParser.ForStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code returnStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterReturnStmt(MxxParser.ReturnStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code returnStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitReturnStmt(MxxParser.ReturnStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code breakStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterBreakStmt(MxxParser.BreakStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code breakStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitBreakStmt(MxxParser.BreakStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code continueStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterContinueStmt(MxxParser.ContinueStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code continueStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitContinueStmt(MxxParser.ContinueStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code defvarStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterDefvarStmt(MxxParser.DefvarStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code defvarStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitDefvarStmt(MxxParser.DefvarStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code exprStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterExprStmt(MxxParser.ExprStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code exprStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitExprStmt(MxxParser.ExprStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code emptyStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterEmptyStmt(MxxParser.EmptyStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code emptyStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitEmptyStmt(MxxParser.EmptyStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#sob}.
	 * @param ctx the parse tree
	 */
	void enterSob(MxxParser.SobContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#sob}.
	 * @param ctx the parse tree
	 */
	void exitSob(MxxParser.SobContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#ifstat}.
	 * @param ctx the parse tree
	 */
	void enterIfstat(MxxParser.IfstatContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#ifstat}.
	 * @param ctx the parse tree
	 */
	void exitIfstat(MxxParser.IfstatContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#elseBlock}.
	 * @param ctx the parse tree
	 */
	void enterElseBlock(MxxParser.ElseBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#elseBlock}.
	 * @param ctx the parse tree
	 */
	void exitElseBlock(MxxParser.ElseBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#whilestat}.
	 * @param ctx the parse tree
	 */
	void enterWhilestat(MxxParser.WhilestatContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#whilestat}.
	 * @param ctx the parse tree
	 */
	void exitWhilestat(MxxParser.WhilestatContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#forstat}.
	 * @param ctx the parse tree
	 */
	void enterForstat(MxxParser.ForstatContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#forstat}.
	 * @param ctx the parse tree
	 */
	void exitForstat(MxxParser.ForstatContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#dotAtom}.
	 * @param ctx the parse tree
	 */
	void enterDotAtom(MxxParser.DotAtomContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#dotAtom}.
	 * @param ctx the parse tree
	 */
	void exitDotAtom(MxxParser.DotAtomContext ctx);
	/**
	 * Enter a parse tree produced by the {@code narr}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNarr(MxxParser.NarrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code narr}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNarr(MxxParser.NarrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code cstr}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterCstr(MxxParser.CstrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code cstr}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitCstr(MxxParser.CstrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code shift}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterShift(MxxParser.ShiftContext ctx);
	/**
	 * Exit a parse tree produced by the {@code shift}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitShift(MxxParser.ShiftContext ctx);
	/**
	 * Enter a parse tree produced by the {@code pnt2}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPnt2(MxxParser.Pnt2Context ctx);
	/**
	 * Exit a parse tree produced by the {@code pnt2}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPnt2(MxxParser.Pnt2Context ctx);
	/**
	 * Enter a parse tree produced by the {@code nvar}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNvar(MxxParser.NvarContext ctx);
	/**
	 * Exit a parse tree produced by the {@code nvar}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNvar(MxxParser.NvarContext ctx);
	/**
	 * Enter a parse tree produced by the {@code lor}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterLor(MxxParser.LorContext ctx);
	/**
	 * Exit a parse tree produced by the {@code lor}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitLor(MxxParser.LorContext ctx);
	/**
	 * Enter a parse tree produced by the {@code moreless}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMoreless(MxxParser.MorelessContext ctx);
	/**
	 * Exit a parse tree produced by the {@code moreless}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMoreless(MxxParser.MorelessContext ctx);
	/**
	 * Enter a parse tree produced by the {@code xkh}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterXkh(MxxParser.XkhContext ctx);
	/**
	 * Exit a parse tree produced by the {@code xkh}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitXkh(MxxParser.XkhContext ctx);
	/**
	 * Enter a parse tree produced by the {@code and}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAnd(MxxParser.AndContext ctx);
	/**
	 * Exit a parse tree produced by the {@code and}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAnd(MxxParser.AndContext ctx);
	/**
	 * Enter a parse tree produced by the {@code land}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterLand(MxxParser.LandContext ctx);
	/**
	 * Exit a parse tree produced by the {@code land}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitLand(MxxParser.LandContext ctx);
	/**
	 * Enter a parse tree produced by the {@code xor}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterXor(MxxParser.XorContext ctx);
	/**
	 * Exit a parse tree produced by the {@code xor}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitXor(MxxParser.XorContext ctx);
	/**
	 * Enter a parse tree produced by the {@code nvar2}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNvar2(MxxParser.Nvar2Context ctx);
	/**
	 * Exit a parse tree produced by the {@code nvar2}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNvar2(MxxParser.Nvar2Context ctx);
	/**
	 * Enter a parse tree produced by the {@code cfunCall}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterCfunCall(MxxParser.CfunCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code cfunCall}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitCfunCall(MxxParser.CfunCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code or}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterOr(MxxParser.OrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code or}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitOr(MxxParser.OrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code inarr}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterInarr(MxxParser.InarrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code inarr}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitInarr(MxxParser.InarrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code false}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterFalse(MxxParser.FalseContext ctx);
	/**
	 * Exit a parse tree produced by the {@code false}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitFalse(MxxParser.FalseContext ctx);
	/**
	 * Enter a parse tree produced by the {@code cnum}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterCnum(MxxParser.CnumContext ctx);
	/**
	 * Exit a parse tree produced by the {@code cnum}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitCnum(MxxParser.CnumContext ctx);
	/**
	 * Enter a parse tree produced by the {@code op2}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterOp2(MxxParser.Op2Context ctx);
	/**
	 * Exit a parse tree produced by the {@code op2}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitOp2(MxxParser.Op2Context ctx);
	/**
	 * Enter a parse tree produced by the {@code equal}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterEqual(MxxParser.EqualContext ctx);
	/**
	 * Exit a parse tree produced by the {@code equal}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitEqual(MxxParser.EqualContext ctx);
	/**
	 * Enter a parse tree produced by the {@code op1}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterOp1(MxxParser.Op1Context ctx);
	/**
	 * Exit a parse tree produced by the {@code op1}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitOp1(MxxParser.Op1Context ctx);
	/**
	 * Enter a parse tree produced by the {@code op4}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterOp4(MxxParser.Op4Context ctx);
	/**
	 * Exit a parse tree produced by the {@code op4}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitOp4(MxxParser.Op4Context ctx);
	/**
	 * Enter a parse tree produced by the {@code op3}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterOp3(MxxParser.Op3Context ctx);
	/**
	 * Exit a parse tree produced by the {@code op3}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitOp3(MxxParser.Op3Context ctx);
	/**
	 * Enter a parse tree produced by the {@code null}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNull(MxxParser.NullContext ctx);
	/**
	 * Exit a parse tree produced by the {@code null}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNull(MxxParser.NullContext ctx);
	/**
	 * Enter a parse tree produced by the {@code op5}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterOp5(MxxParser.Op5Context ctx);
	/**
	 * Exit a parse tree produced by the {@code op5}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitOp5(MxxParser.Op5Context ctx);
	/**
	 * Enter a parse tree produced by the {@code pnt}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPnt(MxxParser.PntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code pnt}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPnt(MxxParser.PntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code true}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterTrue(MxxParser.TrueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code true}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitTrue(MxxParser.TrueContext ctx);
	/**
	 * Enter a parse tree produced by the {@code funcCall}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterFuncCall(MxxParser.FuncCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code funcCall}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitFuncCall(MxxParser.FuncCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code assign}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAssign(MxxParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code assign}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAssign(MxxParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#index}.
	 * @param ctx the parse tree
	 */
	void enterIndex(MxxParser.IndexContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#index}.
	 * @param ctx the parse tree
	 */
	void exitIndex(MxxParser.IndexContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#variable}.
	 * @param ctx the parse tree
	 */
	void enterVariable(MxxParser.VariableContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#variable}.
	 * @param ctx the parse tree
	 */
	void exitVariable(MxxParser.VariableContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#cval}.
	 * @param ctx the parse tree
	 */
	void enterCval(MxxParser.CvalContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#cval}.
	 * @param ctx the parse tree
	 */
	void exitCval(MxxParser.CvalContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#lval}.
	 * @param ctx the parse tree
	 */
	void enterLval(MxxParser.LvalContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#lval}.
	 * @param ctx the parse tree
	 */
	void exitLval(MxxParser.LvalContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#exprs}.
	 * @param ctx the parse tree
	 */
	void enterExprs(MxxParser.ExprsContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#exprs}.
	 * @param ctx the parse tree
	 */
	void exitExprs(MxxParser.ExprsContext ctx);
}