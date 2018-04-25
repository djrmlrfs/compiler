import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

//import org.omg.Messaging.SYNC_WITH_TRANSPORT;
class clspam
{
    Map<String,Vector<String>> funchere = new HashMap<>();
    // name     type, params
    Map<String,String> varhere = new HashMap<>();

}
class scope
{
    Map<String,Vector<String>> funchere = new HashMap<>();
    // name     type, params
    Map<String,String> varhere = new HashMap<>();
    // name     type
    Map<String,clspam> clshere = new  HashMap<>();
    //class name , only topscope will use it
    scope()
    {
    }
}
class zz
{
    String tp = new String();
    String zz = new String();
    zz(){
        tp = "nop";
        zz = "nop";
    }
}
/*to do :
    things in blocks
    type check
    and else
 */
class MVisitor extends MxxBaseVisitor<zz>
{
    Vector<scope> scopes = new Vector();//scope stack, 0 is top
    int nscope;//where am i now
    int cbac;//can break and contiune
    String cnmm = new String();

    MVisitor()
    {
        cbac = 0;
        //add topscope and created function
        scope topscope = new scope();
        Vector tmp = new Vector();
        tmp.add("void");
        tmp.add("string");
        topscope.funchere.put("print",tmp);
        topscope.funchere.put("println",tmp);

        tmp= new Vector();
        tmp.add("int");
        topscope.funchere.put("getInt",tmp);

        tmp= new Vector();
        tmp.add("string");
        topscope.funchere.put("getString",tmp);

        tmp= new Vector();
        tmp.add("string");
        tmp.add("int");
        topscope.funchere.put("toString",tmp);


        scopes.add(topscope);
        nscope = 0;
        cnmm = "int";


    }

    void addscope()
    {
        ++nscope;
        scope nowscope = new scope();
        scopes.add(nowscope);
    }
    void popscope()
    {
        scopes.remove(nscope);
        --nscope;
    }


    void preclass(MxxParser.DefclassContext ctx)
    {
        String clsnm = ctx.cname().getText();
        if (scopes.elementAt(nscope).clshere.containsKey(clsnm))
        {
            System.out.printf("class %s has been defined!", clsnm);
            System.exit(-1);
        }
        clspam cpmhr = new clspam();
        scopes.elementAt(nscope).clshere.put(clsnm,cpmhr);
    }
    void prefunc(MxxParser.DeffuncContext ctx)
    {
        String ss = ctx.fname().getText();

        if (scopes.elementAt(nscope).funchere.containsKey(ss))
        {
            System.out.printf("a function same name %s has been defined!", ss);
            System.exit(-1);
        }
        Vector tmp = new Vector();
        tmp.add(ctx.vtype().getText());
        if (ctx.vtype().tname() != null)
            if (!scopes.elementAt(0).clshere.containsKey(ctx.vtype().tname().ID().getText()))
            {
                System.out.printf("no class %s!", ctx.vtype().tname().ID().getText());
                System.exit(-1);
            }

        if (ctx.params() != null)
           for (int k = 0; k < ctx.params().param().size(); ++k)
           {
               MxxParser.VtypeContext vtk = ctx.params().param(k).vtype();
               if (vtk.tname() != null)
                   if (!scopes.elementAt(0).clshere.containsKey(vtk.tname().ID().getText()))
                   {
                       System.out.printf("no class %s!", vtk.tname().ID().getText());
                       System.exit(-1);
                   }
               tmp.add(vtk.getText());
           }
        if (ss.equals("main"))
        {
            if (tmp.size() > 1)
            {
                System.out.printf("function main have parameter!");
                System.exit(-1);
            }
            if (!tmp.elementAt(0).equals("int"))
            {
                System.out.printf("type of function main should be int\n");
                System.exit(-1);
            }
        }
        scopes.elementAt(nscope).funchere.put(ss,tmp);
    }


    public zz visitProgram(MxxParser.ProgramContext ctx)
    {
        zz emptyz = new zz();
        int sz = ctx.defination().size();
        for (int k = 0; k < sz; ++k)    if (ctx.defination(k).defclass() != null)   preclass(ctx.defination(k).defclass());
        for (int k = 0; k < sz; ++k)    if (ctx.defination(k).deffunc() != null)   prefunc(ctx.defination(k).deffunc());
        for (int k = 0; k < sz; ++k)    if (ctx.defination(k).deffunc() == null)    visit(ctx.defination(k));
        scopes.elementAt(0).varhere.clear();;
        for (int k = 0; k < sz; ++k)    if (ctx.defination(k).defclass() == null)    visit(ctx.defination(k));

        if (!scopes.elementAt(0).funchere.containsKey("main"))
        {
            System.out.printf("function main not found\n");
            System.exit(-1);
        }
        return emptyz;
    }

    public zz visitDefination(MxxParser.DefinationContext ctx)
    {

        zz emptyz = new zz();
        if (ctx.defclass() != null) return visit(ctx.defclass());
        if (ctx.deffunc() != null)  return visit(ctx.deffunc());
        if (ctx.defvaris() != null) return visit(ctx.defvaris());
        return emptyz;
    }

    public zz visitDefclass(MxxParser.DefclassContext ctx)
    {
        //we only support defclass in topscope
        String ss = ctx.cname().getText();
        /*in prework class, only deal class with same name
          and all class is recorded
         according to manual, class define all vars first, then functions and construct func
         */
        //varis
        addscope();
        scopes.elementAt(nscope).varhere.put("this",ss);
        for (int k = 0; k < ctx.defvaris().size(); ++k)
        {
            visit(ctx.defvaris(k));
        }
        //function(construct included)
        Vector tmp = new Vector();
        tmp.add("void");
        scopes.elementAt(nscope).funchere.put(ss,tmp);
        int cnum = 0, sz = ctx.defmeth().size();
        for (int k = 0; k < sz; ++k)
            if (ctx.defmeth(k).defcons() == null)  prefunc(ctx.defmeth(k).deffunc());
        clspam phr = new clspam();
        phr.varhere.putAll(scopes.elementAt(nscope).varhere);
        phr.funchere.putAll(scopes.elementAt(nscope).funchere);
        scopes.elementAt(0).clshere.replace(ss,phr);
        for (int k = 0; k < sz; ++k)
            if (ctx.defmeth(k).defcons() != null) {
                visit(ctx.defmeth(k).defcons());
                ++cnum;
            }
        for (int k = 0; k < sz; ++k)
            if (ctx.defmeth(k).defcons() == null)  visit(ctx.defmeth(k).deffunc());
        if (cnum > 1)
        {
            System.out.printf("only one construction function is allowed\n");
            System.exit(-1);
        }
        popscope();
        /*
        * to do:
        * check
        * class a{
        *   a b;
        *  }
        *
        *  or
        *
        *  class a{b c;}
        *  class b{a c;}
        * */
        zz emptyz = new zz();
        return emptyz;
    }


    public zz visitDefmeth(MxxParser.DefmethContext ctx)
    {
        zz emptyz = new zz();
        return emptyz;
    }

    public zz visitDeffunc(MxxParser.DeffuncContext ctx)
    {
        String tpnm = ctx.vtype().getText();
        String fcnm = ctx.fname().getText();
        String ss = tpnm;
        for (int i = 0; i < tpnm.length(); ++i)
            if (tpnm.charAt(i) == '[')
            {
                ss = tpnm.substring(0,i);
                break;
            }


        if (!scopes.elementAt(0).clshere.containsKey(ss))
        if (!ss.equals("int") && !ss.equals("string") && !ss.equals("bool") && !ss.equals("void"))
        {
            System.out.printf("function %s type not defiened\n", fcnm);
            System.exit(-1);
        }
        if (ss.equals("void") && !ss.equals(tpnm))
        {
            System.out.printf("void[] type");
            System.exit(-1);
        }
        //vtype fname '(' params? ')' block ;
        addscope();
        MxxParser.ParamsContext cc = ctx.params();
        if (cc != null) for (int k = 0; k < cc.param().size(); ++k)
        {
            scopes.elementAt(nscope).varhere.put(cc.param(k).vname().getText(),cc.param(k).vtype().getText());
        }
        zz fblk = visit(ctx.block());
        popscope();
        String tp = fblk.tp;
        if (tp.equals("nop"))
        {
            //warning function may need return
        }
        else if (!tp.equals(tpnm))
            if (!tp.equals("null") || (tpnm.equals("int")||tpnm.equals("bool")||tpnm.equals("string")||tpnm.equals("void")))
            {
            System.err.printf("%s %s %s debug\n", ctx.getText(), tp, tpnm);
            System.out.printf("return type diff from function type in %s\n", fcnm);
            System.exit(-1);
        }
        return fblk;
    }

    public zz visitDefcons(MxxParser.DefconsContext ctx)
    {
        String ss = ctx.fname().getText();
        if (!scopes.elementAt(nscope).funchere.containsKey(ss))
        {
            System.out.printf("construction function name %s different from class name\n", ss);
            System.exit(-1);
        }
        addscope();
        visit(ctx.block());
        zz fblk = visit(ctx.block());
        popscope();
        if (!fblk.tp.equals("nop"))
        {
            System.out.printf("cant return in construction function\n");
            System.exit(-1);
        }
        return fblk;
    }

    public zz visitDefvaris(MxxParser.DefvarisContext ctx)
    {
        String tpnm = ctx.vtype().getText(), vanm = ctx.vname().getText();

        if (scopes.elementAt(nscope).varhere.containsKey(vanm))
        {
            System.out.printf("var %s has been defined!\n", vanm);
            System.exit(-1);
        }
        String ss = tpnm;
        for (int i = 0; i < tpnm.length(); ++i)
        {
            if (tpnm.charAt(i) == '[')
            {
                ss = tpnm.substring(0,i);
                break;
            }
        }


        if (ctx.expr() != null)
        {
            zz aa = visit(ctx.expr());
            if (aa.tp.equals("null"))
            {
                if (ss.equals("int") || ss.equals("bool") || ss.equals("string"))
                {
                    System.out.printf("%s %s = null happened\n", ss, vanm);
                    System.exit(-1);
                }
            }
            else if (!aa.tp.equals(tpnm))
            {
                System.out.println("something like int a = string happened");
                System.exit(-1);
            }
        }

        if (ss.equals("int") || ss.equals("bool") || ss.equals("string")  || scopes.elementAt(0).clshere.containsKey(ss))
            scopes.elementAt(nscope).varhere.put(vanm,tpnm);
        else
        {
            System.out.printf("no such type :%s!\n", tpnm);
            System.exit(-1);
        }

        zz emptyz = new zz();
        return emptyz;
    }

    public zz visitBlock(MxxParser.BlockContext ctx)
    {
        zz fst = new zz();
        int sz = ctx.state().size();
        for (int k = 0; k < sz; ++k)
        {
            if (fst.tp.equals("nop"))
                fst = visit(ctx.state(k));
            else    visit(ctx.state(k));
        }
        return fst;
    }

    public zz visitState(MxxParser.StateContext ctx)
    {
        if (ctx.block() != null)
        {
            addscope();
            zz trt = visit(ctx.block());
            popscope();
            return trt;
        }
        else if (ctx.IF() != null)
        {
            zz aa = visit(ctx.expr(0));
            if (!aa.tp.equals("bool"))
            {
                System.out.printf("expr type in if should be bool\n");
                System.exit(-1);
            }
            zz fst = new zz();
            for (int k = 0; k < ctx.state().size(); ++k)
            {
                addscope();
                if (fst.tp.equals("nop"))
                    fst = visit(ctx.state(k));
                else    visit(ctx.state(k));
                popscope();
            }
            return fst;
        }
        else if (ctx.FOR() != null)
        {
            ++cbac;
            if (ctx.pexp != null)
            {
                zz aa = visit(ctx.pexp);
                if (!aa.tp.equals("bool"))
                {
                    System.out.printf("second expr type in for should be bool\n");
                    System.exit(-1);
                }
            }
            if (ctx.zzxp != null)   visit(ctx.zzxp);
            //debug i dont know how to a?;b?;a? find b
            if (ctx.zcxp != null)   visit(ctx.zcxp);
            addscope();
            zz aa = visit(ctx.state(0));
            popscope();
            --cbac;
            return aa;
        }
        else if (ctx.WHILE() != null)
        {
            ++cbac;
            zz aa = visit(ctx.expr(0));
            if (!aa.tp.equals("bool"))
            {
                System.out.printf("expr type in while should be bool\n");
                System.exit(-1);
            }
            addscope();
            zz bb = visit(ctx.state(0));
            popscope();
            --cbac;
            return bb;
        }
        else if (ctx.RETURN() != null)
        {
            if (ctx.expr() != null && ctx.expr().size() >0)
            {
                return visit(ctx.expr(0));
            }
            zz aa = new zz();
            aa.tp = "void";
            return aa;
        }
        else if (ctx.BREAK() != null)
        {
            if (cbac < 1)
            {
                System.out.printf("cant break when not in for/while\n");
                System.exit(-1);
            }
        }
        else if (ctx.CONTINUE() != null)
        {
            if (cbac < 1)
            {
                System.out.printf("cant continue when not in for/while\n");
                System.exit(-1);
            }
        }
        else if (ctx.defvaris() != null)
        {
            visit(ctx.defvaris());
        }
        else if (ctx.expr().size() > 0)
        {
            visit(ctx.expr(0));
        }
        zz emptyz = new zz();
        return emptyz;
    }

    public zz visitExpr(MxxParser.ExprContext ctx) {
        if (ctx.Cnumber() != null) {//Cnumber
            zz aa = new zz();
            aa.tp = "int";
            return aa;
        } else if (ctx.Cstring() != null) {//Cstring
            zz aa = new zz();
            aa.tp = "string";
            return aa;
        } else if (ctx.TRUE() != null || ctx.FALSE() != null) {//true false
            zz aa = new zz();
            aa.tp = "bool";
            return aa;
        } else if (ctx.NULL() != null) {//null
            zz aa = new zz();
            aa.tp = "null";
            return aa;
        } else if (ctx.Op1 != null) {//
            zz aa = visit(ctx.expr(0));
            if (!aa.zz.equals("lv")) {
                System.out.printf("++(not lval)\n");
                System.exit(-1);
            }
            if (!aa.tp.equals("int"))
            {

                System.out.printf("++(not int)\n");
                System.exit(-1);
            }
            return aa;
        } else if (ctx.Op2 != null) {
            zz aa = visit(ctx.expr(0));
            aa.zz = "nop";
            String ss = aa.tp;
            if (ctx.Op2.getText().equals("!")) {
                if (!ss.equals("int") && !ss.equals("bool")) {
                    System.out.printf("wrong type in op2\n");
                    System.exit(-1);
                }
            } else if (!aa.tp.equals("int")) {
                System.out.printf("wrong type in op2\n");
                System.exit(-1);
            }
            return aa;
        } else if (ctx.Op3 != null) {
            zz a1 = visit(ctx.expr(0));
            zz a2 = visit(ctx.expr(1));


            if (!a1.tp.equals("int") || !a2.tp.equals("int")) {
                System.out.printf("wrong type in op3\n");
                System.exit(-1);
            }
            a1.zz = "nop";
            return a1;
        }
        else if (ctx.Op3_1 != null) {
            zz a1 = visit(ctx.expr(0));
            zz a2 = visit(ctx.expr(1));

            if (!a1.tp.equals("int") && !a1.tp.equals("string") || !a1.tp.equals(a2.tp)) {
                System.out.printf("wrong type in op3_1\n");
                System.exit(-1);
            }
            a1.zz = "nop";
            return a1;
        }
        else if (ctx.Op4 != null) {
            zz a1 = visit(ctx.expr(0));
            zz a2 = visit(ctx.expr(1));

            if (!a1.tp.equals("int") || !a2.tp.equals("int")) {
                System.out.printf("wrong type in op4\n");
                System.exit(-1);
            }
            a1.tp = "bool";
            a1.zz = "nop";
            return a1;
        } else if (ctx.Op5 != null) {
            zz a1 = visit(ctx.expr(0));
            zz a2 = visit(ctx.expr(1));
            if (!a1.tp.equals(a2.tp)) {
                if (a2.tp.equals("null")) {
                    a2.tp = a1.tp;
                    a1.tp = "null";
                }
                if (!(a1.tp.equals("null") && !(a2.tp.equals("int") || a2.tp.equals("bool") || a2.tp.equals("string") || a2.tp.equals("void")))) {
                    System.err.printf("debug %s", ctx.getText());
                    System.out.printf("wrong type in op5\n");
                    System.exit(-1);
                }
            }
            a1.tp = "bool";
            a1.zz = "nop";
            return a1;
        } else if (ctx.Op6 != null) {
            zz a1 = visit(ctx.expr(0));
            zz a2 = visit(ctx.expr(1));
            if (!a1.tp.equals("bool") || !a2.tp.equals("bool")) {
                System.out.printf("wrong type in op4\n");
                System.exit(-1);
            }
            a1.tp = "bool";
            a1.zz = "nop";
            return a1;
        } else if (ctx.NEW() != null) {
            /*
            I hate intelij
            cause it will make my{}wrong
            * */
            zz aa = new zz();
            if (ctx.cname() != null)
            {
                if (!scopes.elementAt(0).clshere.containsKey(ctx.cname().ID().getText()))
                {
                    System.out.printf("no such class\n");
                    System.exit(-1);
                }
            }
            if (ctx.expr() != null)
            {
                if (ctx.INT() != null)  aa.tp = "int";
                else if (ctx.STRING() != null)  aa.tp = "string";
                else if (ctx.BOOL() != null)    aa.tp = "bool";
                else    aa.tp = ctx.cname().ID().getText();
                String ss = ctx.getText();
                for (int k = ss.length()-1; k > 0; --k)    if (ss.charAt(k) == '[') aa.tp += "[]";
                aa.zz = "new";
                return aa;
            }
            else
            {
                aa.tp = ctx.cname().ID().getText();
                aa.zz = "new";
                return aa;
            }
       } else if (ctx.Pnt != null) {
            zz aa = visit(ctx.expr(0));

            MxxParser.ExprContext ex1 = ctx.expr(1);
            if (!scopes.elementAt(0).clshere.containsKey(aa.tp)) {
                String ss = ex1.fname().ID().getText();
                if (aa.tp.equals("string")) {
                    if (ex1.fname() == null) {
                        System.out.printf("only string.function is ok\n");
                        System.exit(-1);
                    }
                    if (ss.equals("length") || ss.equals("parseInt")) {
                        if (ex1.exprs() != null) {
                            System.out.printf("param wrong in string.length\n");
                            System.exit(-1);
                        }
                        aa.tp = "int";
                        aa.zz = "nop";
                        return aa;
                    } else if (ss.equals("substring")) {
                        if (ex1.exprs() == null) {
                            System.out.printf("param wrong in string.substr\n");
                            System.exit(-1);
                        }
                        zz a1 = visit(ex1.exprs().expr(0));
                        zz a2 = visit(ex1.exprs().expr(1));
                        if (ex1.exprs().expr().size() != 2 || !a1.tp.equals("int") || !a2.tp.equals("int")) {
                            System.out.printf("param wrong in string.substr\n");
                            System.exit(-1);
                        }
                        a1.tp = "string";
                        a1.zz = "nop";
                        return aa;
                    } else if (ss.equals("ord")) {
                        if (ex1.exprs() == null) {
                            System.out.printf("param wrong in string.ordr\n");
                            System.exit(-1);
                        }
                        aa = visit(ex1.exprs().expr(0));
                        if (ex1.exprs().expr().size() != 1 || !aa.tp.equals("int")) {
                            System.out.printf("param wrong in string.ord\n");
                            System.exit(-1);
                        }
                        aa.tp = "int";
                        aa.zz = "nop";
                        return aa;
                    } else {
                        System.out.printf("no string.%s", ss);
                        System.exit(-1);
                    }
                } else if (aa.tp.contains("[")) {
                    if (!(ex1.fname() != null && ex1.exprs() == null)) {
                        System.out.printf("only array.size() is ok\n");
                        System.exit(-1);
                    } else if (!ss.equals("size")) {
                        System.out.printf("only array.size() is ok\n");
                        System.exit(-1);
                    } else {
                        aa.tp = "int";
                        aa.zz = "nop";
                        return aa;
                    }
                } else {
                    System.out.printf("no class %s\n", aa.tp);
                    System.exit(-1);
                }
            }
            else {
                clspam cc = scopes.elementAt(0).clshere.get(aa.tp);
                if (ex1.vname() != null) {
                    String ss = ex1.vname().ID().getText();
                    if (!cc.varhere.containsKey(ss)) {
                        System.out.printf("class %s have no var %s\n", aa.tp, ss);
                        System.exit(-1);
                    }
                    aa.zz = "lv";
                    aa.tp = cc.varhere.get(ss);
                    return aa;
                } else if (ex1.fname() != null) {
                    String ss = ex1.fname().ID().getText();
                    if (!cc.funchere.containsKey(ss)) {
                        System.out.printf("class %s have no func %s\n", aa.tp, ss);
                        System.exit(-1);
                    }
                    Vector<String> pams = cc.funchere.get(ss);
                    if (ex1.exprs() == null) {
                        if (pams.size() != 1) {
                            System.out.printf("function %s in class %s have no param %s\n", ss, aa.tp);
                            System.exit(-1);
                        }
                    } else if (ex1.exprs().expr().size() != pams.size() - 1) {
                        System.out.printf("different param num in  %s ,class %s\n", ss, aa.tp);
                        System.exit(-1);
                    } else {
                        for (int k = 1; k < pams.size(); ++k) {
                            zz zs = visit(ex1.exprs().expr(k - 1));
                            if (!pams.elementAt(k).equals(zs.tp)) {

                                System.out.printf("wrong type, %s in class %s, param %d\n", ss, aa.tp, k - 1);
                                System.exit(-1);
                            }
                        }
                    }
                    aa.tp = pams.elementAt(0);
                    aa.zz = "nop";
                    return aa;
                }
                else if (ex1.getText().contains("[") && ex1.NEW() == null)
                {
                    if (ex1.expr(0).vname() == null) {
                        System.out.printf("class.a+b[c]\n");
                        System.exit(-1);
                    }
                    String ss = ex1.expr(0).vname().ID().getText();
                    if (!cc.varhere.containsKey(ss)) {
                        System.out.printf("class %s no array %s\n", aa.tp, ss);
                        System.exit(-1);
                    }
                    int num = 0;
                    if (ex1.expr() != null) for (int i = 1; i < ex1.expr().size(); ++i) {
                        ++num;
                        aa = visit(ex1.expr(i));
                        if (!aa.tp.equals("int")) {
                            System.out.printf("[not int]\n");
                            System.exit(-1);
                        }
                    }
                    String zcc = "tagher";
                    ss = cc.varhere.get(ss);
                    for (int i = 1; i < ss.length(); ++i) {
                        if (ss.charAt(i) == '[') {
                            if (zcc.equals("tagher")) zcc = ss.substring(0, i);
                            --num;
                        }
                    }
                    if (num > 0) {
                        System.out.printf("d of array wrong\n");
                        System.exit(-1);
                    }
                    aa.tp = zcc;
                    for (; num < 0; ++num) aa.tp += "[]";
                    aa.zz = "lv";
                    return aa;
                }
                else {
                    System.out.printf("class only have class.func/var\n");
                    System.exit(-1);
                }
            }
        } else if (ctx.fname() != null) {
            String ss = ctx.fname().ID().getText();
            int kz = 1;
            for (; kz >= 0; --kz)     if (scopes.elementAt(kz).funchere.containsKey(ss))    break;
            if (kz < 0)
            {
                System.out.printf("no func %s\n", ss);
                System.exit(-1);
            }
            Vector<String> pams = scopes.elementAt(kz).funchere.get(ss);
            if (ctx.exprs() == null) {
                if (pams.size() != 1) {
                    System.out.printf("function %s have no param %s\n", ss);
                    System.exit(-1);
                }
            } else if (ctx.exprs().expr().size() != pams.size() - 1) {
                System.out.printf("different param num in  func %s\n", ss);
                System.exit(-1);
            } else {
                for (int k = 1; k < pams.size(); ++k) {
                    zz zs = visit(ctx.exprs().expr(k - 1));
                    if (!pams.elementAt(k).equals(zs.tp))
                    {
                        if (!zs.tp.equals("null") || (pams.elementAt(k).equals("int") || pams.elementAt(k).equals("bool") || pams.elementAt(k).equals("string")))
                        {
                            System.err.printf("debug %s %s %s\n", ctx.getText(), zs.tp, pams.elementAt(k));
                            System.out.printf("wrong type in func %s, param %d\n", ss, k - 1);
                            System.exit(-1);
                        }
                    }
                }
            }
            zz aa = new zz();
            aa.tp = pams.elementAt(0);
            aa.zz = "nop";
            return aa;
        } else if (ctx.vname() != null) {
            zz aa = new zz();
            int k = nscope;
            String ss = ctx.vname().ID().getText();

            for (; k >= 0; --k) {
                if (scopes.elementAt(k).varhere.containsKey(ss)) {
                    aa.tp = scopes.elementAt(k).varhere.get(ss);
                    aa.zz = "lv";
                    return aa;
                }
            }
            if (k < 0) {
                System.out.printf("var %s not declared\n", ss);
                System.exit(-1);
            }
        } else if (ctx.expr().size() == 1) {//(expr)
            zz aa = visit(ctx.expr(0));
            aa.zz = "nop";
            return aa;
        } else if (ctx.Equl != null) {
            zz aa = visit(ctx.expr(0));

            if (aa.zz != "lv") {

                System.err.printf("%s %s %s debug\n", ctx.getText(), aa.zz, aa.tp);

                System.out.printf("need lval\n");
                System.exit(-1);
            }
            zz a2 = visit(ctx.expr(1));
            if (!aa.tp.equals(a2.tp))
                if ((aa.tp.equals("int")||aa.tp.equals("bool")||aa.tp.equals("void")||aa.tp.equals("string")) || !a2.tp.equals("null"))
                {
                System.out.printf("var_type1 = var_type2\n");
                System.exit(-1);
            }
            aa.zz = "nop";
            return aa;
        } else {//expr[expr]

            if (ctx.expr(0).vname() == null) {
                System.out.printf("a+b[c]\n");
                System.exit(-1);
            }
            String ss = ctx.expr(0).vname().ID().getText();
            int k = nscope;
            for (; k >= 0; --k) if (scopes.elementAt(k).varhere.containsKey(ss)) break;
            if (k < 0) {
                System.out.printf("array %s not found\n", ss);
                System.exit(-1);
            }
            ss = scopes.elementAt(k).varhere.get(ss);
            int num = 0;
            zz aa = new zz();
            for (int i = 1; i < ctx.expr().size(); ++i) {
                --num;
                aa = visit(ctx.expr(i));
                if (!aa.tp.equals("int")) {
                    System.out.printf("[not int]\n");
                    System.exit(-1);
                }
            }
            String zcc = "tagher";
            for (int i = 1; i < ss.length(); ++i) {
                if (ss.charAt(i) == '[') {
                    if (zcc.equals("tagher")) zcc = ss.substring(0, i);
                    ++num;
                }
            }
            if (num < 0) {
                System.out.printf("d of array wrong\n");
                System.exit(-1);
            }
            aa.tp = zcc;
            aa.zz = "lv";
            for (; num > 0; --num) aa.tp += "[]";
            return aa;
        }
        zz trt = new zz();
        return trt;
    }
}

public class Main
{

    public static void run(InputStream input) throws Exception
    {
        ANTLRInputStream in = new ANTLRInputStream(input);
        MxxLexer lexer = new MxxLexer(in);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MxxParser parser = new MxxParser(tokens);
        //ParseTree tree = parser.program();
        //MVisitor avisitor = new MVisitor();
        //avisitor.visit(tree);
    }

    public static void main(String[] args) throws Exception
    {
         //File f = new File("E:/program.txt");
        File f = new File("program.txt");
        InputStream input = null;
        input = new FileInputStream(f);
        run(input);
        System.err.println("finished!");
        System.exit(0);
    }
}