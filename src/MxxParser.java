// Generated from D:/Homework/compiler/tt/src\Mxx.g4 by ANTLR 4.7
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxxParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, CLASS=33, INT=34, STRING=35, RETURN=36, BREAK=37, CONTINUE=38, 
		IF=39, ELSE=40, WHILE=41, FOR=42, NEW=43, NULL=44, VOID=45, BOOL=46, FALSE=47, 
		TRUE=48, THIS=49, BRACKET=50, Cnum=51, Cstr=52, ID=53, Ws=54, Newl=55, 
		Bcom=56, Lcom=57;
	public static final int
		RULE_program = 0, RULE_defclass = 1, RULE_cbody = 2, RULE_cname = 3, RULE_mthdef = 4, 
		RULE_memdef = 5, RULE_kh = 6, RULE_defvar = 7, RULE_vtype = 8, RULE_vbtp = 9, 
		RULE_deffunc = 10, RULE_fbody = 11, RULE_fname = 12, RULE_params = 13, 
		RULE_param = 14, RULE_vname = 15, RULE_gvar = 16, RULE_block = 17, RULE_stat = 18, 
		RULE_sob = 19, RULE_ifstat = 20, RULE_elseBlock = 21, RULE_whilestat = 22, 
		RULE_forstat = 23, RULE_dotAtom = 24, RULE_expr = 25, RULE_index = 26, 
		RULE_variable = 27, RULE_cval = 28, RULE_lval = 29, RULE_exprs = 30;
	public static final String[] ruleNames = {
		"program", "defclass", "cbody", "cname", "mthdef", "memdef", "kh", "defvar", 
		"vtype", "vbtp", "deffunc", "fbody", "fname", "params", "param", "vname", 
		"gvar", "block", "stat", "sob", "ifstat", "elseBlock", "whilestat", "forstat", 
		"dotAtom", "expr", "index", "variable", "cval", "lval", "exprs"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'{'", "'}'", "'('", "')'", "';'", "'['", "']'", "'='", "','", "'.'", 
		"'!'", "'~'", "'-'", "'--'", "'++'", "'*'", "'/'", "'%'", "'+'", "'>>'", 
		"'<<'", "'>'", "'>='", "'<'", "'<='", "'!='", "'=='", "'&'", "'^'", "'|'", 
		"'&&'", "'||'", "'class'", "'int'", "'string'", "'return'", "'break'", 
		"'continue'", "'if'", "'else'", "'while'", "'for'", "'new'", "'null'", 
		"'void'", "'bool'", "'false'", "'true'", "'this'", "'[]'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, "CLASS", "INT", 
		"STRING", "RETURN", "BREAK", "CONTINUE", "IF", "ELSE", "WHILE", "FOR", 
		"NEW", "NULL", "VOID", "BOOL", "FALSE", "TRUE", "THIS", "BRACKET", "Cnum", 
		"Cstr", "ID", "Ws", "Newl", "Bcom", "Lcom"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Mxx.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MxxParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgramContext extends ParserRuleContext {
		public List<DefclassContext> defclass() {
			return getRuleContexts(DefclassContext.class);
		}
		public DefclassContext defclass(int i) {
			return getRuleContext(DefclassContext.class,i);
		}
		public List<DeffuncContext> deffunc() {
			return getRuleContexts(DeffuncContext.class);
		}
		public DeffuncContext deffunc(int i) {
			return getRuleContext(DeffuncContext.class,i);
		}
		public List<GvarContext> gvar() {
			return getRuleContexts(GvarContext.class);
		}
		public GvarContext gvar(int i) {
			return getRuleContext(GvarContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(65); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(65);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(62);
					defclass();
					}
					break;
				case 2:
					{
					setState(63);
					deffunc();
					}
					break;
				case 3:
					{
					setState(64);
					gvar();
					}
					break;
				}
				}
				setState(67); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << CLASS) | (1L << INT) | (1L << STRING) | (1L << VOID) | (1L << BOOL) | (1L << ID))) != 0) );
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DefclassContext extends ParserRuleContext {
		public TerminalNode CLASS() { return getToken(MxxParser.CLASS, 0); }
		public CnameContext cname() {
			return getRuleContext(CnameContext.class,0);
		}
		public CbodyContext cbody() {
			return getRuleContext(CbodyContext.class,0);
		}
		public DefclassContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_defclass; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterDefclass(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitDefclass(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitDefclass(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DefclassContext defclass() throws RecognitionException {
		DefclassContext _localctx = new DefclassContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_defclass);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(69);
			match(CLASS);
			setState(70);
			cname();
			setState(71);
			cbody();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CbodyContext extends ParserRuleContext {
		public List<MemdefContext> memdef() {
			return getRuleContexts(MemdefContext.class);
		}
		public MemdefContext memdef(int i) {
			return getRuleContext(MemdefContext.class,i);
		}
		public List<MthdefContext> mthdef() {
			return getRuleContexts(MthdefContext.class);
		}
		public MthdefContext mthdef(int i) {
			return getRuleContext(MthdefContext.class,i);
		}
		public CbodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_cbody; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterCbody(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitCbody(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitCbody(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CbodyContext cbody() throws RecognitionException {
		CbodyContext _localctx = new CbodyContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_cbody);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(73);
			match(T__0);
			setState(78);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << STRING) | (1L << VOID) | (1L << BOOL) | (1L << ID))) != 0)) {
				{
				setState(76);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
				case 1:
					{
					setState(74);
					memdef();
					}
					break;
				case 2:
					{
					setState(75);
					mthdef();
					}
					break;
				}
				}
				setState(80);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(81);
			match(T__1);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CnameContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MxxParser.ID, 0); }
		public CnameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_cname; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterCname(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitCname(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitCname(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CnameContext cname() throws RecognitionException {
		CnameContext _localctx = new CnameContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_cname);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(83);
			match(ID);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MthdefContext extends ParserRuleContext {
		public FnameContext fname() {
			return getRuleContext(FnameContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public VtypeContext vtype() {
			return getRuleContext(VtypeContext.class,0);
		}
		public ParamsContext params() {
			return getRuleContext(ParamsContext.class,0);
		}
		public MthdefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_mthdef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterMthdef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitMthdef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitMthdef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MthdefContext mthdef() throws RecognitionException {
		MthdefContext _localctx = new MthdefContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_mthdef);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(86);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				{
				setState(85);
				vtype();
				}
				break;
			}
			setState(88);
			fname();
			setState(89);
			match(T__2);
			setState(91);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << STRING) | (1L << VOID) | (1L << BOOL) | (1L << ID))) != 0)) {
				{
				setState(90);
				params();
				}
			}

			setState(93);
			match(T__3);
			setState(94);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MemdefContext extends ParserRuleContext {
		public VtypeContext vtype() {
			return getRuleContext(VtypeContext.class,0);
		}
		public VnameContext vname() {
			return getRuleContext(VnameContext.class,0);
		}
		public MemdefContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_memdef; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterMemdef(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitMemdef(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitMemdef(this);
			else return visitor.visitChildren(this);
		}
	}

	public final MemdefContext memdef() throws RecognitionException {
		MemdefContext _localctx = new MemdefContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_memdef);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(96);
			vtype();
			setState(97);
			vname();
			setState(98);
			match(T__4);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class KhContext extends ParserRuleContext {
		public KhContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_kh; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterKh(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitKh(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitKh(this);
			else return visitor.visitChildren(this);
		}
	}

	public final KhContext kh() throws RecognitionException {
		KhContext _localctx = new KhContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_kh);
		try {
			setState(103);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__5:
				enterOuterAlt(_localctx, 1);
				{
				setState(100);
				match(T__5);
				setState(101);
				match(T__6);
				}
				break;
			case BRACKET:
				enterOuterAlt(_localctx, 2);
				{
				setState(102);
				match(BRACKET);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DefvarContext extends ParserRuleContext {
		public DefvarContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_defvar; }
	 
		public DefvarContext() { }
		public void copyFrom(DefvarContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class DefvarnoContext extends DefvarContext {
		public VtypeContext vtype() {
			return getRuleContext(VtypeContext.class,0);
		}
		public VnameContext vname() {
			return getRuleContext(VnameContext.class,0);
		}
		public DefvarnoContext(DefvarContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterDefvarno(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitDefvarno(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitDefvarno(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class DefvarhaveContext extends DefvarContext {
		public VtypeContext vtype() {
			return getRuleContext(VtypeContext.class,0);
		}
		public VnameContext vname() {
			return getRuleContext(VnameContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public DefvarhaveContext(DefvarContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterDefvarhave(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitDefvarhave(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitDefvarhave(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DefvarContext defvar() throws RecognitionException {
		DefvarContext _localctx = new DefvarContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_defvar);
		try {
			setState(115);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,7,_ctx) ) {
			case 1:
				_localctx = new DefvarnoContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(105);
				vtype();
				setState(106);
				vname();
				setState(107);
				match(T__4);
				}
				break;
			case 2:
				_localctx = new DefvarhaveContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(109);
				vtype();
				setState(110);
				vname();
				setState(111);
				match(T__7);
				setState(112);
				expr(0);
				setState(113);
				match(T__4);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VtypeContext extends ParserRuleContext {
		public VbtpContext vbtp() {
			return getRuleContext(VbtpContext.class,0);
		}
		public List<KhContext> kh() {
			return getRuleContexts(KhContext.class);
		}
		public KhContext kh(int i) {
			return getRuleContext(KhContext.class,i);
		}
		public VtypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_vtype; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterVtype(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitVtype(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitVtype(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VtypeContext vtype() throws RecognitionException {
		VtypeContext _localctx = new VtypeContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_vtype);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(117);
			vbtp();
			setState(121);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__5 || _la==BRACKET) {
				{
				{
				setState(118);
				kh();
				}
				}
				setState(123);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VbtpContext extends ParserRuleContext {
		public TerminalNode INT() { return getToken(MxxParser.INT, 0); }
		public TerminalNode BOOL() { return getToken(MxxParser.BOOL, 0); }
		public TerminalNode STRING() { return getToken(MxxParser.STRING, 0); }
		public TerminalNode VOID() { return getToken(MxxParser.VOID, 0); }
		public TerminalNode ID() { return getToken(MxxParser.ID, 0); }
		public VbtpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_vbtp; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterVbtp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitVbtp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitVbtp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VbtpContext vbtp() throws RecognitionException {
		VbtpContext _localctx = new VbtpContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_vbtp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(124);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << STRING) | (1L << VOID) | (1L << BOOL) | (1L << ID))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DeffuncContext extends ParserRuleContext {
		public VtypeContext vtype() {
			return getRuleContext(VtypeContext.class,0);
		}
		public FnameContext fname() {
			return getRuleContext(FnameContext.class,0);
		}
		public FbodyContext fbody() {
			return getRuleContext(FbodyContext.class,0);
		}
		public ParamsContext params() {
			return getRuleContext(ParamsContext.class,0);
		}
		public DeffuncContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_deffunc; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterDeffunc(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitDeffunc(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitDeffunc(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DeffuncContext deffunc() throws RecognitionException {
		DeffuncContext _localctx = new DeffuncContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_deffunc);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(126);
			vtype();
			setState(127);
			fname();
			setState(128);
			match(T__2);
			setState(130);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << STRING) | (1L << VOID) | (1L << BOOL) | (1L << ID))) != 0)) {
				{
				setState(129);
				params();
				}
			}

			setState(132);
			match(T__3);
			setState(133);
			fbody();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FbodyContext extends ParserRuleContext {
		public List<StatContext> stat() {
			return getRuleContexts(StatContext.class);
		}
		public StatContext stat(int i) {
			return getRuleContext(StatContext.class,i);
		}
		public FbodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fbody; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterFbody(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitFbody(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitFbody(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FbodyContext fbody() throws RecognitionException {
		FbodyContext _localctx = new FbodyContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_fbody);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(135);
			match(T__0);
			setState(139);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__2) | (1L << T__4) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << INT) | (1L << STRING) | (1L << RETURN) | (1L << BREAK) | (1L << CONTINUE) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << NEW) | (1L << NULL) | (1L << VOID) | (1L << BOOL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
				{
				{
				setState(136);
				stat();
				}
				}
				setState(141);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(142);
			match(T__1);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FnameContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MxxParser.ID, 0); }
		public FnameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_fname; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterFname(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitFname(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitFname(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FnameContext fname() throws RecognitionException {
		FnameContext _localctx = new FnameContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_fname);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(144);
			match(ID);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ParamsContext extends ParserRuleContext {
		public List<ParamContext> param() {
			return getRuleContexts(ParamContext.class);
		}
		public ParamContext param(int i) {
			return getRuleContext(ParamContext.class,i);
		}
		public ParamsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_params; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterParams(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitParams(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitParams(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ParamsContext params() throws RecognitionException {
		ParamsContext _localctx = new ParamsContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_params);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(146);
			param();
			setState(151);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__8) {
				{
				{
				setState(147);
				match(T__8);
				setState(148);
				param();
				}
				}
				setState(153);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ParamContext extends ParserRuleContext {
		public VtypeContext vtype() {
			return getRuleContext(VtypeContext.class,0);
		}
		public VnameContext vname() {
			return getRuleContext(VnameContext.class,0);
		}
		public ParamContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_param; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterParam(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitParam(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitParam(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ParamContext param() throws RecognitionException {
		ParamContext _localctx = new ParamContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_param);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(154);
			vtype();
			setState(155);
			vname();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VnameContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MxxParser.ID, 0); }
		public TerminalNode THIS() { return getToken(MxxParser.THIS, 0); }
		public VnameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_vname; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterVname(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitVname(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitVname(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VnameContext vname() throws RecognitionException {
		VnameContext _localctx = new VnameContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_vname);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(157);
			_la = _input.LA(1);
			if ( !(_la==THIS || _la==ID) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class GvarContext extends ParserRuleContext {
		public DefvarContext defvar() {
			return getRuleContext(DefvarContext.class,0);
		}
		public GvarContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_gvar; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterGvar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitGvar(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitGvar(this);
			else return visitor.visitChildren(this);
		}
	}

	public final GvarContext gvar() throws RecognitionException {
		GvarContext _localctx = new GvarContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_gvar);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(159);
			defvar();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockContext extends ParserRuleContext {
		public List<StatContext> stat() {
			return getRuleContexts(StatContext.class);
		}
		public StatContext stat(int i) {
			return getRuleContext(StatContext.class,i);
		}
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(161);
			match(T__0);
			setState(165);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__2) | (1L << T__4) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << INT) | (1L << STRING) | (1L << RETURN) | (1L << BREAK) | (1L << CONTINUE) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << NEW) | (1L << NULL) | (1L << VOID) | (1L << BOOL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
				{
				{
				setState(162);
				stat();
				}
				}
				setState(167);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(168);
			match(T__1);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatContext extends ParserRuleContext {
		public StatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stat; }
	 
		public StatContext() { }
		public void copyFrom(StatContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class DefvarStmtContext extends StatContext {
		public DefvarContext defvar() {
			return getRuleContext(DefvarContext.class,0);
		}
		public DefvarStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterDefvarStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitDefvarStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitDefvarStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ForStmtContext extends StatContext {
		public ForstatContext forstat() {
			return getRuleContext(ForstatContext.class,0);
		}
		public ForStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterForStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitForStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitForStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExprStmtContext extends StatContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterExprStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitExprStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitExprStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class WhileStmtContext extends StatContext {
		public WhilestatContext whilestat() {
			return getRuleContext(WhilestatContext.class,0);
		}
		public WhileStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterWhileStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitWhileStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitWhileStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class IfStmtContext extends StatContext {
		public IfstatContext ifstat() {
			return getRuleContext(IfstatContext.class,0);
		}
		public IfStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterIfStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitIfStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitIfStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BlockStmtContext extends StatContext {
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public BlockStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterBlockStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitBlockStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitBlockStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BreakStmtContext extends StatContext {
		public TerminalNode BREAK() { return getToken(MxxParser.BREAK, 0); }
		public BreakStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterBreakStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitBreakStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitBreakStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class EmptyStmtContext extends StatContext {
		public EmptyStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterEmptyStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitEmptyStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitEmptyStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ReturnStmtContext extends StatContext {
		public TerminalNode RETURN() { return getToken(MxxParser.RETURN, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ReturnStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterReturnStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitReturnStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitReturnStmt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ContinueStmtContext extends StatContext {
		public TerminalNode CONTINUE() { return getToken(MxxParser.CONTINUE, 0); }
		public ContinueStmtContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterContinueStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitContinueStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitContinueStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StatContext stat() throws RecognitionException {
		StatContext _localctx = new StatContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_stat);
		int _la;
		try {
			setState(188);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,14,_ctx) ) {
			case 1:
				_localctx = new BlockStmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(170);
				block();
				}
				break;
			case 2:
				_localctx = new IfStmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(171);
				ifstat();
				}
				break;
			case 3:
				_localctx = new WhileStmtContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(172);
				whilestat();
				}
				break;
			case 4:
				_localctx = new ForStmtContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(173);
				forstat();
				}
				break;
			case 5:
				_localctx = new ReturnStmtContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(174);
				match(RETURN);
				setState(176);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << NEW) | (1L << NULL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
					{
					setState(175);
					expr(0);
					}
				}

				setState(178);
				match(T__4);
				}
				break;
			case 6:
				_localctx = new BreakStmtContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(179);
				match(BREAK);
				setState(180);
				match(T__4);
				}
				break;
			case 7:
				_localctx = new ContinueStmtContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(181);
				match(CONTINUE);
				setState(182);
				match(T__4);
				}
				break;
			case 8:
				_localctx = new DefvarStmtContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(183);
				defvar();
				}
				break;
			case 9:
				_localctx = new ExprStmtContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(184);
				expr(0);
				setState(185);
				match(T__4);
				}
				break;
			case 10:
				_localctx = new EmptyStmtContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(187);
				match(T__4);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SobContext extends ParserRuleContext {
		public StatContext stat() {
			return getRuleContext(StatContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public SobContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sob; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterSob(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitSob(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitSob(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SobContext sob() throws RecognitionException {
		SobContext _localctx = new SobContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_sob);
		try {
			setState(192);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,15,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(190);
				stat();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(191);
				block();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IfstatContext extends ParserRuleContext {
		public TerminalNode IF() { return getToken(MxxParser.IF, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SobContext sob() {
			return getRuleContext(SobContext.class,0);
		}
		public ElseBlockContext elseBlock() {
			return getRuleContext(ElseBlockContext.class,0);
		}
		public IfstatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifstat; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterIfstat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitIfstat(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitIfstat(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IfstatContext ifstat() throws RecognitionException {
		IfstatContext _localctx = new IfstatContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_ifstat);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(194);
			match(IF);
			setState(195);
			match(T__2);
			setState(196);
			expr(0);
			setState(197);
			match(T__3);
			setState(198);
			sob();
			setState(200);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
			case 1:
				{
				setState(199);
				elseBlock();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ElseBlockContext extends ParserRuleContext {
		public TerminalNode ELSE() { return getToken(MxxParser.ELSE, 0); }
		public SobContext sob() {
			return getRuleContext(SobContext.class,0);
		}
		public ElseBlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_elseBlock; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterElseBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitElseBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitElseBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ElseBlockContext elseBlock() throws RecognitionException {
		ElseBlockContext _localctx = new ElseBlockContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_elseBlock);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(202);
			match(ELSE);
			setState(203);
			sob();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class WhilestatContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(MxxParser.WHILE, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SobContext sob() {
			return getRuleContext(SobContext.class,0);
		}
		public WhilestatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whilestat; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterWhilestat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitWhilestat(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitWhilestat(this);
			else return visitor.visitChildren(this);
		}
	}

	public final WhilestatContext whilestat() throws RecognitionException {
		WhilestatContext _localctx = new WhilestatContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_whilestat);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(205);
			match(WHILE);
			setState(206);
			match(T__2);
			setState(207);
			expr(0);
			setState(208);
			match(T__3);
			setState(209);
			sob();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForstatContext extends ParserRuleContext {
		public ExprContext A;
		public ExprContext B;
		public ExprContext C;
		public TerminalNode FOR() { return getToken(MxxParser.FOR, 0); }
		public SobContext sob() {
			return getRuleContext(SobContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ForstatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forstat; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterForstat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitForstat(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitForstat(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForstatContext forstat() throws RecognitionException {
		ForstatContext _localctx = new ForstatContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_forstat);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(211);
			match(FOR);
			setState(212);
			match(T__2);
			setState(214);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << NEW) | (1L << NULL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
				{
				setState(213);
				((ForstatContext)_localctx).A = expr(0);
				}
			}

			setState(216);
			match(T__4);
			setState(218);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << NEW) | (1L << NULL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
				{
				setState(217);
				((ForstatContext)_localctx).B = expr(0);
				}
			}

			setState(220);
			match(T__4);
			setState(222);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << NEW) | (1L << NULL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
				{
				setState(221);
				((ForstatContext)_localctx).C = expr(0);
				}
			}

			setState(224);
			match(T__3);
			setState(225);
			sob();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DotAtomContext extends ParserRuleContext {
		public FnameContext fname() {
			return getRuleContext(FnameContext.class,0);
		}
		public ExprsContext exprs() {
			return getRuleContext(ExprsContext.class,0);
		}
		public VariableContext variable() {
			return getRuleContext(VariableContext.class,0);
		}
		public DotAtomContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dotAtom; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterDotAtom(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitDotAtom(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitDotAtom(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DotAtomContext dotAtom() throws RecognitionException {
		DotAtomContext _localctx = new DotAtomContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_dotAtom);
		int _la;
		try {
			setState(235);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(227);
				fname();
				setState(228);
				match(T__2);
				setState(230);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << NEW) | (1L << NULL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
					{
					setState(229);
					exprs();
					}
				}

				setState(232);
				match(T__3);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(234);
				variable();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExprContext extends ParserRuleContext {
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class NarrContext extends ExprContext {
		public VbtpContext type;
		public TerminalNode NEW() { return getToken(MxxParser.NEW, 0); }
		public VbtpContext vbtp() {
			return getRuleContext(VbtpContext.class,0);
		}
		public List<IndexContext> index() {
			return getRuleContexts(IndexContext.class);
		}
		public IndexContext index(int i) {
			return getRuleContext(IndexContext.class,i);
		}
		public List<KhContext> kh() {
			return getRuleContexts(KhContext.class);
		}
		public KhContext kh(int i) {
			return getRuleContext(KhContext.class,i);
		}
		public NarrContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterNarr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitNarr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitNarr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class CstrContext extends ExprContext {
		public TerminalNode Cstr() { return getToken(MxxParser.Cstr, 0); }
		public CstrContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterCstr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitCstr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitCstr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ShiftContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ShiftContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterShift(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitShift(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitShift(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Pnt2Context extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<DotAtomContext> dotAtom() {
			return getRuleContexts(DotAtomContext.class);
		}
		public DotAtomContext dotAtom(int i) {
			return getRuleContext(DotAtomContext.class,i);
		}
		public Pnt2Context(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterPnt2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitPnt2(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitPnt2(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NvarContext extends ExprContext {
		public TerminalNode NEW() { return getToken(MxxParser.NEW, 0); }
		public VbtpContext vbtp() {
			return getRuleContext(VbtpContext.class,0);
		}
		public ExprsContext exprs() {
			return getRuleContext(ExprsContext.class,0);
		}
		public NvarContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterNvar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitNvar(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitNvar(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LorContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public LorContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterLor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitLor(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitLor(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class MorelessContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MorelessContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterMoreless(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitMoreless(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitMoreless(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class XkhContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public XkhContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterXkh(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitXkh(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitXkh(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class AndContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AndContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterAnd(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitAnd(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitAnd(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LandContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public LandContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterLand(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitLand(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitLand(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class XorContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public XorContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterXor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitXor(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitXor(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Nvar2Context extends ExprContext {
		public TerminalNode NEW() { return getToken(MxxParser.NEW, 0); }
		public VbtpContext vbtp() {
			return getRuleContext(VbtpContext.class,0);
		}
		public Nvar2Context(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterNvar2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitNvar2(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitNvar2(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class CfunCallContext extends ExprContext {
		public CvalContext cval() {
			return getRuleContext(CvalContext.class,0);
		}
		public FnameContext fname() {
			return getRuleContext(FnameContext.class,0);
		}
		public ExprsContext exprs() {
			return getRuleContext(ExprsContext.class,0);
		}
		public CfunCallContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterCfunCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitCfunCall(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitCfunCall(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class OrContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public OrContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterOr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitOr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitOr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class InarrContext extends ExprContext {
		public VnameContext vname() {
			return getRuleContext(VnameContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public InarrContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterInarr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitInarr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitInarr(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class FalseContext extends ExprContext {
		public TerminalNode FALSE() { return getToken(MxxParser.FALSE, 0); }
		public FalseContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterFalse(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitFalse(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitFalse(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class CnumContext extends ExprContext {
		public TerminalNode Cnum() { return getToken(MxxParser.Cnum, 0); }
		public CnumContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterCnum(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitCnum(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitCnum(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Op2Context extends ExprContext {
		public Token op;
		public LvalContext lval() {
			return getRuleContext(LvalContext.class,0);
		}
		public Op2Context(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterOp2(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitOp2(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitOp2(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class EqualContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public EqualContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterEqual(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitEqual(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitEqual(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Op1Context extends ExprContext {
		public Token op;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public Op1Context(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterOp1(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitOp1(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitOp1(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Op4Context extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public Op4Context(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterOp4(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitOp4(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitOp4(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Op3Context extends ExprContext {
		public Token op;
		public LvalContext lval() {
			return getRuleContext(LvalContext.class,0);
		}
		public Op3Context(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterOp3(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitOp3(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitOp3(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NullContext extends ExprContext {
		public TerminalNode NULL() { return getToken(MxxParser.NULL, 0); }
		public NullContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterNull(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitNull(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitNull(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Op5Context extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public Op5Context(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterOp5(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitOp5(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitOp5(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PntContext extends ExprContext {
		public List<VariableContext> variable() {
			return getRuleContexts(VariableContext.class);
		}
		public VariableContext variable(int i) {
			return getRuleContext(VariableContext.class,i);
		}
		public PntContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterPnt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitPnt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitPnt(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class TrueContext extends ExprContext {
		public TerminalNode TRUE() { return getToken(MxxParser.TRUE, 0); }
		public TrueContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterTrue(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitTrue(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitTrue(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class FuncCallContext extends ExprContext {
		public FnameContext fname() {
			return getRuleContext(FnameContext.class,0);
		}
		public ExprsContext exprs() {
			return getRuleContext(ExprsContext.class,0);
		}
		public FuncCallContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterFuncCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitFuncCall(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitFuncCall(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class AssignContext extends ExprContext {
		public LvalContext lval() {
			return getRuleContext(LvalContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AssignContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterAssign(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitAssign(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitAssign(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 50;
		enterRecursionRule(_localctx, 50, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(314);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,29,_ctx) ) {
			case 1:
				{
				_localctx = new FuncCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(238);
				fname();
				setState(239);
				match(T__2);
				setState(241);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << NEW) | (1L << NULL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
					{
					setState(240);
					exprs();
					}
				}

				setState(243);
				match(T__3);
				}
				break;
			case 2:
				{
				_localctx = new CfunCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(245);
				cval();
				setState(246);
				match(T__9);
				setState(247);
				fname();
				setState(248);
				match(T__2);
				setState(250);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << NEW) | (1L << NULL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
					{
					setState(249);
					exprs();
					}
				}

				setState(252);
				match(T__3);
				}
				break;
			case 3:
				{
				_localctx = new NvarContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(254);
				match(NEW);
				setState(255);
				vbtp();
				setState(256);
				match(T__2);
				setState(258);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << NEW) | (1L << NULL) | (1L << FALSE) | (1L << TRUE) | (1L << THIS) | (1L << Cnum) | (1L << Cstr) | (1L << ID))) != 0)) {
					{
					setState(257);
					exprs();
					}
				}

				setState(260);
				match(T__3);
				}
				break;
			case 4:
				{
				_localctx = new Nvar2Context(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(262);
				match(NEW);
				setState(263);
				vbtp();
				}
				break;
			case 5:
				{
				_localctx = new NarrContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(264);
				match(NEW);
				setState(265);
				((NarrContext)_localctx).type = vbtp();
				setState(267); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(266);
						index();
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(269); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,25,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				setState(274);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(271);
						kh();
						}
						} 
					}
					setState(276);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
				}
				}
				break;
			case 6:
				{
				_localctx = new PntContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(277);
				variable();
				setState(280); 
				_errHandler.sync(this);
				_alt = 1;
				do {
					switch (_alt) {
					case 1:
						{
						{
						setState(278);
						match(T__9);
						setState(279);
						variable();
						}
						}
						break;
					default:
						throw new NoViableAltException(this);
					}
					setState(282); 
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
				} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
				}
				break;
			case 7:
				{
				_localctx = new InarrContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(284);
				vname();
				setState(291);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(285);
						match(T__5);
						setState(286);
						expr(0);
						setState(287);
						match(T__6);
						}
						} 
					}
					setState(293);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
				}
				}
				break;
			case 8:
				{
				_localctx = new Op1Context(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(294);
				((Op1Context)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__10) | (1L << T__11) | (1L << T__12))) != 0)) ) {
					((Op1Context)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(295);
				expr(20);
				}
				break;
			case 9:
				{
				_localctx = new Op2Context(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(296);
				((Op2Context)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__13 || _la==T__14) ) {
					((Op2Context)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(297);
				lval();
				}
				break;
			case 10:
				{
				_localctx = new Op3Context(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(298);
				lval();
				setState(299);
				((Op3Context)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==T__13 || _la==T__14) ) {
					((Op3Context)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				}
				break;
			case 11:
				{
				_localctx = new CnumContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(301);
				match(Cnum);
				}
				break;
			case 12:
				{
				_localctx = new CstrContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(302);
				match(Cstr);
				}
				break;
			case 13:
				{
				_localctx = new NullContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(303);
				match(NULL);
				}
				break;
			case 14:
				{
				_localctx = new TrueContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(304);
				match(TRUE);
				}
				break;
			case 15:
				{
				_localctx = new FalseContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(305);
				match(FALSE);
				}
				break;
			case 16:
				{
				_localctx = new XkhContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(306);
				match(T__2);
				setState(307);
				expr(0);
				setState(308);
				match(T__3);
				}
				break;
			case 17:
				{
				_localctx = new AssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(310);
				lval();
				setState(311);
				match(T__7);
				setState(312);
				expr(1);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(355);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,32,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(353);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
					case 1:
						{
						_localctx = new Op4Context(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(316);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(317);
						((Op4Context)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__15) | (1L << T__16) | (1L << T__17))) != 0)) ) {
							((Op4Context)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(318);
						expr(18);
						}
						break;
					case 2:
						{
						_localctx = new Op5Context(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(319);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(320);
						((Op5Context)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__12 || _la==T__18) ) {
							((Op5Context)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(321);
						expr(17);
						}
						break;
					case 3:
						{
						_localctx = new ShiftContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(322);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(323);
						((ShiftContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__19 || _la==T__20) ) {
							((ShiftContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(324);
						expr(16);
						}
						break;
					case 4:
						{
						_localctx = new MorelessContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(325);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(326);
						((MorelessContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__21) | (1L << T__22) | (1L << T__23) | (1L << T__24))) != 0)) ) {
							((MorelessContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(327);
						expr(15);
						}
						break;
					case 5:
						{
						_localctx = new EqualContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(328);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(329);
						((EqualContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__25 || _la==T__26) ) {
							((EqualContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(330);
						expr(14);
						}
						break;
					case 6:
						{
						_localctx = new AndContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(331);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(332);
						match(T__27);
						setState(333);
						expr(13);
						}
						break;
					case 7:
						{
						_localctx = new XorContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(334);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(335);
						match(T__28);
						setState(336);
						expr(12);
						}
						break;
					case 8:
						{
						_localctx = new OrContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(337);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(338);
						match(T__29);
						setState(339);
						expr(11);
						}
						break;
					case 9:
						{
						_localctx = new LandContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(340);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(341);
						match(T__30);
						setState(342);
						expr(10);
						}
						break;
					case 10:
						{
						_localctx = new LorContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(343);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(344);
						match(T__31);
						setState(345);
						expr(9);
						}
						break;
					case 11:
						{
						_localctx = new Pnt2Context(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(346);
						if (!(precpred(_ctx, 22))) throw new FailedPredicateException(this, "precpred(_ctx, 22)");
						setState(349); 
						_errHandler.sync(this);
						_alt = 1;
						do {
							switch (_alt) {
							case 1:
								{
								{
								setState(347);
								match(T__9);
								setState(348);
								dotAtom();
								}
								}
								break;
							default:
								throw new NoViableAltException(this);
							}
							setState(351); 
							_errHandler.sync(this);
							_alt = getInterpreter().adaptivePredict(_input,30,_ctx);
						} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
						}
						break;
					}
					} 
				}
				setState(357);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,32,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class IndexContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public IndexContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_index; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterIndex(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitIndex(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitIndex(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IndexContext index() throws RecognitionException {
		IndexContext _localctx = new IndexContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_index);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(358);
			match(T__5);
			setState(359);
			expr(0);
			setState(360);
			match(T__6);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VariableContext extends ParserRuleContext {
		public VbtpContext type;
		public VnameContext vname() {
			return getRuleContext(VnameContext.class,0);
		}
		public List<IndexContext> index() {
			return getRuleContexts(IndexContext.class);
		}
		public IndexContext index(int i) {
			return getRuleContext(IndexContext.class,i);
		}
		public TerminalNode NEW() { return getToken(MxxParser.NEW, 0); }
		public VbtpContext vbtp() {
			return getRuleContext(VbtpContext.class,0);
		}
		public VariableContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variable; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterVariable(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitVariable(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitVariable(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VariableContext variable() throws RecognitionException {
		VariableContext _localctx = new VariableContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_variable);
		int _la;
		try {
			int _alt;
			setState(379);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case THIS:
			case ID:
				enterOuterAlt(_localctx, 1);
				{
				setState(362);
				vname();
				setState(366);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,33,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(363);
						index();
						}
						} 
					}
					setState(368);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,33,_ctx);
				}
				}
				break;
			case T__2:
				enterOuterAlt(_localctx, 2);
				{
				setState(369);
				match(T__2);
				setState(370);
				match(NEW);
				setState(371);
				((VariableContext)_localctx).type = vbtp();
				setState(373); 
				_errHandler.sync(this);
				_la = _input.LA(1);
				do {
					{
					{
					setState(372);
					index();
					}
					}
					setState(375); 
					_errHandler.sync(this);
					_la = _input.LA(1);
				} while ( _la==T__5 );
				setState(377);
				match(T__3);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class CvalContext extends ParserRuleContext {
		public List<VariableContext> variable() {
			return getRuleContexts(VariableContext.class);
		}
		public VariableContext variable(int i) {
			return getRuleContext(VariableContext.class,i);
		}
		public CvalContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_cval; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterCval(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitCval(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitCval(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CvalContext cval() throws RecognitionException {
		CvalContext _localctx = new CvalContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_cval);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(381);
			variable();
			setState(386);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,36,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(382);
					match(T__9);
					setState(383);
					variable();
					}
					} 
				}
				setState(388);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,36,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LvalContext extends ParserRuleContext {
		public List<VariableContext> variable() {
			return getRuleContexts(VariableContext.class);
		}
		public VariableContext variable(int i) {
			return getRuleContext(VariableContext.class,i);
		}
		public LvalContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lval; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterLval(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitLval(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitLval(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LvalContext lval() throws RecognitionException {
		LvalContext _localctx = new LvalContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_lval);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(389);
			variable();
			setState(394);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,37,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(390);
					match(T__9);
					setState(391);
					variable();
					}
					} 
				}
				setState(396);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,37,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExprsContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exprs; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).enterExprs(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MxxListener ) ((MxxListener)listener).exitExprs(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MxxVisitor ) return ((MxxVisitor<? extends T>)visitor).visitExprs(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprsContext exprs() throws RecognitionException {
		ExprsContext _localctx = new ExprsContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_exprs);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(397);
			expr(0);
			setState(402);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__8) {
				{
				{
				setState(398);
				match(T__8);
				setState(399);
				expr(0);
				}
				}
				setState(404);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 25:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 17);
		case 1:
			return precpred(_ctx, 16);
		case 2:
			return precpred(_ctx, 15);
		case 3:
			return precpred(_ctx, 14);
		case 4:
			return precpred(_ctx, 13);
		case 5:
			return precpred(_ctx, 12);
		case 6:
			return precpred(_ctx, 11);
		case 7:
			return precpred(_ctx, 10);
		case 8:
			return precpred(_ctx, 9);
		case 9:
			return precpred(_ctx, 8);
		case 10:
			return precpred(_ctx, 22);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3;\u0198\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \3\2"+
		"\3\2\3\2\6\2D\n\2\r\2\16\2E\3\3\3\3\3\3\3\3\3\4\3\4\3\4\7\4O\n\4\f\4\16"+
		"\4R\13\4\3\4\3\4\3\5\3\5\3\6\5\6Y\n\6\3\6\3\6\3\6\5\6^\n\6\3\6\3\6\3\6"+
		"\3\7\3\7\3\7\3\7\3\b\3\b\3\b\5\bj\n\b\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t"+
		"\3\t\3\t\5\tv\n\t\3\n\3\n\7\nz\n\n\f\n\16\n}\13\n\3\13\3\13\3\f\3\f\3"+
		"\f\3\f\5\f\u0085\n\f\3\f\3\f\3\f\3\r\3\r\7\r\u008c\n\r\f\r\16\r\u008f"+
		"\13\r\3\r\3\r\3\16\3\16\3\17\3\17\3\17\7\17\u0098\n\17\f\17\16\17\u009b"+
		"\13\17\3\20\3\20\3\20\3\21\3\21\3\22\3\22\3\23\3\23\7\23\u00a6\n\23\f"+
		"\23\16\23\u00a9\13\23\3\23\3\23\3\24\3\24\3\24\3\24\3\24\3\24\5\24\u00b3"+
		"\n\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\5\24\u00bf\n\24"+
		"\3\25\3\25\5\25\u00c3\n\25\3\26\3\26\3\26\3\26\3\26\3\26\5\26\u00cb\n"+
		"\26\3\27\3\27\3\27\3\30\3\30\3\30\3\30\3\30\3\30\3\31\3\31\3\31\5\31\u00d9"+
		"\n\31\3\31\3\31\5\31\u00dd\n\31\3\31\3\31\5\31\u00e1\n\31\3\31\3\31\3"+
		"\31\3\32\3\32\3\32\5\32\u00e9\n\32\3\32\3\32\3\32\5\32\u00ee\n\32\3\33"+
		"\3\33\3\33\3\33\5\33\u00f4\n\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\5\33"+
		"\u00fd\n\33\3\33\3\33\3\33\3\33\3\33\3\33\5\33\u0105\n\33\3\33\3\33\3"+
		"\33\3\33\3\33\3\33\3\33\6\33\u010e\n\33\r\33\16\33\u010f\3\33\7\33\u0113"+
		"\n\33\f\33\16\33\u0116\13\33\3\33\3\33\3\33\6\33\u011b\n\33\r\33\16\33"+
		"\u011c\3\33\3\33\3\33\3\33\3\33\7\33\u0124\n\33\f\33\16\33\u0127\13\33"+
		"\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33"+
		"\3\33\3\33\3\33\3\33\3\33\3\33\5\33\u013d\n\33\3\33\3\33\3\33\3\33\3\33"+
		"\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33"+
		"\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33\3\33"+
		"\6\33\u0160\n\33\r\33\16\33\u0161\7\33\u0164\n\33\f\33\16\33\u0167\13"+
		"\33\3\34\3\34\3\34\3\34\3\35\3\35\7\35\u016f\n\35\f\35\16\35\u0172\13"+
		"\35\3\35\3\35\3\35\3\35\6\35\u0178\n\35\r\35\16\35\u0179\3\35\3\35\5\35"+
		"\u017e\n\35\3\36\3\36\3\36\7\36\u0183\n\36\f\36\16\36\u0186\13\36\3\37"+
		"\3\37\3\37\7\37\u018b\n\37\f\37\16\37\u018e\13\37\3 \3 \3 \7 \u0193\n"+
		" \f \16 \u0196\13 \3 \2\3\64!\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 "+
		"\"$&(*,.\60\62\64\668:<>\2\13\5\2$%/\60\67\67\4\2\63\63\67\67\3\2\r\17"+
		"\3\2\20\21\3\2\22\24\4\2\17\17\25\25\3\2\26\27\3\2\30\33\3\2\34\35\2\u01c0"+
		"\2C\3\2\2\2\4G\3\2\2\2\6K\3\2\2\2\bU\3\2\2\2\nX\3\2\2\2\fb\3\2\2\2\16"+
		"i\3\2\2\2\20u\3\2\2\2\22w\3\2\2\2\24~\3\2\2\2\26\u0080\3\2\2\2\30\u0089"+
		"\3\2\2\2\32\u0092\3\2\2\2\34\u0094\3\2\2\2\36\u009c\3\2\2\2 \u009f\3\2"+
		"\2\2\"\u00a1\3\2\2\2$\u00a3\3\2\2\2&\u00be\3\2\2\2(\u00c2\3\2\2\2*\u00c4"+
		"\3\2\2\2,\u00cc\3\2\2\2.\u00cf\3\2\2\2\60\u00d5\3\2\2\2\62\u00ed\3\2\2"+
		"\2\64\u013c\3\2\2\2\66\u0168\3\2\2\28\u017d\3\2\2\2:\u017f\3\2\2\2<\u0187"+
		"\3\2\2\2>\u018f\3\2\2\2@D\5\4\3\2AD\5\26\f\2BD\5\"\22\2C@\3\2\2\2CA\3"+
		"\2\2\2CB\3\2\2\2DE\3\2\2\2EC\3\2\2\2EF\3\2\2\2F\3\3\2\2\2GH\7#\2\2HI\5"+
		"\b\5\2IJ\5\6\4\2J\5\3\2\2\2KP\7\3\2\2LO\5\f\7\2MO\5\n\6\2NL\3\2\2\2NM"+
		"\3\2\2\2OR\3\2\2\2PN\3\2\2\2PQ\3\2\2\2QS\3\2\2\2RP\3\2\2\2ST\7\4\2\2T"+
		"\7\3\2\2\2UV\7\67\2\2V\t\3\2\2\2WY\5\22\n\2XW\3\2\2\2XY\3\2\2\2YZ\3\2"+
		"\2\2Z[\5\32\16\2[]\7\5\2\2\\^\5\34\17\2]\\\3\2\2\2]^\3\2\2\2^_\3\2\2\2"+
		"_`\7\6\2\2`a\5$\23\2a\13\3\2\2\2bc\5\22\n\2cd\5 \21\2de\7\7\2\2e\r\3\2"+
		"\2\2fg\7\b\2\2gj\7\t\2\2hj\7\64\2\2if\3\2\2\2ih\3\2\2\2j\17\3\2\2\2kl"+
		"\5\22\n\2lm\5 \21\2mn\7\7\2\2nv\3\2\2\2op\5\22\n\2pq\5 \21\2qr\7\n\2\2"+
		"rs\5\64\33\2st\7\7\2\2tv\3\2\2\2uk\3\2\2\2uo\3\2\2\2v\21\3\2\2\2w{\5\24"+
		"\13\2xz\5\16\b\2yx\3\2\2\2z}\3\2\2\2{y\3\2\2\2{|\3\2\2\2|\23\3\2\2\2}"+
		"{\3\2\2\2~\177\t\2\2\2\177\25\3\2\2\2\u0080\u0081\5\22\n\2\u0081\u0082"+
		"\5\32\16\2\u0082\u0084\7\5\2\2\u0083\u0085\5\34\17\2\u0084\u0083\3\2\2"+
		"\2\u0084\u0085\3\2\2\2\u0085\u0086\3\2\2\2\u0086\u0087\7\6\2\2\u0087\u0088"+
		"\5\30\r\2\u0088\27\3\2\2\2\u0089\u008d\7\3\2\2\u008a\u008c\5&\24\2\u008b"+
		"\u008a\3\2\2\2\u008c\u008f\3\2\2\2\u008d\u008b\3\2\2\2\u008d\u008e\3\2"+
		"\2\2\u008e\u0090\3\2\2\2\u008f\u008d\3\2\2\2\u0090\u0091\7\4\2\2\u0091"+
		"\31\3\2\2\2\u0092\u0093\7\67\2\2\u0093\33\3\2\2\2\u0094\u0099\5\36\20"+
		"\2\u0095\u0096\7\13\2\2\u0096\u0098\5\36\20\2\u0097\u0095\3\2\2\2\u0098"+
		"\u009b\3\2\2\2\u0099\u0097\3\2\2\2\u0099\u009a\3\2\2\2\u009a\35\3\2\2"+
		"\2\u009b\u0099\3\2\2\2\u009c\u009d\5\22\n\2\u009d\u009e\5 \21\2\u009e"+
		"\37\3\2\2\2\u009f\u00a0\t\3\2\2\u00a0!\3\2\2\2\u00a1\u00a2\5\20\t\2\u00a2"+
		"#\3\2\2\2\u00a3\u00a7\7\3\2\2\u00a4\u00a6\5&\24\2\u00a5\u00a4\3\2\2\2"+
		"\u00a6\u00a9\3\2\2\2\u00a7\u00a5\3\2\2\2\u00a7\u00a8\3\2\2\2\u00a8\u00aa"+
		"\3\2\2\2\u00a9\u00a7\3\2\2\2\u00aa\u00ab\7\4\2\2\u00ab%\3\2\2\2\u00ac"+
		"\u00bf\5$\23\2\u00ad\u00bf\5*\26\2\u00ae\u00bf\5.\30\2\u00af\u00bf\5\60"+
		"\31\2\u00b0\u00b2\7&\2\2\u00b1\u00b3\5\64\33\2\u00b2\u00b1\3\2\2\2\u00b2"+
		"\u00b3\3\2\2\2\u00b3\u00b4\3\2\2\2\u00b4\u00bf\7\7\2\2\u00b5\u00b6\7\'"+
		"\2\2\u00b6\u00bf\7\7\2\2\u00b7\u00b8\7(\2\2\u00b8\u00bf\7\7\2\2\u00b9"+
		"\u00bf\5\20\t\2\u00ba\u00bb\5\64\33\2\u00bb\u00bc\7\7\2\2\u00bc\u00bf"+
		"\3\2\2\2\u00bd\u00bf\7\7\2\2\u00be\u00ac\3\2\2\2\u00be\u00ad\3\2\2\2\u00be"+
		"\u00ae\3\2\2\2\u00be\u00af\3\2\2\2\u00be\u00b0\3\2\2\2\u00be\u00b5\3\2"+
		"\2\2\u00be\u00b7\3\2\2\2\u00be\u00b9\3\2\2\2\u00be\u00ba\3\2\2\2\u00be"+
		"\u00bd\3\2\2\2\u00bf\'\3\2\2\2\u00c0\u00c3\5&\24\2\u00c1\u00c3\5$\23\2"+
		"\u00c2\u00c0\3\2\2\2\u00c2\u00c1\3\2\2\2\u00c3)\3\2\2\2\u00c4\u00c5\7"+
		")\2\2\u00c5\u00c6\7\5\2\2\u00c6\u00c7\5\64\33\2\u00c7\u00c8\7\6\2\2\u00c8"+
		"\u00ca\5(\25\2\u00c9\u00cb\5,\27\2\u00ca\u00c9\3\2\2\2\u00ca\u00cb\3\2"+
		"\2\2\u00cb+\3\2\2\2\u00cc\u00cd\7*\2\2\u00cd\u00ce\5(\25\2\u00ce-\3\2"+
		"\2\2\u00cf\u00d0\7+\2\2\u00d0\u00d1\7\5\2\2\u00d1\u00d2\5\64\33\2\u00d2"+
		"\u00d3\7\6\2\2\u00d3\u00d4\5(\25\2\u00d4/\3\2\2\2\u00d5\u00d6\7,\2\2\u00d6"+
		"\u00d8\7\5\2\2\u00d7\u00d9\5\64\33\2\u00d8\u00d7\3\2\2\2\u00d8\u00d9\3"+
		"\2\2\2\u00d9\u00da\3\2\2\2\u00da\u00dc\7\7\2\2\u00db\u00dd\5\64\33\2\u00dc"+
		"\u00db\3\2\2\2\u00dc\u00dd\3\2\2\2\u00dd\u00de\3\2\2\2\u00de\u00e0\7\7"+
		"\2\2\u00df\u00e1\5\64\33\2\u00e0\u00df\3\2\2\2\u00e0\u00e1\3\2\2\2\u00e1"+
		"\u00e2\3\2\2\2\u00e2\u00e3\7\6\2\2\u00e3\u00e4\5(\25\2\u00e4\61\3\2\2"+
		"\2\u00e5\u00e6\5\32\16\2\u00e6\u00e8\7\5\2\2\u00e7\u00e9\5> \2\u00e8\u00e7"+
		"\3\2\2\2\u00e8\u00e9\3\2\2\2\u00e9\u00ea\3\2\2\2\u00ea\u00eb\7\6\2\2\u00eb"+
		"\u00ee\3\2\2\2\u00ec\u00ee\58\35\2\u00ed\u00e5\3\2\2\2\u00ed\u00ec\3\2"+
		"\2\2\u00ee\63\3\2\2\2\u00ef\u00f0\b\33\1\2\u00f0\u00f1\5\32\16\2\u00f1"+
		"\u00f3\7\5\2\2\u00f2\u00f4\5> \2\u00f3\u00f2\3\2\2\2\u00f3\u00f4\3\2\2"+
		"\2\u00f4\u00f5\3\2\2\2\u00f5\u00f6\7\6\2\2\u00f6\u013d\3\2\2\2\u00f7\u00f8"+
		"\5:\36\2\u00f8\u00f9\7\f\2\2\u00f9\u00fa\5\32\16\2\u00fa\u00fc\7\5\2\2"+
		"\u00fb\u00fd\5> \2\u00fc\u00fb\3\2\2\2\u00fc\u00fd\3\2\2\2\u00fd\u00fe"+
		"\3\2\2\2\u00fe\u00ff\7\6\2\2\u00ff\u013d\3\2\2\2\u0100\u0101\7-\2\2\u0101"+
		"\u0102\5\24\13\2\u0102\u0104\7\5\2\2\u0103\u0105\5> \2\u0104\u0103\3\2"+
		"\2\2\u0104\u0105\3\2\2\2\u0105\u0106\3\2\2\2\u0106\u0107\7\6\2\2\u0107"+
		"\u013d\3\2\2\2\u0108\u0109\7-\2\2\u0109\u013d\5\24\13\2\u010a\u010b\7"+
		"-\2\2\u010b\u010d\5\24\13\2\u010c\u010e\5\66\34\2\u010d\u010c\3\2\2\2"+
		"\u010e\u010f\3\2\2\2\u010f\u010d\3\2\2\2\u010f\u0110\3\2\2\2\u0110\u0114"+
		"\3\2\2\2\u0111\u0113\5\16\b\2\u0112\u0111\3\2\2\2\u0113\u0116\3\2\2\2"+
		"\u0114\u0112\3\2\2\2\u0114\u0115\3\2\2\2\u0115\u013d\3\2\2\2\u0116\u0114"+
		"\3\2\2\2\u0117\u011a\58\35\2\u0118\u0119\7\f\2\2\u0119\u011b\58\35\2\u011a"+
		"\u0118\3\2\2\2\u011b\u011c\3\2\2\2\u011c\u011a\3\2\2\2\u011c\u011d\3\2"+
		"\2\2\u011d\u013d\3\2\2\2\u011e\u0125\5 \21\2\u011f\u0120\7\b\2\2\u0120"+
		"\u0121\5\64\33\2\u0121\u0122\7\t\2\2\u0122\u0124\3\2\2\2\u0123\u011f\3"+
		"\2\2\2\u0124\u0127\3\2\2\2\u0125\u0123\3\2\2\2\u0125\u0126\3\2\2\2\u0126"+
		"\u013d\3\2\2\2\u0127\u0125\3\2\2\2\u0128\u0129\t\4\2\2\u0129\u013d\5\64"+
		"\33\26\u012a\u012b\t\5\2\2\u012b\u013d\5<\37\2\u012c\u012d\5<\37\2\u012d"+
		"\u012e\t\5\2\2\u012e\u013d\3\2\2\2\u012f\u013d\7\65\2\2\u0130\u013d\7"+
		"\66\2\2\u0131\u013d\7.\2\2\u0132\u013d\7\62\2\2\u0133\u013d\7\61\2\2\u0134"+
		"\u0135\7\5\2\2\u0135\u0136\5\64\33\2\u0136\u0137\7\6\2\2\u0137\u013d\3"+
		"\2\2\2\u0138\u0139\5<\37\2\u0139\u013a\7\n\2\2\u013a\u013b\5\64\33\3\u013b"+
		"\u013d\3\2\2\2\u013c\u00ef\3\2\2\2\u013c\u00f7\3\2\2\2\u013c\u0100\3\2"+
		"\2\2\u013c\u0108\3\2\2\2\u013c\u010a\3\2\2\2\u013c\u0117\3\2\2\2\u013c"+
		"\u011e\3\2\2\2\u013c\u0128\3\2\2\2\u013c\u012a\3\2\2\2\u013c\u012c\3\2"+
		"\2\2\u013c\u012f\3\2\2\2\u013c\u0130\3\2\2\2\u013c\u0131\3\2\2\2\u013c"+
		"\u0132\3\2\2\2\u013c\u0133\3\2\2\2\u013c\u0134\3\2\2\2\u013c\u0138\3\2"+
		"\2\2\u013d\u0165\3\2\2\2\u013e\u013f\f\23\2\2\u013f\u0140\t\6\2\2\u0140"+
		"\u0164\5\64\33\24\u0141\u0142\f\22\2\2\u0142\u0143\t\7\2\2\u0143\u0164"+
		"\5\64\33\23\u0144\u0145\f\21\2\2\u0145\u0146\t\b\2\2\u0146\u0164\5\64"+
		"\33\22\u0147\u0148\f\20\2\2\u0148\u0149\t\t\2\2\u0149\u0164\5\64\33\21"+
		"\u014a\u014b\f\17\2\2\u014b\u014c\t\n\2\2\u014c\u0164\5\64\33\20\u014d"+
		"\u014e\f\16\2\2\u014e\u014f\7\36\2\2\u014f\u0164\5\64\33\17\u0150\u0151"+
		"\f\r\2\2\u0151\u0152\7\37\2\2\u0152\u0164\5\64\33\16\u0153\u0154\f\f\2"+
		"\2\u0154\u0155\7 \2\2\u0155\u0164\5\64\33\r\u0156\u0157\f\13\2\2\u0157"+
		"\u0158\7!\2\2\u0158\u0164\5\64\33\f\u0159\u015a\f\n\2\2\u015a\u015b\7"+
		"\"\2\2\u015b\u0164\5\64\33\13\u015c\u015f\f\30\2\2\u015d\u015e\7\f\2\2"+
		"\u015e\u0160\5\62\32\2\u015f\u015d\3\2\2\2\u0160\u0161\3\2\2\2\u0161\u015f"+
		"\3\2\2\2\u0161\u0162\3\2\2\2\u0162\u0164\3\2\2\2\u0163\u013e\3\2\2\2\u0163"+
		"\u0141\3\2\2\2\u0163\u0144\3\2\2\2\u0163\u0147\3\2\2\2\u0163\u014a\3\2"+
		"\2\2\u0163\u014d\3\2\2\2\u0163\u0150\3\2\2\2\u0163\u0153\3\2\2\2\u0163"+
		"\u0156\3\2\2\2\u0163\u0159\3\2\2\2\u0163\u015c\3\2\2\2\u0164\u0167\3\2"+
		"\2\2\u0165\u0163\3\2\2\2\u0165\u0166\3\2\2\2\u0166\65\3\2\2\2\u0167\u0165"+
		"\3\2\2\2\u0168\u0169\7\b\2\2\u0169\u016a\5\64\33\2\u016a\u016b\7\t\2\2"+
		"\u016b\67\3\2\2\2\u016c\u0170\5 \21\2\u016d\u016f\5\66\34\2\u016e\u016d"+
		"\3\2\2\2\u016f\u0172\3\2\2\2\u0170\u016e\3\2\2\2\u0170\u0171\3\2\2\2\u0171"+
		"\u017e\3\2\2\2\u0172\u0170\3\2\2\2\u0173\u0174\7\5\2\2\u0174\u0175\7-"+
		"\2\2\u0175\u0177\5\24\13\2\u0176\u0178\5\66\34\2\u0177\u0176\3\2\2\2\u0178"+
		"\u0179\3\2\2\2\u0179\u0177\3\2\2\2\u0179\u017a\3\2\2\2\u017a\u017b\3\2"+
		"\2\2\u017b\u017c\7\6\2\2\u017c\u017e\3\2\2\2\u017d\u016c\3\2\2\2\u017d"+
		"\u0173\3\2\2\2\u017e9\3\2\2\2\u017f\u0184\58\35\2\u0180\u0181\7\f\2\2"+
		"\u0181\u0183\58\35\2\u0182\u0180\3\2\2\2\u0183\u0186\3\2\2\2\u0184\u0182"+
		"\3\2\2\2\u0184\u0185\3\2\2\2\u0185;\3\2\2\2\u0186\u0184\3\2\2\2\u0187"+
		"\u018c\58\35\2\u0188\u0189\7\f\2\2\u0189\u018b\58\35\2\u018a\u0188\3\2"+
		"\2\2\u018b\u018e\3\2\2\2\u018c\u018a\3\2\2\2\u018c\u018d\3\2\2\2\u018d"+
		"=\3\2\2\2\u018e\u018c\3\2\2\2\u018f\u0194\5\64\33\2\u0190\u0191\7\13\2"+
		"\2\u0191\u0193\5\64\33\2\u0192\u0190\3\2\2\2\u0193\u0196\3\2\2\2\u0194"+
		"\u0192\3\2\2\2\u0194\u0195\3\2\2\2\u0195?\3\2\2\2\u0196\u0194\3\2\2\2"+
		")CENPX]iu{\u0084\u008d\u0099\u00a7\u00b2\u00be\u00c2\u00ca\u00d8\u00dc"+
		"\u00e0\u00e8\u00ed\u00f3\u00fc\u0104\u010f\u0114\u011c\u0125\u013c\u0161"+
		"\u0163\u0165\u0170\u0179\u017d\u0184\u018c\u0194";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}