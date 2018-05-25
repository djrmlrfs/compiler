// Generated from D:/Homework/compiler/tt/src\Mxx.g4 by ANTLR 4.7
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MxxParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MxxVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MxxParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MxxParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#defclass}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefclass(MxxParser.DefclassContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#cbody}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCbody(MxxParser.CbodyContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#cname}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCname(MxxParser.CnameContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#mthdef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMthdef(MxxParser.MthdefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#memdef}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemdef(MxxParser.MemdefContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#kh}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitKh(MxxParser.KhContext ctx);
	/**
	 * Visit a parse tree produced by the {@code defvarno}
	 * labeled alternative in {@link MxxParser#defvar}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefvarno(MxxParser.DefvarnoContext ctx);
	/**
	 * Visit a parse tree produced by the {@code defvarhave}
	 * labeled alternative in {@link MxxParser#defvar}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefvarhave(MxxParser.DefvarhaveContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#vtype}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVtype(MxxParser.VtypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#vbtp}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVbtp(MxxParser.VbtpContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#deffunc}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeffunc(MxxParser.DeffuncContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#fbody}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFbody(MxxParser.FbodyContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#fname}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFname(MxxParser.FnameContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#params}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParams(MxxParser.ParamsContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#param}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParam(MxxParser.ParamContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#vname}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVname(MxxParser.VnameContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#gvar}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitGvar(MxxParser.GvarContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#block}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(MxxParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by the {@code blockStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlockStmt(MxxParser.BlockStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ifStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStmt(MxxParser.IfStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code whileStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStmt(MxxParser.WhileStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code forStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStmt(MxxParser.ForStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code returnStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturnStmt(MxxParser.ReturnStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code breakStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBreakStmt(MxxParser.BreakStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code continueStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitContinueStmt(MxxParser.ContinueStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code defvarStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefvarStmt(MxxParser.DefvarStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code exprStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprStmt(MxxParser.ExprStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code emptyStmt}
	 * labeled alternative in {@link MxxParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEmptyStmt(MxxParser.EmptyStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#sob}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSob(MxxParser.SobContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#ifstat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfstat(MxxParser.IfstatContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#elseBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitElseBlock(MxxParser.ElseBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#whilestat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhilestat(MxxParser.WhilestatContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#forstat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForstat(MxxParser.ForstatContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#dotAtom}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDotAtom(MxxParser.DotAtomContext ctx);
	/**
	 * Visit a parse tree produced by the {@code narr}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNarr(MxxParser.NarrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code cstr}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCstr(MxxParser.CstrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code shift}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShift(MxxParser.ShiftContext ctx);
	/**
	 * Visit a parse tree produced by the {@code pnt2}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPnt2(MxxParser.Pnt2Context ctx);
	/**
	 * Visit a parse tree produced by the {@code nvar}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNvar(MxxParser.NvarContext ctx);
	/**
	 * Visit a parse tree produced by the {@code lor}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLor(MxxParser.LorContext ctx);
	/**
	 * Visit a parse tree produced by the {@code moreless}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMoreless(MxxParser.MorelessContext ctx);
	/**
	 * Visit a parse tree produced by the {@code xkh}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitXkh(MxxParser.XkhContext ctx);
	/**
	 * Visit a parse tree produced by the {@code and}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAnd(MxxParser.AndContext ctx);
	/**
	 * Visit a parse tree produced by the {@code land}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLand(MxxParser.LandContext ctx);
	/**
	 * Visit a parse tree produced by the {@code xor}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitXor(MxxParser.XorContext ctx);
	/**
	 * Visit a parse tree produced by the {@code nvar2}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNvar2(MxxParser.Nvar2Context ctx);
	/**
	 * Visit a parse tree produced by the {@code cfunCall}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCfunCall(MxxParser.CfunCallContext ctx);
	/**
	 * Visit a parse tree produced by the {@code or}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOr(MxxParser.OrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code inarr}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInarr(MxxParser.InarrContext ctx);
	/**
	 * Visit a parse tree produced by the {@code false}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFalse(MxxParser.FalseContext ctx);
	/**
	 * Visit a parse tree produced by the {@code cnum}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCnum(MxxParser.CnumContext ctx);
	/**
	 * Visit a parse tree produced by the {@code op2}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOp2(MxxParser.Op2Context ctx);
	/**
	 * Visit a parse tree produced by the {@code equal}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEqual(MxxParser.EqualContext ctx);
	/**
	 * Visit a parse tree produced by the {@code op1}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOp1(MxxParser.Op1Context ctx);
	/**
	 * Visit a parse tree produced by the {@code op4}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOp4(MxxParser.Op4Context ctx);
	/**
	 * Visit a parse tree produced by the {@code op3}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOp3(MxxParser.Op3Context ctx);
	/**
	 * Visit a parse tree produced by the {@code null}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNull(MxxParser.NullContext ctx);
	/**
	 * Visit a parse tree produced by the {@code op5}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOp5(MxxParser.Op5Context ctx);
	/**
	 * Visit a parse tree produced by the {@code pnt}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPnt(MxxParser.PntContext ctx);
	/**
	 * Visit a parse tree produced by the {@code true}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTrue(MxxParser.TrueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code funcCall}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncCall(MxxParser.FuncCallContext ctx);
	/**
	 * Visit a parse tree produced by the {@code assign}
	 * labeled alternative in {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssign(MxxParser.AssignContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#index}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIndex(MxxParser.IndexContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#variable}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariable(MxxParser.VariableContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#cval}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCval(MxxParser.CvalContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#lval}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLval(MxxParser.LvalContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#exprs}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprs(MxxParser.ExprsContext ctx);
}