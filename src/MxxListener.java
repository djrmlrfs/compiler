// Generated from D:/Homework/compiler/tester/src\Mxx.g4 by ANTLR 4.7
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
	 * Enter a parse tree produced by {@link MxxParser#defination}.
	 * @param ctx the parse tree
	 */
	void enterDefination(MxxParser.DefinationContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#defination}.
	 * @param ctx the parse tree
	 */
	void exitDefination(MxxParser.DefinationContext ctx);
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
	 * Enter a parse tree produced by {@link MxxParser#defmeth}.
	 * @param ctx the parse tree
	 */
	void enterDefmeth(MxxParser.DefmethContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#defmeth}.
	 * @param ctx the parse tree
	 */
	void exitDefmeth(MxxParser.DefmethContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#defcons}.
	 * @param ctx the parse tree
	 */
	void enterDefcons(MxxParser.DefconsContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#defcons}.
	 * @param ctx the parse tree
	 */
	void exitDefcons(MxxParser.DefconsContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#defvaris}.
	 * @param ctx the parse tree
	 */
	void enterDefvaris(MxxParser.DefvarisContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#defvaris}.
	 * @param ctx the parse tree
	 */
	void exitDefvaris(MxxParser.DefvarisContext ctx);
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
	 * Enter a parse tree produced by {@link MxxParser#tname}.
	 * @param ctx the parse tree
	 */
	void enterTname(MxxParser.TnameContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#tname}.
	 * @param ctx the parse tree
	 */
	void exitTname(MxxParser.TnameContext ctx);
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
	 * Enter a parse tree produced by {@link MxxParser#state}.
	 * @param ctx the parse tree
	 */
	void enterState(MxxParser.StateContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#state}.
	 * @param ctx the parse tree
	 */
	void exitState(MxxParser.StateContext ctx);
	/**
	 * Enter a parse tree produced by {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(MxxParser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(MxxParser.ExprContext ctx);
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