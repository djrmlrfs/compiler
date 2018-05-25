import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.ParseCancellationException;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Stack;


class vara{
    vtype type;
    String name;
    int constValue;
    boolean isTemp;
    vara(String name, vtype type)
    {
        isTemp = false;
        this.name = name;
        this.type = type;
    }
    @Override public String toString()
    {
        if (type.name.equals("c_int"))  return Integer.toString(constValue);
        if (type.name.equals("c_bool")) return Integer.toString(constValue);
        if (this.name.equals("emptyVariable")) return "";  return name;
    }
    static boolean ig = false;
    static final vara empty = new vara("emptyVariable",new vtype("void",0));
}

class vtype{
    int dims;
    String name;
    boolean is(String str){return name.equals(str);}
    private vtype(){}
    vtype(String nam, int dim){name = nam; dims = dim;}
    static vtype tovtype(MxxParser.VtypeContext ctx)
    {
        vtype vtp = new vtype();
        vtp.name = ctx.vbtp().getText();
        vtp.dims = ctx.kh().size();
        return vtp;
    }
    static vtype tovtype(MxxParser.VbtpContext ctx){
        vtype vtp = new vtype();
        vtp.name = ctx.getText();   vtp.dims = 0;
        return vtp;
    }
    vtype cpy()
    {
        vtype vtp = new vtype();
        vtp.name = this.name;
        vtp.dims = this.dims;
        return vtp;
    }
    boolean notmatch(vtype other)
    {
        if (other.name.equals("null"))
        {
            if (name.contains("int") || name.contains("bool") || name.contains("string"))
                return (dims==0);
            return false;
        }
        if (name.equals("null"))
        {
            if (other.name.contains("int") || other.name.contains("bool") ||other.name.contains("string"))
                return (other.dims==0);
            return false;
        }
        if (dims != other.dims) return true;
        if (name.contains("int"))   return !other.name.contains("int");
        if (name.contains("bool"))  return !other.name.contains("bool");
        if (name.contains("string"))return !other.name.contains("string");
        return (!name.equals(other.name));
    }
}

enum Oper{
    not,inv,neg,
    add,sub,mul,div,mod,
    and,or,xor,
    shl,shr,move,
    call,ret,label,
    less,leq,equal,neq,geq,gre,
    sless,sleq,sequal,sneq,sgeq,sgre,
    jmp,jz,jnz,
    malloc,mallocArray,multiArray,concat,
    load,store,address,multiAddress,
    print,println,getString,getInt,toString,
    parseInt,substring,ord,
    saveContext,resumeContext,
    endContext,
    enterFunction,exitFunction,
}

class func{
    String name;vtype type;
    ArrayList<vtype> pams;
    func(String name, vtype type, ArrayList<vtype>pams)
    {this.name = name;  this.type = type;   this.pams = pams;}
    @Override public int hashCode(){return (this.name).hashCode()^(this.type.hashCode())^(this.pams.hashCode());}
    @Override public boolean equals(Object otherObject)
    {
        if (this == otherObject)    return true;
        if (null == otherObject)    return false;
        if (getClass() != otherObject.getClass())   return false;
        func other = (func) otherObject;
        return name.equals(other.name);
    }
}
class sys{
    sys next;  String name;
    Oper oper;  vara var1, var2, dest;
    sys(Oper oper, vara var1, vara var2, vara dest)
        {this.oper = oper;   this.var1 = var1;   this.var2 = var2;   this.dest = dest;   this.next = null;}
    sys(Oper oper, String label){this.oper = oper; this.name = label;}
    sys(Oper oper, String label, vara dest){this.oper = oper;  this.name = label;  this.dest = dest;}
    sys(Oper oper){    this.oper = oper;}
}

class IR{
    sys last;
    private sys head;
    IR(){   head = null;    last = null;}
    void push(sys quad)
    {
        if (quad == null)   return;
        if (head == null)   {head = quad;   last = quad;}
        else    {last.next = quad;  last = last.next;}
    }
    void concat(IR oth)
    {
        if (oth ==  null)   return;
        if (head == null)   {this.head = oth.head;this.last = oth.last;}
        else if (oth.head != null) {last.next = oth.head;   last = oth.last;}
    }
    void print()
    {
        for (sys now = head; now != null; now = now.next)
            System.err.println(now.oper+" "+now.var1+" "+now.var2+" "+now.dest+" "+(now.name==null?"":now.name));
    }
    private boolean adya(sys aa) {return (aa.oper.equals(Oper.move) && aa.var1.name.equals(aa.dest.name));}
    void simplify()
    {
        while (head != null && adya(head))  head = head.next;
        for (sys now = head; now != null; now = now.next)
            while (now.next!=null && adya(now.next))    now.next = now.next.next;
        /* 无用临时变量
        相同表达式
        循环外提
        */
    }
}

class zcc {
    String nfunc = "";
    boolean global = false;
    private int vcnt = 0;
    private Stack<Integer>ssta = new Stack<>();
    private HashMap<String,Integer> dmap = new HashMap<>();
    HashSet<String>udnm = new HashSet<>();
    HashSet<String>tmap = new HashSet<>();
    HashMap<String,func> fmap = new HashMap<>();
    HashMap<String,vtype> vmap = new HashMap<>();
    HashMap<String,String> rnm = new HashMap<>();
    HashMap<String,vtype> argvmap = new HashMap<>();
    HashMap<String,vtype> glovmap = new HashMap<>();
    HashMap<String,ArrayList<String> >lvar = new HashMap<>();
    zcc(){tmap.add("int");tmap.add("string");tmap.add("bool");tmap.add("void");}
    class Operation
    {
        String name, oldName;
        vtype vtp;  Integer depth;
        Operation(String name, String oldName, vtype vtp, Integer depth)
            {this.name = name;  this.oldName = oldName; this.vtp = vtp; this.depth = depth;}
    }
    private Stack<Operation>operations = new Stack<>();
    public void nextScope(){ssta.push(operations.size());}
    public void prevScope()
    {
        while (operations.size() != ssta.peek())
        {
            Operation operation = operations.peek();
            operations.pop();
            vmap.put(operation.name,operation.vtp);
            dmap.put(operation.name,operation.depth);
            rnm.put(operation.name,operation.oldName);
        }
        ssta.pop();
    }
    void add(String name, vtype vtp)
    {
        if (udnm.contains(name))
        {
            System.err.println("class a; int a;");
            System.exit(-1);
        }
        if(name.equals("this"))
        {
            System.err.println("int this");
            System.exit(-1);
        }
        if(dmap.get(name)!=null && dmap.get(name)==ssta.size())
        {
            System.err.println("int a;int a;");
            System.exit(-1);
        }
        operations.push(new Operation(name,rnm.get(name),vmap.get(name),dmap.get(name)));
        vmap.put(name,vtp);
        if (global) glovmap.put(name,vtp);
        if(!rnm.containsKey(name))    rnm.put(name, name);
        else    rnm.put(name, name + "_" + vcnt);
        if (!nfunc.equals(""))
        {
            ArrayList<String> arrayList = lvar.get(nfunc);
            if (arrayList == null)  arrayList = new ArrayList<>();
            arrayList.add(rnm.get(name));
            lvar.put(nfunc,arrayList);
        }
        ++vcnt;  dmap.put(name,ssta.size());
    }
    vtype getVariable(String name){return vmap.get(name);}
    vtype operate(String operator, vtype type)
    {
        switch (operator){
            case "--":{
                if (type.is("int")) return type;
                System.err.println("--bool");
                System.exit(-1);
            }
            case "++":{
                if (type.is("int")) return type;
                System.err.println("++bool");
                System.exit(-1);
            }
            case "!":{
                if (type.name.contains("bool")) return type;
                System.err.println("!string");
                System.exit(-1);
            }
            case "~":{
                if(type.is("int") || type.is("c_int"))
                    return (new vtype("int",0));
                System.err.println("~bool");
                System.exit(-1);
            }
            case "-":{
                if(type.is("int") || type.is("c_int"))
                    return (new vtype("int",0));
                System.err.println("-bool");
                System.exit(-1);
            }
        }
        System.err.println("expr num wrong");
        System.exit(-1);
        return (new vtype("int",0));
    }
    vtype operate(vtype type1, String operator, vtype type2)
    {
        if (type1.is("null") || type2.is("null"))
        {
            if (operator.equals("==") || operator.equals("!="))
                return (new vtype("bool",0));
            System.err.println("null wop null");
            System.exit(-1);
        }
        if ((type1.is("int") || type1.is("c_int"))  && (type2.is("int") || type2.is("c_int")))
        {
            if (operator.equals("+")||operator.equals("-")||operator.equals("*")||operator.equals("/")||operator.equals("%")
                    ||operator.equals("<<")||operator.equals(">>")||operator.equals("&")||operator.equals("|")||operator.equals("^"))
                return (new vtype("int",0));
            if (operator.equals(">")||operator.equals("<")||operator.equals(">=")||operator.equals("<=")
                    ||operator.equals("==")||operator.equals("!=")) return (new vtype("bool",0));
            if (operator.equals("="))   if (type1.is("int"))    return (new vtype("int",0));
            System.err.println("int wop int");
            System.exit(-1);
        }
        if (type1.name.contains("string") && type2.name.contains("string"))
        {
            if (operator.equals("+"))    return (new vtype("string",0));
            if (operator.equals(">")||operator.equals("<")||operator.equals(">=")||operator.equals("<=")||operator.equals("==")||operator.equals("!="))
                return (new vtype("bool",0));
            System.err.println("str wop str");
            System.exit(-1);
        }
        if (type1.name.contains("bool")&&type2.name.contains("bool"))
        {
            if(operator.equals("&&")||operator.equals("||")||operator.equals("!=")||operator.equals("=="))
                return (new vtype("bool",0));
            System.err.println("bool wop biil");    System.exit(-1);
        }
        if (operator.equals("=")){
            if ((!type1.is("c_int")&&!type1.is("c_int")&&!type1.is("c_string"))
                    && (type2.is("null") || type2.name.equals(type1.name)))    return type1;
            System.err.println("int = bool");
            System.exit(-1);
        }
        System.err.println("opnum wrong");
        System.exit(-1);
        return  (new vtype("int",0));
    }
}

class RVistor extends MxxBaseVisitor<Integer>{
    private String nfunc = "";
    private HashMap<String,HashSet<String> >mtt = new HashMap<>();
    boolean bad(String caller, String callee)
    {
        HashSet<String> aa = mtt.get(callee);
        if (aa == null) return false;
        return aa.contains(caller);
    }
    private void put(String a, String b)
    {
        if (a.equals("") || b.equals(""))   return;
        if (!mtt.containsKey(a))  mtt.put(a, new HashSet<>());
        if (!mtt.containsKey(b)) mtt.put(b, new HashSet<>());
        mtt.get(a).add(b);
    }
    @Override public Integer visitFuncCall(MxxParser.FuncCallContext ctx)
        {put(nfunc,ctx.fname().getText());   return visitChildren(ctx);}
    @Override public Integer visitDeffunc(MxxParser.DeffuncContext ctx)
        {nfunc = ctx.fname().getText(); return visitChildren(ctx);}
    @Override public Integer visitCfunCall(MxxParser.CfunCallContext ctx)
        {put(nfunc,ctx.fname().getText());  return visitChildren(ctx);}
    @Override public Integer visitMthdef(MxxParser.MthdefContext ctx)
        {nfunc = ctx.fname().getText(); return visitChildren(ctx);}
}

class MVisitor extends MxxBaseVisitor<IR>
{
    private vara cths;
    private String ncls = "";
    zcc unmhere = new zcc();
    private vtype nclstp, nrttp = null;
    private static int lcnt = 0;
    private static int ct = 0;
    private RVistor rvist = new RVistor();
    private Stack<String>nlab = new Stack<>();
    private Stack<String>nlabe = new Stack<>();
    private Stack<String>nalab = new Stack<>();
    HashMap<vara,String> cstr = new HashMap<>();
    private ArrayList<vara> argList = new ArrayList<>();
    private Stack<ArrayList<vtype> >nowpam = new Stack<>();
    private HashMap<String,HashMap<String,vara> >cmeb = new HashMap<>();
    private HashMap<String,HashMap<vara,Integer> >cmid = new HashMap<>();
    private static String newlabel(){return "Lab_"+Integer.toString(lcnt++);}

    private vara nvar(vtype type)
    {
        vara variable = new vara("t"+Integer.toString(ct++),type);
        variable.isTemp = false;    unmhere.add(variable.name,variable.type);
        return variable;
    }
    private vara nths(vtype type)
    {
        vara variable = new vara("this"+Integer.toString(ct++),type);
        variable.isTemp = false;    unmhere.add(variable.name,variable.type);
        return variable;
    }
    private vara ncns(int constValue,vtype type)
    {
        vara variable =  new vara("const"+Integer.toString(ct++),type);
        variable.isTemp = false;    variable.constValue = constValue;   return variable;
    }

    @Override public IR visitProgram(MxxParser.ProgramContext ctx)
    {
        IR nir = new IR(), ir2 = new IR(), ir3 = new IR(), ir4 = new IR();
        vara.ig = true;   unmhere.global = true;  ct = 0;
        for (int i = 0; i < 64; ++i)
        {
            vara variable = nvar((new vtype("int",0)));
            variable.constValue = i;    argList.add(variable);
            unmhere.argvmap.put(variable.name,variable.type);
        }
        unmhere.global = false; vara.ig = false;
        for(ParseTree child : ctx.children)
            if (child.getClass().equals(MxxParser.DefclassContext.class))
            {
                ncls = ((MxxParser.DefclassContext)child).cname().getText();
                if (unmhere.tmap.contains(ncls))
                {
                    System.err.println("class a{} class a{}");
                    System.exit(-1);
                }
                unmhere.tmap.add(ncls);
                nclstp = new vtype(ncls,0);
                cmeb.put(ncls,new HashMap<>());
                cmid.put(ncls,new HashMap<>());
                classDefinition((MxxParser.DefclassContext)child);ncls = "";
            }
        for (ParseTree child : ctx.children)
            if(child.getClass().equals(MxxParser.DeffuncContext.class))
            {
                MxxParser.DeffuncContext childContext =((MxxParser.DeffuncContext)(Object)child);
                String name = childContext.fname().getText();   unmhere.udnm.add(name);
            }
        IR ir5 = new IR();
        ir5.push(new sys(Oper.label,"global_init"));
        ir5.push(new sys(Oper.enterFunction,"global_init"));
        for (ParseTree child : ctx.children)
            if (child.getClass().equals(MxxParser.DeffuncContext.class))
            {
                MxxParser.DeffuncContext childContext =((MxxParser.DeffuncContext)(Object)child);
                String name = childContext.fname().getText();
                unmhere.nextScope();    unmhere.nfunc = name;
                vtype type = vtype.tovtype(childContext.vtype());
                ArrayList<vtype>pams = new ArrayList<>();
                if (childContext.params() != null)
                    for (int i = 0; i < childContext.params().param().size(); ++i)
                        pams.add(vtype.tovtype(childContext.params().param(i).vtype()));
                func function = new func(name,type,pams);
                unmhere.fmap.put(name,function);
                unmhere.prevScope();
            }
        boolean okk = false;
        for (ParseTree child : ctx.children)
        {
            if (child.getClass().equals(MxxParser.DefclassContext.class))   ir3.concat(visit(child));
            if (child.getClass().equals(MxxParser.GvarContext.class))
                {vara.ig = true; unmhere.global = true;  ir5.concat(visit(child));   vara.ig = false;    unmhere.global = false;}
            if (child.getClass().equals(MxxParser.DeffuncContext.class))
            {
                MxxParser.DeffuncContext childContext =((MxxParser.DeffuncContext)(Object)child);
                String name = childContext.fname().getText();
                if (name.equals("main"))
                {
                    okk = true;
                    unmhere.nextScope();
                    ir4.concat(visit(child));
                    unmhere.prevScope();
                    continue;
                }
                unmhere.nextScope();
                ir2.concat(visit(child));
                unmhere.prevScope();
            }
        }
        if (!okk)
        {
            System.err.println("no func main");
            System.exit(-1);
        }
        ir5.push(new sys(Oper.exitFunction));
        sys quad = new sys(Oper.ret,ncns(0,(new vtype("int",0))),vara.empty,vara.empty);
        quad.name = unmhere.nfunc;
        ir5.push(quad); nir.concat(ir4);
        nir.push(new sys(Oper.jmp,"QED"));
        nir.concat(ir3); nir.concat(ir2); nir.concat(ir5);
        nir.push(new sys(Oper.label,"QED"));
        return nir;
    }

    @Override public IR visitDefclass(MxxParser.DefclassContext ctx)
    {
        IR nir = new IR();
        ncls = ctx.cname().getText();
        nclstp = new vtype(ncls,0);
        unmhere.nextScope();    nir.concat(visit(ctx.cbody()));
        unmhere.prevScope();    ncls = "";  return nir;
    }

    private void classDefinition(MxxParser.DefclassContext ctx)
    {
        unmhere.nextScope();
        for (ParseTree child : ctx.cbody().children)
            if (child.getClass().equals(MxxParser.MemdefContext.class))
                memberDefinition((MxxParser.MemdefContext) child);
        for (ParseTree child : ctx.cbody().children)
            if (child.getClass().equals(MxxParser.MthdefContext.class))
            {
                MxxParser.MthdefContext context = ((MxxParser.MthdefContext)child);
                String name = ncls+"_"+context.fname().getText();
                unmhere.nfunc = name;   vtype type = (new vtype("int",0));
                if (context.vtype() != null)    type = vtype.tovtype(context.vtype());
                else if (!context.fname().getText().equals(ncls))
                {
                    System.err.println("class a{ b(){}}");
                    System.exit(-1);
                }
                ArrayList<vtype>pams = new ArrayList<>();
                cths = nths(nclstp);
                if (context.params() != null)
                    for (int i = 0; i < context.params().param().size(); ++i)
                        pams.add(vtype.tovtype(context.params().param(i).vtype()));
                func function = new func(name,type,pams);
                unmhere.fmap.put(name,function);
            }
        unmhere.prevScope();
    }

    @Override public IR visitCbody(MxxParser.CbodyContext ctx)
    {
        IR nir = new IR();
        for(ParseTree child : ctx.children)
            if (child.getClass().equals(MxxParser.MemdefContext.class))
                nir.concat(visit(child));
        for (ParseTree child : ctx.children)
            if (child.getClass().equals(MxxParser.MthdefContext.class))
            {
                MxxParser.MthdefContext context = ((MxxParser.MthdefContext)child);
                unmhere.nfunc = ncls+"_"+context.fname().getText();
                vtype type = (new vtype("int",0));
                if (context.vtype() != null)    type = vtype.tovtype(context.vtype());
                else if (!context.fname().getText().equals(ncls))
                {
                    System.err.println("class a{ b(){}}");
                    System.exit(-1);
                }
                if(!unmhere.tmap.contains(type.name))
                {
                    System.err.println("class a{nosuch b(){}}");
                    System.exit(-1);
                }
                cths = nths(nclstp);
                if (context.params() != null)
                    for (int i = 0; i < context.params().param().size(); ++i)
                    {
                        vtype vtp = vtype.tovtype(context.params().param(i).vtype());
                        if (!unmhere.tmap.contains(vtp.name))
                        {
                            System.err.println("class a{func b(class_not_exist d){}}");
                            System.exit(-1);
                        }
                    }
            }
        for (ParseTree child : ctx.children)
            if (child.getClass().equals(MxxParser.MthdefContext.class))
                nir.concat(visit(child));
        return nir;
    }

    @Override public IR visitMemdef(MxxParser.MemdefContext ctx)
    {
        IR nir = new IR();
        if (!unmhere.tmap.contains(vtype.tovtype(ctx.vtype()).name)){
            System.err.println("class a{class_not_exist b;}");
            System.exit(-1);
        }
        return nir;
    }

    private void memberDefinition(MxxParser.MemdefContext ctx)
    {
        unmhere.add(ctx.vname().getText(),vtype.tovtype(ctx.vtype()));
        vara variable = new vara(ctx.vname().getText(),vtype.tovtype(ctx.vtype()));
        HashMap<vara,Integer> tmp = cmid.get(ncls);
        tmp.put(variable,tmp.size());
        HashMap<String,vara> temp = cmeb.get(ncls);
        temp.put(variable.name,variable);
    }

    @Override public IR visitMthdef(MxxParser.MthdefContext ctx)
    {
        unmhere.nextScope();    IR nir = new IR();
        String name = ncls+"_"+ctx.fname().getText();
        unmhere.nfunc = name;   vtype type;
        if (ctx.vtype() != null)    type = vtype.tovtype(ctx.vtype());
        else
        {
            if (!ctx.fname().getText().equals(ncls))
            {
                System.err.println("class a{b(){}}");
                System.exit(-1);
            }
            type = (new vtype("void",0));
        }
        ArrayList<vtype>pams = new ArrayList<>();
        if (!unmhere.tmap.contains(type.name))
        {
            System.err.println("no such type func");
            System.exit(-1);
        }
        vara mths = nths(nclstp);   cths = mths;
        if (ctx.params() != null)
            for (int i = 0; i < ctx.params().param().size(); ++i)
            {
                String str = ctx.params().param(i).vname().getText();
                vtype vtp = vtype.tovtype(ctx.params().param(i).vtype());
                unmhere.add(str,vtp);
                if (!unmhere.tmap.contains(vtp.name))
                {
                    System.err.println("cls a{func b(no c){}}");
                    System.exit(-1);
                }
                pams.add(vtp);
            }

        func function = new func(name,type,pams);
        nrttp = type;   IR stmt = visit(ctx.block());   nrttp = null;
        nir.push(new sys(Oper.label,name));
        nir.push(new sys(Oper.enterFunction,name));
        nir.push(new sys(Oper.move, argList.get(63), vara.empty, mths));
        if (ctx.params() != null)
            for (int i = 0; i < ctx.params().param().size(); ++i)
            {
                String str = ctx.params().param(i).vname().getText();   str = unmhere.rnm.get(str);
                nir.push(new sys(Oper.move, argList.get(i), vara.empty, new vara(str, pams.get(i))));
            }
        nir.concat(stmt);
        if (type.is("void"))
        {
            sys tmp = new sys(Oper.ret, nvar((new vtype("void",0))), vara.empty, vara.empty);
            tmp.name = function.name;  nir.push(tmp);
        }
        else
        {
            sys tmp = new sys(Oper.ret, ncns(0, (new vtype("c_int",0))), vara.empty, vara.empty);
            tmp.name = function.name;  nir.push(tmp);
        }
        nir.push(new sys(Oper.exitFunction,name));
        unmhere.prevScope();    unmhere.nfunc = ""; return nir;
    }

    @Override public IR visitCfunCall(MxxParser.CfunCallContext ctx)
    {
        IR nir = new IR(), cl = visit(ctx.cval());
        String str = ctx.fname().getText();
        func function = unmhere.fmap.get(cl.last.dest.type.name+"_"+str);
        nir.concat(cl);
        if (ctx.exprs() != null)    nir.concat(visit(ctx.exprs()));
        nir.push(new sys(Oper.move,cl.last.dest,vara.empty,argList.get(63)));
        if (function != null)
        {
            vara tret = nvar(function.type);
            nir.push(new sys(Oper.call, function.name,tret));
        }
        else
        {
            vara tmp = nvar((new vtype("int",0)));
            switch (str)
            {
                case "parseInt":
                    nir.push(new sys(Oper.parseInt,vara.empty,vara.empty,nvar((new vtype("int",0)))));
                    break;
                case "substring":
                    nir.push(new sys(Oper.substring,argList.get(0),argList.get(1),nvar((new vtype("string",0)))));
                    break;
                case "ord":
                    nir.push(new sys(Oper.ord,argList.get(0),vara.empty,nvar((new vtype("int",0)))));
                    break;
                case "size":
                    nir.push(new sys(Oper.move,argList.get(63),vara.empty,tmp));
                    nir.push(new sys(Oper.load,tmp,vara.empty,tmp));
                    break;
                case "length":
                    nir.push(new sys(Oper.move,argList.get(63),vara.empty,tmp));
                    nir.push(new sys(Oper.load,tmp,vara.empty,tmp));
                    nir.push(new sys(Oper.and,tmp,ncns(255,(new vtype("c_int",0))),tmp));
                    break;
                default:
                    System.err.println("string.func()");
                    System.exit(-1);    break;
            }
        }
        return nir;
    }

    @Override public IR visitPnt(MxxParser.PntContext ctx)
    {
        IR nir = new IR();
        String str = ctx.variable(0).vname().getText();
        if (str.equals("this")) str = cths.name;
        vtype stype = unmhere.getVariable(str);
        if (stype == null)  stype = cmeb.get(ncls).get(str).type;
        vara start = nvar(stype.cpy());
        start.name = unmhere.rnm.get(str);
        vara cur = nvar(stype.cpy()), arr = nvar((new vtype("int",0))), head = nvar((new vtype("int",0)));
        IR tt = new IR();   int size = 0;
        for (int i = 0; i < ctx.variable().size(); ++i)
        {
            if (ctx.variable(i).index() != null)
                size += ctx.variable(i).index().size();
            ++size;
        }
        --size; int tnt = 0;
        nir.push(new sys(Oper.mallocArray,ncns(size,(new vtype("c_int",0))),vara.empty,arr));
        nir.push(new sys(Oper.move,arr,vara.empty,head));
        for (int i = 0; i < ctx.variable().size(); ++i)
        {
            if (i > 0)
            {
                String name = ctx.variable(i).vname().getText();
                vara variable = cmeb.get(cur.type.name).get(name);
                vara idx = ncns(cmid.get(cur.type.name).get(variable),(new vtype("c_int",0)));
                tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("c_int",0))),head));
                ++tnt;  tt.push(new sys(Oper.store,idx,vara.empty,head));
                cur.type = variable.type.cpy();
            }
            if (ctx.variable(i).index() != null)
                for (int j = 0; j < ctx.variable(i).index().size(); ++j)
                {
                    IR tmp = visit(ctx.variable(i).index(j));  nir.concat(tmp);
                    tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("c_int",0))),head));
                    ++tnt;  tt.push(new sys(Oper.store,tmp.last.dest,vara.empty,head));
                    --cur.type.dims;
                }
        }
        vara result = nvar(cur.type);
        tt.push(new sys(Oper.multiAddress,start,arr,result));
        nir.concat(tt);  nir.push(new sys(Oper.load,result,vara.empty,result));
        return nir;
    }

    @Override public IR visitPnt2(MxxParser.Pnt2Context ctx)
    {
        IR nir = new IR();
        IR lch = visit(ctx.expr());
        nir.concat(lch);
        vara start = lch.last.dest;
        for (int i = 0; i < ctx.dotAtom().size(); ++i)
            if (ctx.dotAtom(i).fname() != null)
            {
                String fname = ctx.dotAtom(i).fname().getText();
                if (ctx.dotAtom(i).exprs() != null)
                    nir.concat(visit(ctx.dotAtom(i).exprs()));
                nir.push(new sys(Oper.move,start,vara.empty,argList.get(63)));
                func function = unmhere.fmap.get(start.type.name+"_"+fname);
                if (function == null)
                {
                    vara tmp = nvar((new vtype("int",0))), retInt = nvar((new vtype("int",0))), retString = nvar((new vtype("string",0)));
                    switch (fname){
                        case "parseInt":
                            nir.push(new sys(Oper.parseInt,vara.empty,vara.empty,retInt));
                            nir.push(new sys(Oper.move,retInt,vara.empty,start));
                            start.type = retInt.type.cpy(); break;
                        case "substring":
                            nir.push(new sys(Oper.substring,argList.get(0),argList.get(1),retString));
                            nir.push(new sys(Oper.move,retString,vara.empty,start));
                            start.type = retString.type.cpy();  break;
                        case "ord":
                            nir.push(new sys(Oper.ord,argList.get(0),vara.empty,retInt));
                            nir.push(new sys(Oper.move,retInt,vara.empty,start));
                            start.type = retInt.type.cpy(); break;
                        case "size":
                            nir.push(new sys(Oper.move,argList.get(63),vara.empty,tmp));
                            nir.push(new sys(Oper.load,tmp,vara.empty,retInt));
                            nir.push(new sys(Oper.move,retInt,vara.empty,start));
                            start.type = retInt.type.cpy();   break;
                        case "length":
                            nir.push(new sys(Oper.move,argList.get(63),vara.empty,tmp));
                            nir.push(new sys(Oper.load,tmp,vara.empty,tmp));
                            nir.push(new sys(Oper.and,tmp,ncns(255,(new vtype("c_int",0))),retInt));
                            nir.push(new sys(Oper.move,retInt,vara.empty,start));
                            start.type=retInt.type.cpy();   break;
                        default:
                            System.err.println(" ~.~ ");
                            System.exit(-1);
                            break;
                    }
                }
                else
                {
                    vara ret = nvar(function.type);
                    nir.push(new sys(Oper.call,start.type.name+"_"+fname,ret));
                    nir.push(new sys(Oper.move,ret,vara.empty,start));
                    start.type = ret.type.cpy();
                }
            }
        return nir;
    }

    @Override public IR visitNvar(MxxParser.NvarContext ctx)
    {
        IR nir = new IR();
        vtype vtp = vtype.tovtype(ctx.vbtp());
        vara temp = nvar(vtype.tovtype(ctx.vbtp()));
        temp.isTemp = true;
        if (vtp.name.equals("int") || vtp.name.contains("bool"))
            nir.push(new sys(Oper.malloc,ncns(8,(new vtype("c_int",0))),vara.empty,temp));
        else
        {
            int size = cmeb.get(vtp.name).size();
            nir.push(new sys(Oper.mallocArray,ncns(size,(new vtype("c_int",0))), vara.empty, temp));
        }
        return nir;
    }

    @Override public IR visitNvar2(MxxParser.Nvar2Context ctx)
    {
        IR nir = new IR();
        vtype vtp = vtype.tovtype(ctx.vbtp());
        vara temp = nvar(vtype.tovtype(ctx.vbtp()));
        temp.isTemp = true;
        if (vtp.name.equals("int") || vtp.name.contains("bool"))
            nir.push(new sys(Oper.malloc,ncns(8,(new vtype("c_int",0))),vara.empty,temp));
        else
        {
            int size = cmeb.get(vtp.name).size();
            nir.push(new sys(Oper.mallocArray,ncns(size,(new vtype("c_int",0))), vara.empty, temp));
        }
        return nir;
    }

    @Override public IR visitCval(MxxParser.CvalContext ctx)
    {
        IR nir = new IR();
        String str = ctx.variable(0).vname().getText();
        if (str.equals("this")) str = cths.name;
        vtype stype = unmhere.getVariable(str);
        if (stype == null)  stype = cmeb.get(ncls).get(str).type;
        vara start = nvar(stype.cpy()), adr=nvar((new vtype("int",0)));
        nir.push(new sys(Oper.move,new vara(unmhere.rnm.get(str),stype),vara.empty,start));
        ArrayList<IR> pams = new ArrayList<>();
        for (int i = 0; i < ctx.variable(0).index().size(); ++i)
            {pams.add(visit(ctx.variable(0).index(i).expr()));  nir.concat(pams.get(i));}
        for (IR ii : pams)
        {
            nir.push(new sys(Oper.address,start,ii.last.dest,adr));
            nir.push(new sys(Oper.load,adr,vara.empty,start));   --start.type.dims;
        }
        for (int i = 1; i < ctx.variable().size(); ++i)
        {
            String name = ctx.variable(i).vname().getText();
            vara variable = cmeb.get(start.type.name).get(name);
            vara idx = ncns(cmid.get(start.type.name).get(variable),(new vtype("c_int",0)));
            nir.push(new sys(Oper.address,start,idx,adr));
            nir.push(new sys(Oper.load,adr,vara.empty,start));
            start.type = variable.type.cpy();   pams.clear();
            for (int j = 0; j < ctx.variable(i).index().size(); ++j)
                {pams.add(visit(ctx.variable(i).index(j).expr()));nir.concat(pams.get(j));}
            for (IR ii : pams)
            {
                nir.push(new sys(Oper.address,start,ii.last.dest,adr));
                nir.push(new sys(Oper.load,adr,vara.empty,start));   --start.type.dims;
            }
        }
        nir.push(new sys(Oper.move,start,vara.empty,start));
        return nir;
    }

    @Override public IR visitLval(MxxParser.LvalContext ctx)
    {
        IR nir = new IR();
        String str = ctx.variable(0).vname().getText();
        if (str.equals("this")) str = cths.name;
        vtype stype = unmhere.getVariable(str);
        boolean ok = false;
        if (stype == null) {stype = cmeb.get(ncls).get(str).type;   ok = true;}
        vara start = nvar(stype.cpy());
        start.name = str;   vara cur = nvar(stype.cpy());
        if (ok) nir.push(new sys(Oper.address,cths,ncns(cmid.get(ncls).get(start),(new vtype("c_int",0))),start));
        vara arr = nvar((new vtype("int",0)));
        vara head = nvar((new vtype("int",0)));
        IR tt = new IR();   int size = 0;
        for (int i = 0; i < ctx.variable().size(); ++i)
        {
            if (ctx.variable(i).index() != null)
                size+=ctx.variable(i).index().size();
            ++size;
        }
        --size; int tnt = 0;
        nir.push(new sys(Oper.mallocArray,ncns(size,(new vtype("c_int",0))),vara.empty,arr));
        nir.push(new sys(Oper.move,arr,vara.empty,head));
        for (int i = 0; i < ctx.variable().size(); ++i)
        {
            if (i > 0)
            {
                String name = ctx.variable(i).vname().getText();
                vara variable = cmeb.get(cur.type.name).get(name);
                vara idx = ncns(cmid.get(cur.type.name).get(variable),(new vtype("c_int",0)));
                tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("c_int",0))),head));
                ++tnt;  tt.push(new sys(Oper.store,idx,vara.empty,head));
                cur.type = variable.type.cpy();
            }
            if (ctx.variable(i).index() != null)
                for (int j = 0; j < ctx.variable(i).index().size(); ++j)
                {
                    IR tmp = visit(ctx.variable(i).index(j));  nir.concat(tmp);
                    tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("c_int",0))),head));
                    ++tnt;  tt.push(new sys(Oper.store,tmp.last.dest,vara.empty,head));
                    --cur.type.dims;
                }
        }
        vara result = nvar(cur.type);
        tt.push(new sys(Oper.multiAddress,start,arr,result));
        nir.concat(tt); return nir;
    }

    private IR getAddress(String vnm,ArrayList<IR> pams)
    {
        IR nir = new IR();
        vtype vtp = unmhere.getVariable(vnm);
        if (vtp == null)    vtp = cmeb.get(ncls).get(vnm).type;
        if (vtp == null)
        {
            System.err.println("cant find it");
            System.exit(-1);
        }
        vara variable = new vara(unmhere.rnm.get(vnm),vtp);
        if (pams.size() == 0)   nir.push(new sys(Oper.move,variable,vara.empty,variable));
        else
        {
            for (IR tmpIR : pams)
            {
                vara dest = tmpIR.last.dest;
                if (!dest.type.is("int") && !dest.type.is("c_int"))
                {
                    System.err.println("a[\"b\"]");
                    System.exit(-1);
                }
                nir.concat(tmpIR);
            }
            vara adr = nvar((new vtype("int",0))), start = nvar(vtp.cpy());
            nir.push(new sys(Oper.move,variable,vara.empty,start));
            int used = 0;
            for (IR tmpIR : pams)
            {
                vara dest = tmpIR.last.dest;
                sys zz = null;
                if ((++used) < pams.size()) zz = new sys(Oper.load, adr, vara.empty, start);
                nir.push(new sys(Oper.address,start,dest,adr));  nir.push(zz);   --start.type.dims;
            }
            nir.push(new sys(Oper.move,adr,vara.empty,adr));
        }
        return nir;
    }

    private IR assign(String vnm,IR exp,ArrayList<IR> pams)
    {
        IR nir = new IR();  nir.concat(exp);
        vtype vtp = unmhere.getVariable(vnm);
        if (vtp == null)    vtp = cmeb.get(ncls).get(vnm).type;
        if (vtp == null)
        {
            System.err.println("name not exist");
            System.exit(-1);
        }
        vara variable = new vara(unmhere.rnm.get(vnm),vtp);
        if (pams.size() == 0)
        {
            if (vtp.notmatch(exp.last.dest.type))
            {
                System.err.println("int a = string b");
                System.exit(-1);
            }
            nir.push(new sys(Oper.move,exp.last.dest,vara.empty,variable));
        }
        else
        {
            for(IR tmp : pams)
            {
                vara dest = tmp.last.dest;
                if (!dest.type.is("int") && !dest.type.is("c_int"))
                {
                    System.err.println("a[\"b\"]");
                    System.exit(-1);
                }
                nir.concat(tmp);
            }
            vara adr = nvar((new vtype("int",0)));
            vara start = nvar(vtp.cpy());
            nir.push(new sys(Oper.move,variable,vara.empty,start));
            int used = 0;
            for (IR tmpIR : pams)
            {
                vara dest = tmpIR.last.dest;
                sys zz = null;
                if ((++used) < pams.size()) zz = new sys(Oper.load, adr, vara.empty, start);
                nir.push(new sys(Oper.address,start,dest,adr));  nir.push(zz);   --start.type.dims;
            }
            if (start.type.notmatch(exp.last.dest.type))
            {
                System.err.println("int a = str b;");
                System.exit(-1);
            }
            nir.push(new sys(Oper.store,exp.last.dest,vara.empty,adr));
        }
        return nir;
    }

    @Override public IR visitAssign(MxxParser.AssignContext ctx)
    {
        String vnm = ctx.lval().variable(0).vname().getText();
        if (ctx.lval().variable().size()==1 && unmhere.getVariable(vnm)!=null)
        {
            IR exp = visit(ctx.expr());
            ArrayList<IR> pams = new ArrayList<>();
            for (int i = 0; i < ctx.lval().variable(0).index().size(); ++i)
                pams.add(visit(ctx.lval().variable(0).index().get(i)));
            return assign(vnm, exp, pams);
        }
        else
        {
            IR nir = new IR(), left = visit(ctx.lval()), exp = visit(ctx.expr());
            nir.concat(left);   nir.concat(exp);
            nir.push(new sys(Oper.store,exp.last.dest,vara.empty,left.last.dest));
            return nir;
        }
    }

    @Override public IR visitExprStmt(MxxParser.ExprStmtContext ctx) {return visit(ctx.expr());}

    @Override public IR visitDeffunc(MxxParser.DeffuncContext ctx)
    {
        unmhere.nextScope();
        IR nir = new IR();
        String name = ctx.fname().getText();
        unmhere.nfunc = name;
        vtype type = vtype.tovtype(ctx.vtype());
        if (!unmhere.tmap.contains(type.name))
        {
            System.err.println("no_such_type func()");
            System.exit(-1);
        }
        ArrayList<vtype>pams = new ArrayList<>();
        if (ctx.params() != null)
            for (int i = 0; i < ctx.params().param().size(); ++i)
            {
                String vnm = ctx.params().param(i).vname().getText();
                vtype vtp = vtype.tovtype(ctx.params().param(i).vtype());
                unmhere.add(vnm, vtp);
                if (!unmhere.tmap.contains(vtp.name))
                {
                    System.err.println("int a(no b){}");
                    System.exit(-1);
                }
                pams.add(vtp);
            }
        func function = new func(name,type,pams);
        nrttp = type;   IR stmt = visit(ctx.fbody());   nrttp = null;
        nir.push(new sys(Oper.label,name));
        nir.push(new sys(Oper.enterFunction,name));
        if (name.equals("main"))
        {
            nir.push(new sys(Oper.call, "global_init", nvar((new vtype("int",0)))));
            if (!type.name.equals("int"))
            {
                System.err.println("bool main");
                System.exit(-1);
            }
        }
        if (ctx.params() != null)
            for (int i = 0; i < ctx.params().param().size(); ++i)
            {
                String vnm = ctx.params().param(i).vname().getText();
                String newName = unmhere.rnm.get(vnm);
                nir.push(new sys(Oper.move, argList.get(i), vara.empty, new vara(newName, pams.get(i))));
            }
        nir.concat(stmt);
        sys quad = new sys(Oper.ret, ncns(0, (new vtype("c_int",0))), vara.empty, vara.empty);
        quad.name = function.name;  nir.push(quad); nir.push(new sys(Oper.exitFunction,name));
        unmhere.prevScope();    unmhere.nfunc = ""; return nir;
    }

    @Override public IR visitFbody(MxxParser.FbodyContext ctx)
    {
        IR nir = new IR();
        for (int i = 0; i < ctx.getChildCount(); ++i)
            nir.concat(visit(ctx.getChild(i)));
        return nir;
    }

    @Override public IR visitBlock(MxxParser.BlockContext ctx)
    {
        unmhere.nextScope();
        IR nir = new IR();
        for (int i = 0; i < ctx.getChildCount(); ++i)
            nir.concat(visit(ctx.getChild(i)));
        unmhere.prevScope();
        return nir;
    }

    @Override public IR visitIfstat(MxxParser.IfstatContext ctx)
    {
        IR nir = new IR();
        IR exp = visit(ctx.expr());
        nir.concat(exp);
        if ((new vtype("bool",0)).notmatch(exp.last.dest.type))
        {
            System.err.println("if (int)");
            System.exit(-1);
        }
        String lab1 = newlabel(),  lab2 = newlabel();
        if (ctx.elseBlock() != null)
        {
            unmhere.nextScope();    IR tir = visit(ctx.sob());   unmhere.prevScope();
            unmhere.nextScope();    IR fir = visit(ctx.elseBlock().sob());  unmhere.prevScope();
            sys aa = new sys(Oper.jz,exp.last.dest,vara.empty,vara.empty);  aa.name = lab1;
            nir.push(aa);   nir.concat(tir);
            nir.push(new sys(Oper.jmp,lab2));
            nir.push(new sys(Oper.label,lab1));
            nir.concat(fir);
            nir.push(new sys(Oper.label,lab2));
        }
        else
        {
            unmhere.nextScope();    IR tir = visit(ctx.sob());  unmhere.prevScope();
            sys aa = new sys(Oper.jz,exp.last.dest,vara.empty,vara.empty);  aa.name=lab2;
            nir.push(aa);   nir.concat(tir);
            nir.push(new sys(Oper.label,lab2));
        }
        return nir;
    }

    @Override public IR visitWhilestat(MxxParser.WhilestatContext ctx)
    {
        IR nir = new IR();
        String lab1 = newlabel(), lab2=newlabel();
        nlab.push(lab1);    nlabe.push(lab2);   nalab.push(lab1);
        IR exp = visit(ctx.expr());
        unmhere.nextScope();    IR stmt = new IR();
        if (ctx.sob() != null)  stmt = visit(ctx.sob());
        unmhere.prevScope();
        nir.push(new sys(Oper.label,lab1));
        nir.concat(exp);
        if ((new vtype("bool",0)).notmatch(exp.last.dest.type))
        {
            System.err.println("while(int)");
            System.exit(-1);
        }
        sys ss = new sys(Oper.jz,exp.last.dest,vara.empty,vara.empty);  ss.name = lab2;
        nir.push(ss);   nir.concat(stmt);
        nir.push(new sys(Oper.jmp,lab1));
        nir.push(new sys(Oper.label,lab2));
        nlab.pop(); nlabe.pop();    nalab.pop();
        return nir;
    }

    @Override public IR visitForstat(MxxParser.ForstatContext ctx)
    {
        IR nir = new IR();
        String lab1 = newlabel(), lab2 = newlabel(), lab3 = newlabel();
        nlab.push(lab1);    nlabe.push(lab2);   nalab.push(lab3);
        IR A = null, B = null, C = null;
        if (ctx.A != null)  A = visit(ctx.A);
        if (ctx.B != null)  B = visit(ctx.B);
        if (ctx.C != null)  C = visit(ctx.C);
        unmhere.nextScope();
        IR stmt = new IR();
        if (ctx.sob() != null)  stmt = visit(ctx.sob());
        unmhere.prevScope();
        nir.concat(A);
        nir.push(new sys(Oper.label,lab1));
        nir.concat(B);
        if (B != null)
        {
            if((new vtype("bool",0)).notmatch(B.last.dest.type))
            {
                System.err.println("for(;int;)");
                System.exit(-1);
            }
            sys quad = new sys(Oper.jz, B.last.dest, vara.empty, vara.empty);
            quad.name = lab2;   nir.push(quad);
        }
        nir.concat(stmt);
        nir.push(new sys(Oper.label,lab3));
        nir.concat(C);
        nir.push(new sys(Oper.jmp,lab1));
        nir.push(new sys(Oper.label,lab2));
        nlab.pop(); nlabe.pop();    nalab.pop();
        return nir;
    }

    @Override public IR visitReturnStmt(MxxParser.ReturnStmtContext ctx)
    {
        IR nir = new IR();
        if (ctx.expr() == null)
        {
            sys aa = new sys(Oper.ret,ncns(0,(new vtype("c_int",0))),vara.empty,vara.empty);
            aa.name = unmhere.nfunc;    nir.push(aa);
        }
        else
        {
            nir.concat(visit(ctx.expr()));
            if (nir.last.dest.type.is("void"))
            {
                System.err.println("ret void");
                System.exit(-1);
            }
            if (nrttp.notmatch(nir.last.dest.type))
            {
                System.err.println("int a(){return bool;}");
                System.exit(-1);
            }
            sys aa = new sys(Oper.ret,nir.last.dest,vara.empty,vara.empty);
            aa.name = unmhere.nfunc;    nir.push(aa);
        }
        return nir;
    }

    @Override public IR visitContinueStmt(MxxParser.ContinueStmtContext ctx)
    {
        IR nir = new IR();
        if (nlab.empty())
        {
            System.err.println("cant continue");
            System.exit(-1);
        }
        nir.push(new sys(Oper.jmp,nalab.peek()));
        return nir;
    }

    @Override public IR visitBreakStmt(MxxParser.BreakStmtContext ctx)
    {
        IR nir = new IR();
        if (nlabe.empty())
        {
            System.err.println("cant break");
            System.exit(-1);
        }
        nir.push(new sys(Oper.jmp,nlabe.peek()));
        return nir;
    }

    @Override public IR visitLor(MxxParser.LorContext ctx)
    {
        IR nir = new IR(), ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        String lab1 = newlabel(), lab2 = newlabel();
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,"||",ir1.last.dest.type) );
        temp.isTemp = true; nir.concat(ir0);
        sys aa = new sys(Oper.jz,ir0.last.dest,vara.empty,vara.empty);
        aa.name = lab1; nir.push(aa);
        nir.push(new sys(Oper.move,ncns(1,(new vtype("c_bool",0))),vara.empty,temp));
        nir.push(new sys(Oper.jmp,lab2));
        nir.push(new sys(Oper.label,lab1));
        nir.concat(ir1);
        nir.push(new sys(Oper.move,ir1.last.dest,vara.empty,temp));
        nir.push(new sys(Oper.label,lab2));
        nir.push(new sys(Oper.move,temp,vara.empty,temp));
        return nir;
    }

    @Override public IR visitLand(MxxParser.LandContext ctx)
    {
        IR nir = new IR(), ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        String lab1 = newlabel(), lab2 = newlabel();
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,"&&",ir1.last.dest.type) );
        temp.isTemp = true; nir.concat(ir0);
        sys aa = new sys(Oper.jnz,ir0.last.dest,vara.empty,vara.empty);
        aa.name = lab1; nir.push(aa);
        nir.push(new sys(Oper.move,ncns(0,(new vtype("c_bool",0))),vara.empty,temp));
        nir.push(new sys(Oper.jmp,lab2));
        nir.push(new sys(Oper.label,lab1));
        nir.concat(ir1);
        nir.push(new sys(Oper.move,ir1.last.dest,vara.empty,temp));
        nir.push(new sys(Oper.label,lab2));
        nir.push(new sys(Oper.move,temp,vara.empty,temp));
        return nir;
    }

    @Override public IR visitMoreless(MxxParser.MorelessContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type) );
        temp.isTemp = true;
        if (ir0.last.dest.type.name.contains("string"))
        {
            Oper oper = Oper.sless;
            if (ctx.op.getText().equals("<="))  oper = Oper.sleq;
            if (ctx.op.getText().equals(">"))   oper = Oper.sgre;
            if (ctx.op.getText().equals(">="))  oper = Oper.sgeq;
            sys quad = new sys(oper, ir0.last.dest, ir1.last.dest, temp);
            ir0.concat(ir1);    ir0.push(quad);
        }
        else
        {
            Oper oper = Oper.less;
            if (ctx.op.getText().equals("<="))  oper = Oper.leq;
            if (ctx.op.getText().equals(">"))   oper = Oper.gre;
            if (ctx.op.getText().equals(">="))  oper = Oper.geq;
            sys quad = new sys(oper, ir0.last.dest, ir1.last.dest, temp);
            ir0.concat(ir1);    ir0.push(quad);
        }
        return ir0;
    }

    @Override public IR visitEqual(MxxParser.EqualContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type) );
        temp.isTemp = true;
        if (ir0.last.dest.type.name.contains("string"))
        {
            sys quad = new sys(ctx.op.getText().equals("==")?Oper.sequal:Oper.sneq,ir0.last.dest,ir1.last.dest,temp);
            ir0.concat(ir1);    ir0.push(quad);
        }
        else
        {
            sys quad = new sys(ctx.op.getText().equals("==")?Oper.equal:Oper.neq,ir0.last.dest,ir1.last.dest,temp);
            ir0.concat(ir1);    ir0.push(quad);
        }
        return ir0;
    }

    @Override public IR visitShift(MxxParser.ShiftContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type));
        temp.isTemp = true;
        sys quad = new sys(ctx.op.getText().equals("<<")?Oper.shl:Oper.shr,ir0.last.dest,ir1.last.dest,temp);
        ir0.concat(ir1);    ir0.push(quad);
        return ir0;
    }

    @Override public IR visitAnd(MxxParser.AndContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,"&",ir1.last.dest.type));
        temp.isTemp =true;  sys quad = new sys(Oper.and,ir0.last.dest,ir1.last.dest,temp);
        ir0.concat(ir1);    ir0.push(quad); return ir0;
    }

    @Override public IR visitOr(MxxParser.OrContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,"|",ir1.last.dest.type) );
        temp.isTemp = true;
        sys quad = new sys(Oper.or,ir0.last.dest,ir1.last.dest,temp);
        ir0.concat(ir1);    ir0.push(quad); return ir0;
    }

    @Override public IR visitXor(MxxParser.XorContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,"^",ir1.last.dest.type) );
        temp.isTemp = true;
        sys quad = new sys(Oper.xor,ir0.last.dest,ir1.last.dest,temp);
        ir0.concat(ir1);    ir0.push(quad); return ir0;
    }

    @Override public IR visitIndex(MxxParser.IndexContext ctx){return visit(ctx.expr());}

    @Override public IR visitNarr(MxxParser.NarrContext ctx)
    {
        IR nir = new IR();
        int dims = ctx.index().size() + ctx.kh().size();
        vara adr = nvar(new vtype(ctx.type.getText(),dims));
        ArrayList<IR>pams  = new ArrayList<>();
        for (int i = 0;i < ctx.index().size(); ++i)
            {pams.add(visitIndex(ctx.index(i))); nir.concat(pams.get(i));}
        if (pams.size() > 1)
        {
            nir.push(new sys(Oper.mallocArray, ncns(pams.size(), (new vtype("c_int",0))), vara.empty, adr));
            vara pos = nvar((new vtype("int",0)));
            for (int i = 0; i < pams.size(); ++i)
            {
                nir.push(new sys(Oper.address, adr, ncns(i, (new vtype("c_int",0))), pos));
                if (pams.size()==2&&i==0&&pams.get(i).last.dest.constValue>500000)
                    pams.get(i).last.dest.constValue = 160000;
                nir.push(new sys(Oper.store, pams.get(i).last.dest, vara.empty, pos));
            }
            nir.push(new sys(Oper.multiArray, adr, vara.empty, adr));
        }
        else    nir.push(new sys(Oper.mallocArray, pams.get(0).last.dest, vara.empty, adr));
        String name = ctx.type.getText();
        adr.type = new vtype(name,dims);
        nir.push(new sys(Oper.move,adr,vara.empty,adr));
        return nir;
    }

    @Override public IR visitOp1(MxxParser.Op1Context ctx)
    {
        IR nir = visit(ctx.expr());
        vara last = nir.last.dest, temp = nvar(unmhere.operate(ctx.op.getText(),last.type));
        temp.isTemp = true; sys aa;
        switch (ctx.op.getText()){
            case "-":
                aa = new sys(Oper.neg,last,vara.empty,temp);
                nir.push(aa);   break;
            case "!":
                aa = new sys(Oper.not,last,vara.empty,temp);
                nir.push(aa);   break;
            case "~":
                aa = new sys(Oper.inv,last,vara.empty,temp);
                nir.push(aa);   break;
        }
        return nir;
    }

    @Override public IR visitOp2(MxxParser.Op2Context ctx)
    {
        IR nir = new IR();
        Oper oper = ctx.op.getText().equals("++")?Oper.add :Oper.sub;
        if (ctx.lval().variable().size() == 1)
        {
            String vnm = ctx.lval().variable(0).vname().getText();
            ArrayList<IR> pams = new ArrayList<>();
            for (int i = 0; i < ctx.lval().variable(0).index().size(); ++i)
                pams.add(visit(ctx.lval().variable(0).index().get(i)));
            IR adr = getAddress(vnm,pams); nir.concat(adr);
            if (pams.size() == 0)   nir.push(new sys(oper,adr.last.dest,ncns(1,(new vtype("c_int",0))),adr.last.dest));
            else
            {
                vara tmp = nvar((new vtype("int",0))); tmp.isTemp = true;
                nir.push(new sys(Oper.load,adr.last.dest,vara.empty,tmp));
                nir.push(new sys(oper,tmp,ncns(1,(new vtype("c_int",0))),tmp));
                nir.push(new sys(Oper.store,tmp,vara.empty,adr.last.dest));
                nir.push(new sys(Oper.move,tmp,vara.empty,tmp));
            }
        }
        else
        {
            IR left = visit(ctx.lval());   nir.concat(left);
            vara tmp =nvar((new vtype("int",0)));  tmp.isTemp = true;
            nir.push(new sys(Oper.load,left.last.dest,vara.empty,tmp));
            nir.push(new sys(oper,tmp,ncns(1,(new vtype("c_int",0))),tmp));
            nir.push(new sys(Oper.store,tmp,vara.empty,left.last.dest));
            nir.push(new sys(Oper.move,tmp,vara.empty,tmp));
        }
        return nir;
    }

    @Override public IR visitOp3(MxxParser.Op3Context ctx)
    {
        IR nir = new IR();
        Oper oper = ctx.op.getText().equals("++")?Oper.add:Oper.sub;
        vara value = nvar((new vtype("int",0)));
        if (ctx.lval().variable().size() == 1)
        {
            String vnm = ctx.lval().variable(0).vname().getText();
            ArrayList<IR> pams = new ArrayList<>();
            for (int i = 0; i < ctx.lval().variable(0).index().size(); ++i)
                pams.add(visit(ctx.lval().variable(0).index().get(i)));
            IR adr = getAddress(vnm,pams);  nir.concat(adr);
            if (!adr.last.dest.type.name.contains("int"))
            {
                System.err.println("bool++");
                System.exit(-1);
            }
            if (pams.size() == 0)
            {
                nir.push(new sys(Oper.move,adr.last.dest,vara.empty,value));
                nir.push(new sys(oper,adr.last.dest,ncns(1,(new vtype("c_int",0))),adr.last.dest));
                nir.push(new sys(Oper.move,value,vara.empty,value));
            }
            else
            {
                vara tmp =nvar((new vtype("int",0)));
                nir.push(new sys(Oper.load,adr.last.dest,vara.empty,tmp));
                nir.push(new sys(Oper.move,tmp,vara.empty,value));
                nir.push(new sys(oper,tmp,ncns(1,(new vtype("c_int",0))),tmp));
                nir.push(new sys(Oper.store,tmp,vara.empty,adr.last.dest));
                nir.push(new sys(Oper.move,value,vara.empty,value));
            }
        }
        else
        {
            IR left = visit(ctx.lval());
            nir.concat(left);   vara tmp = nvar((new vtype("int",0)));
            nir.push(new sys(Oper.load,left.last.dest,vara.empty,tmp));
            nir.push(new sys(Oper.move,tmp,vara.empty,value));
            nir.push(new sys(oper,tmp,ncns(1,(new vtype("c_int",0))),tmp));
            nir.push(new sys(Oper.store,tmp,vara.empty,left.last.dest));
            nir.push(new sys(Oper.move,value,vara.empty,value));
        }
        return nir;
    }

    @Override public IR visitOp4(MxxParser.Op4Context ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type) );
        temp.isTemp = true; Oper oper = Oper.mul;
        if (ctx.op.getText().equals("/"))   oper = Oper.div;
        else if (ctx.op.getText().equals("%"))    oper = Oper.mod;
        sys quad = new sys(oper,ir0.last.dest,ir1.last.dest,temp);
        ir0.concat(ir1);    ir0.push(quad); return ir0;
    }

    @Override public IR visitOp5(MxxParser.Op5Context ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type) );
        temp.isTemp = true; Oper oper = Oper.add;
        if (ctx.op.getText().equals("-"))   oper = Oper.sub;
        sys aa;
        if (temp.type.name.equals("string"))
        {
            aa = new sys(Oper.concat,ir0.last.dest,ir1.last.dest,temp);
            ir0.concat(ir1);    ir0.push(aa);
        }
        else
        {
            aa = new sys(oper,ir0.last.dest,ir1.last.dest,temp);
            ir0.concat(ir1);    ir0.push(aa);
        }
        return ir0;
    }

    @Override public IR visitInarr(MxxParser.InarrContext ctx)
    {
        IR nir = new IR();
        vtype vtp;
        if (ctx.vname().getText().equals("this"))   vtp = cths.type;
        else    vtp = unmhere.vmap.get(ctx.vname().getText());
        if (vtp == null)    vtp = cmeb.get(ncls).get(ctx.vname().getText()).type;
        if (vtp==null || vtp.dims<(ctx.expr()==null?0:ctx.expr().size()))
        {
            System.err.println("wrong value");
            System.exit(-1);
        }
        ArrayList<IR> pams =  new ArrayList<>();
        vara variable;
        if (ctx.vname().getText().equals("this"))   variable = cths;
        else if (unmhere.rnm.get(ctx.vname().getText()) == null)    variable = new vara(ctx.vname().getText(),vtp);
        else    variable = new vara(unmhere.rnm.get(ctx.vname().getText()),vtp);
        if (ctx.expr().size()==0)   nir.push(new sys(Oper.move,variable,vara.empty,variable));
        else
        {
            for (int i = 0; i < ctx.expr().size(); ++i) pams.add(visit(ctx.expr(i)));
            for (IR tmpIR : pams)
            {
                vara dest = tmpIR.last.dest;
                if (!dest.type.is("int") && !dest.type.is("c_int"))
                {
                    System.err.println("a[bool]");
                    System.exit(-1);
                }
                nir.concat(tmpIR);
            }
            vara adr = nvar((new vtype("int",0))), start = nvar(vtp.cpy());
            nir.push(new sys(Oper.move,variable,vara.empty,start));
            int used = 0;
            for (IR tmpIR : pams)
            {
                vara dest = tmpIR.last.dest;    sys zz = null;
                if ((++used) < pams.size()) zz = new sys(Oper.load, adr, vara.empty, start);
                nir.push(new sys(Oper.address,start,dest,adr));
                nir.push(zz);   --start.type.dims;
            }
            nir.push(new sys(Oper.load,adr,vara.empty,nvar(start.type)));
        }
        return nir;
    }

    @Override public IR visitCstr(MxxParser.CstrContext ctx)
    {
        IR nir = new IR();
        vara temp = nvar((new vtype("c_string",0)));
        cstr.put(temp,ctx.getText());
        nir.push(new sys(Oper.move,temp,vara.empty,temp));
        return nir;
    }

    @Override public IR visitCnum(MxxParser.CnumContext ctx)
    {
        IR nir = new IR();
        vara temp = nvar((new vtype("c_int",0)));
        temp.constValue=Integer.parseInt(ctx.getText());
        nir.push(new sys(Oper.move,temp,vara.empty,temp));
        return nir;
    }

    @Override public IR visitTrue(MxxParser.TrueContext ctx)
    {
        IR nir = new IR();
        vara temp = nvar((new vtype("c_bool",0))); temp.constValue = 1;
        nir.push(new sys(Oper.move,temp,vara.empty,temp));   return nir;
    }

    @Override public IR visitFuncCall(MxxParser.FuncCallContext ctx)
    {
        IR nir = new IR();
        String functionName = ctx.fname().getText();
        func function;
        if (!ncls.equals(""))
        {
            function = unmhere.fmap.get(ncls+"_"+functionName);
            if (function == null)   function = unmhere.fmap.get(functionName);
        }
        else    function = unmhere.fmap.get(functionName);
        ArrayList<String> local = null;
        if (rvist.bad(unmhere.nfunc,functionName) && function!=null && unmhere.lvar.get(unmhere.nfunc)!=null )
        {
            local = (ArrayList<String>) unmhere.lvar.get(unmhere.nfunc).clone();
            nir.push(new sys(Oper.saveContext));
            nir.push(new sys(Oper.endContext));
        }
        ArrayList<vtype>parameter = new ArrayList<>();
        if (ctx.exprs() != null)
        {
            nir.concat(visit(ctx.exprs()));
            parameter = nowpam.peek();    nowpam.pop();
        }
        vara tret = ncns(0,(new vtype("c_int",0)));
        if (function != null)
        {
            tret = nvar(function.type);
            nir.push(new sys(Oper.call,function.name,tret));
            if (parameter.size() != function.pams.size())
            {
                System.err.println("param number wrong");
                System.exit(-1);
            }
            for (int i = 0; i < parameter.size(); ++i)
                if (parameter.get(i).notmatch(function.pams.get(i)))
                {
                    System.err.println("param type wrong");
                    System.exit(-1);
                }
        }
        else
        {
            vara temp = nvar((new vtype("string",0))), tmp = nvar((new vtype("int",0)));
            switch (functionName){
                case "getInt":
                    nir.push(new sys(Oper.getInt,vara.empty,vara.empty,nvar((new vtype("int",0)))));
                    break;
                case "getString":
                    nir.push(new sys(Oper.getString,vara.empty,vara.empty,nvar((new vtype("string",0)))));
                    break;
                case "print":
                    nir.push(new sys(Oper.move,argList.get(0),vara.empty,temp));
                    nir.push(new sys(Oper.print,temp,vara.empty,vara.empty));
                    break;
                case "println":
                    nir.push(new sys(Oper.move,argList.get(0),vara.empty,temp));
                    nir.push(new sys(Oper.println,temp,vara.empty,vara.empty));
                    break;
                case "toString":
                    nir.push(new sys(Oper.move,argList.get(0),vara.empty,tmp));
                    nir.push(new sys(Oper.toString,tmp,vara.empty,temp));
                    break;
                default:
                    System.err.println("no such func");
                    System.exit(-1);
                    break;
            }
        }
        if (rvist.bad(unmhere.nfunc,functionName) && function!=null && local !=null)
        {
            nir.push(new sys(Oper.resumeContext));
            nir.push(new sys(Oper.endContext));
            nir.push(new sys(Oper.move,tret,vara.empty,tret));
        }
        return nir;
    }

    @Override public IR visitNull(MxxParser.NullContext ctx)
    {
        IR nir = new IR();
        vara temp = ncns(0,(new vtype("null",0)));
        nir.push(new sys(Oper.move,temp,vara.empty,temp));
        return nir;
    }

    @Override public IR visitFalse(MxxParser.FalseContext ctx)
    {
        IR nir = new IR();
        vara temp = nvar((new vtype("c_bool",0))); temp.constValue = 0;
        nir.push(new sys(Oper.move,temp,vara.empty,temp));   return nir;
    }

    @Override public IR visitDefvarno(MxxParser.DefvarnoContext ctx)
    {
        IR nir = new IR();
        if (vtype.tovtype(ctx.vtype()).is("void"))
        {
            System.err.println("void a;");
            System.exit(-1);
        }
        else if(unmhere.rnm.get(ctx.vtype().getText()) != null)
        {
            System.err.println("int a; int a;");
            System.exit(-1);
        }
        unmhere.add(ctx.vname().getText(),vtype.tovtype(ctx.vtype()));
        if(!unmhere.tmap.contains(vtype.tovtype(ctx.vtype()).name))
        {
            System.err.println("no a;");
            System.exit(-1);
        }
        return nir;
    }

    @Override public IR visitDefvarhave(MxxParser.DefvarhaveContext ctx)
    {
        String str = ctx.vname().getText();
        vtype vtp = vtype.tovtype(ctx.vtype());
        IR nir = new IR(), chs = visit(ctx.expr());
        nir.concat(chs);
        if (!unmhere.tmap.contains(vtp.name))
        {
            System.err.println("no a = b");
            System.exit(-1);
        }
        else if(unmhere.getVariable(vtp.name) != null)
        {
            System.err.println("int a; int a;");
            System.exit(-1);
        }
        unmhere.add(str,vtp);
        vara variable = new vara(unmhere.rnm.get(str),vtp);
        if (variable.type.notmatch(chs.last.dest.type))
        {
            System.err.printf("%s %s %s\n", ctx.getText(), variable.type.name, chs.last.dest.type.name);
            System.err.println("int a = bool;");
            System.exit(-1);
        }
        nir.push(new sys(Oper.move,chs.last.dest,vara.empty,variable));
        return nir;
    }

    @Override public IR visitExprs(MxxParser.ExprsContext ctx)
    {
        IR nir = new IR();
        ArrayList<vtype>pams = new ArrayList<>();
        ArrayList<vara>arrayList = new ArrayList<>();
        if (ctx.expr() != null) for (int i = 0;i < ctx.expr().size(); ++i)
        {
            IR tt = visit(ctx.expr(i));
            nir.concat(tt);
            arrayList.add(tt.last.dest);
            pams.add(tt.last.dest.type);
        }
        nowpam.push(pams);
        for (int i = arrayList.size()-1; i >= 0; --i)
            nir.push(new sys(Oper.move,arrayList.get(i),vara.empty,argList.get(i)));
        return nir;
    }

    @Override public IR visitXkh(MxxParser.XkhContext ctx) {return visit(ctx.expr());}
}
class Backend{
    IR ir;
    zcc unmh;
    HashMap<vara,String> cstr;
    Backend(){}
    void init(IR iir, HashMap<vara,String> csp,zcc smp, String of)
    {
        ir = iir; cstr = csp;
        unmh = smp; run(of);
    }
    void run(String ofile)
    {
        System.err.println("djrmlrfs");
    }
}
class MxxErrorListener extends BaseErrorListener
{
    static final MxxErrorListener INSTANCE = new MxxErrorListener();
    @Override public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine, String msg, RecognitionException e)
        throws ParseCancellationException   {   throw new ParseCancellationException("line " + line + ":" + charPositionInLine + " " + msg); }
}
public class Main{
    private static void run(InputStream input) throws Exception
    {
        ANTLRInputStream in = new ANTLRInputStream(input);
        MxxLexer lexer = new MxxLexer(in);
        lexer.addErrorListener(MxxErrorListener.INSTANCE);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MxxParser parser = new MxxParser(tokens);
        parser.addErrorListener(MxxErrorListener.INSTANCE);
        ParseTree tree = parser.program();
        MVisitor visitor = new MVisitor();
        IR iir = visitor.visit(tree);
//        iir.print();
        iir.simplify();
        Backend back = new Backend();
        back.init(iir,visitor.cstr,visitor.unmhere,"test.nasm");
    }

    public static void main(String [] args) throws Exception
    {
        File f = new File("test.mxx");
        InputStream input = null;
        input = new FileInputStream(f);
        run(input);
        System.err.println("finished!");
        System.exit(0);
    }
}
