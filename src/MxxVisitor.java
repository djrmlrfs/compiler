// Generated from D:/Homework/compiler/tester/src\Mxx.g4 by ANTLR 4.7
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
	 * Visit a parse tree produced by {@link MxxParser#defination}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefination(MxxParser.DefinationContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#defclass}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefclass(MxxParser.DefclassContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#cname}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCname(MxxParser.CnameContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#defmeth}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefmeth(MxxParser.DefmethContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#defcons}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefcons(MxxParser.DefconsContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#defvaris}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefvaris(MxxParser.DefvarisContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#vtype}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVtype(MxxParser.VtypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#tname}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTname(MxxParser.TnameContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#deffunc}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDeffunc(MxxParser.DeffuncContext ctx);
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
	 * Visit a parse tree produced by {@link MxxParser#block}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(MxxParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#state}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitState(MxxParser.StateContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr(MxxParser.ExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link MxxParser#exprs}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprs(MxxParser.ExprsContext ctx);
}