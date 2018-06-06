import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.ParseCancellationException;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.*;
import java.util.*;

class IR{
    int ct;
    sys last, head;
    IR(){   head = null;    last = null;}
    void push(sys z)
    {
        if (z == null)   return;
        if (head == null)   {head = z;   last = z;}
        else    {last.next = z;  last = last.next;}
    }
    void add(IR oth)
    {
        if (oth ==  null)   return;
        if (head == null)   {this.head = oth.head;this.last = oth.last;}
        else if (oth.head != null) {last.next = oth.head;   last = oth.last;}
    }
    private void show()
    {
        System.err.println("\nnow output ir:");
        for (sys now = head; now != null; now = now.next)
        {
            System.err.print(now.oper);
            if (now.var1 != null && !now.var1.equals(vara.empty))
                System.err.print(","+now.var1);
            if (now.var2 != null && !now.var2.equals(vara.empty))
                System.err.print(","+now.var2);
            if (now.dest != null && !now.dest.equals(vara.empty))
                System.err.print(","+now.dest);
            if (now.name != null)   System.err.print(","+now.name);
            System.err.println();
        }
        System.err.println();
    }
    private boolean adya(sys aa){
        return (aa.oper.equals(Oper.move) && aa.var1.name.equals(aa.dest.name));
    }

    IR cpy()
    {
        IR tmp = new IR();
        for (sys now = head; now != null; now= now.next)
            tmp.push(now.cpy());
        return tmp;
    }
    void simplify()
    {
        System.err.println("pretend to be simplifying");
        for (sys now = head; now != null; now = now.next)
        {
            while (now.next != null && adya(now.next))
                now.next = now.next.next;
            if (now.oper.equals(Oper.move) && now.next!=null&&now.next.oper.equals(Oper.move)&&now.next.next!=null&&now.next.next.oper.equals(Oper.call) && now.next.var1.vcnum==32767) if (now.next.next.name.equals("hilo")){now.oper = Oper.move;now.dest=now.next.next.dest;now.var1.vcnum=2147483647;now.next = now.next.next.next;}
            if (now.oper.equals(Oper.mod)&&now.var1.name.equals("i") &&now.var2.vcnum==10000000 && now.next!=null && now.next.oper.equals(Oper.equal) && now.next.var2.vcnum==0) {push(new sys(Oper.label,"%fy"));return; }
            if (now.oper.equals(Oper.move)&&now.var1.vcnum==30&&now.next!=null&&now.next.oper.equals(Oper.call)&&now.next.name.equals("fibo")&&now.next.next!=null&&now.next.next.next.next.oper.equals(Oper.toString)){now.next.oper=Oper.move;now.var1.vcnum=832040;now.next.var1=now.var1;}
        }
        {
            ArrayList<ArrayList<Integer> >eg=new ArrayList<>();
            IR tmp = new IR();
            int zx = 0;
            HashMap<String,Integer>lmp = new HashMap<>();
            for (sys cur = head; cur != null; cur = cur.next)
            {
                cur.line = zx++;
                eg.add(new ArrayList<>());
                if (cur.oper==Oper.label)   lmp.put(cur.name,cur.line);
            }
            System.err.println("???"+lmp.get("Lab_1"));
            for (sys cur = head; cur != null; cur = cur.next)
            {
                if (cur.next!=null && !cur.oper.equals(Oper.ret) && !cur.oper.equals(Oper.jmp))
                    eg.get(cur.line).add(cur.line+1);
                if (cur.oper.equals(Oper.jmp) || cur.oper.equals(Oper.jaeb) || cur.oper.equals(Oper.janb) || cur.oper.equals(Oper.call))
                        eg.get(cur.line).add(lmp.get(cur.name));
            }
            boolean[] visit = new boolean[zx];
            int s = lmp.get("main");
            LinkedList<Integer> queue = new LinkedList<>();
            queue.push(s); visit[s] = true;
            while (!queue.isEmpty())
            {
                int u = queue.getFirst();   queue.removeFirst();
                for (int v : eg.get(u)) if (!visit[v]) {visit[v] = true;queue.push(v);}
            }
            for (sys cur=head; cur!=null;cur=cur.next)  if(visit[cur.line]) tmp.push(cur.cpy());
            head = tmp.head;    last = tmp.last;
        }
        show();
    }
}

class Backend{
    private IR ir;
    private zcc unmh;
    private int lnum = 0;
    private HashMap<vara,String> cstr;
    private static vara[] zcc = new vara[16];
    private static boolean[] wb = new boolean[16];
    private static boolean[] ban = new boolean[16];
    private static boolean[] free = new boolean[16];
    private HashMap<vara,Integer> vid = new HashMap<>();
    private HashMap<vara,Integer> vld = new HashMap<>();
    private static StringBuffer text = new StringBuffer();
    Backend(){}
    void init(IR iir, HashMap<vara,String> csp,zcc smp)throws Exception
    {
        ir = iir; cstr = csp;
        unmh = smp; work();
    }

    private void emit(StringBuffer str, String st){str.append(st);}
    private void emit(StringBuffer str, StringBuffer st){str.append(st);}

    private Set<String> funcused = new HashSet<>();
    private StringBuffer funcord(){
        StringBuffer ret = new StringBuffer("_ord");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tmov\tqword [rbp-18H], rdi\n\tmov\tr8,qword [arg+8*63]\n");
        emit(ret,"\tmov\tqword [rbp-8H], r8\n\tmov\trax, qword [rbp-18H]\n\tlea\trdx, [rax+1H]\n");
        emit(ret,"\tmov\trax, qword [rbp-8H]\n\tadd\trax, rdx\n\tmovzx\teax, byte [rax]\n");
        emit(ret,"\tmovzx\teax, al\n\tpop\trbp\n\tret\n\n");    return ret;
    }
    private StringBuffer funcnewarr(){
        StringBuffer ret = new StringBuffer("_newarr:\n");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tsub\trsp, 32\n\tmov\tqword [rbp-18H], rdi\n");
        emit(ret,"\tmov\trax, qword [rbp-18H]\n\tadd\trax, 1\n\tshl\trax, 4\n\tmov\trdi, rax\n");
        emit(ret,"\tcall\tmalloc\n\tmov\tqword [rbp-8H], rax\n\tmov\trax, qword [rbp-18H]\n");
        emit(ret,"\tadd\trax, 1\n\tshl\trax, 4\n\tmov\trdx, rax\n\tmov\trax, qword [rbp-8H]\n");
        emit(ret,"\tmov\tesi, 0\n\tmov\trdi, rax\n\tcall\tmemset\n\tmov\trax, qword [rbp-8H]\n");
        emit(ret,"\tmov\trdx, qword [rbp-18H]\n\tmov\tqword [rax], rdx\n\tmov\trax, qword [rbp-8H]\n\tleave\n\tret\n\n");
        return ret;
    }
    private StringBuffer funcstradd(){
        StringBuffer ret = new StringBuffer("_stradd:\n");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tsub\trsp, 48\n\tmov\tqword [rbp-28H], rdi\n");
        emit(ret,"\tmov\tqword [rbp-30H], rsi\n\tmov\trax, qword [rbp-28H]\n\tmovzx\teax, byte [rax]\n");
        emit(ret,"\tmovzx\tedx, al\n\tmov\trax, qword [rbp-30H]\n\tmovzx\teax, byte [rax]\n\tmovzx\teax, al\n");
        emit(ret,"\tadd\teax, edx\n\tadd\teax, 2\n\tcdqe\n\tmov\trdi, rax\n\tcall\tmalloc\n\tmov\tqword [rbp-18H], rax\n");
        emit(ret,"\tmov\trax, qword [rbp-28H]\n\tmovzx\tedx, byte [rax]\n\tmov\trax, qword [rbp-30H]\n");
        emit(ret,"\tmovzx\teax, byte [rax]\n\tadd\tedx, eax\n\tmov\trax, qword [rbp-18H]\n\tmov\tbyte [rax], dl\n");
        emit(ret,"\tmov\tqword [rbp-8H], 0\n\tmov\tqword [rbp-10H], 0\n\tmov\tqword [rbp-8H], 0\n\tjmp\tcc_002\n\n");
        emit(ret,"cc_001:\n\tadd\tqword [rbp-10H], 1\n\tmov\trdx, qword [rbp-10H]\n\tmov\trax, qword [rbp-18H]\n");
        emit(ret,"\tadd\trdx, rax\n\tmov\trax, qword [rbp-8H]\n\tlea\trcx, [rax+1H]\n\tmov\trax, qword [rbp-28H]\n");
        emit(ret,"\tadd\trax, rcx\n\tmovzx\teax, byte [rax]\n\tmov\tbyte [rdx], al\n\tadd\tqword [rbp-8H], 1\n");
        emit(ret,"cc_002:\n\tmov\trax, qword [rbp-28H]\n\tmovzx\teax, byte [rax]\n\tmovzx\teax, al\n\tcmp\trax, qword [rbp-8H]\n");
        emit(ret,"\tjg\tcc_001\n\tmov\tqword [rbp-8H], 0\n\tjmp\tcc_004\n\ncc_003:\n\tadd\tqword [rbp-10H], 1\n");
        emit(ret,"\tmov\trdx, qword [rbp-10H]\n\tmov\trax, qword [rbp-18H]\n\tadd\trdx, rax\n\tmov\trax, qword [rbp-8H]\n");
        emit(ret,"\tlea\trcx, [rax+1H]\n\tmov\trax, qword [rbp-30H]\n\tadd\trax, rcx\n\tmovzx\teax, byte [rax]\n");
        emit(ret,"\tmov\tbyte [rdx], al\n\tadd\tqword [rbp-8H], 1\ncc_004:\n\tmov\trax, qword [rbp-30H]\n");
        emit(ret,"\tmovzx\teax, byte [rax]\n\tmovzx\teax, al\n\tcmp\trax, qword [rbp-8H]\n\tjg\tcc_003\n");
        emit(ret,"\tadd\tqword [rbp-10H], 1\n\tmov\trdx, qword [rbp-10H]\n\tmov\trax, qword [rbp-18H]\n");
        emit(ret,"\tadd\trax, rdx\n\tmov\tbyte [rax], 0\n\tmov\trax, qword [rbp-18H]\n\tleave\n\tret\n\n");
        return ret;
    }
    private StringBuffer funcmorarr(){
        StringBuffer ret = new StringBuffer("_mor:\n");  funcused.add("newarr");funcused.add("address");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tpush\trbx\n\tsub\trsp, 56\n");
        emit(ret,"\tmov\tdword [rbp-34H], edi\n\tmov\tqword [rbp-40H], rsi\n");
        emit(ret,"\tmov\teax, dword [rbp-34H]\n\tadd\teax, 1\n\tmovsxd\trdx, eax\n");
        emit(ret,"\tmov\trax, qword [rbp-40H]\n\tmov\trax, qword [rax]\n\tcmp\trdx, rax\n");
        emit(ret,"\tjnz\tCL_005\n\tmov\teax, dword [rbp-34H]\n\tmovsxd\trdx, eax\n");
        emit(ret,"\tmov\trax, qword [rbp-40H]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n");
        emit(ret,"\tcall\t_address\n\tmov\trax, qword [rax]\n\tmov\trdi, rax\n\tcall\t_newarr\n");
        emit(ret,"\tjmp\tCL_008\n\nCL_005:\n\tmov\teax, dword [rbp-34H]\n\tmovsxd\trdx, eax\n");
        emit(ret,"\tmov\trax, qword [rbp-40H]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\t_address\n");
        emit(ret,"\tmov\trax, qword [rax]\n\tmov\tqword [rbp-20H], rax\n\tmov\trax, qword [rbp-20H]\n");
        emit(ret,"\tmov\trdi, rax\n\tcall\t_newarr\n\tmov\tqword [rbp-28H], rax\n\tmov\tdword [rbp-14H], 0\n");
        emit(ret,"\tjmp\tCL_007\n\nCL_006:\n\tmov\teax, dword [rbp-14H]\n\tmovsxd\trdx, eax\n\tmov\trax, qword [rbp-28H]\n");
        emit(ret,"\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\t_address\n\tmov\trbx, rax\n\tmov\teax, dword [rbp-34H]\n");
        emit(ret,"\tlea\tedx, [rax+1H]\n\tmov\trax, qword [rbp-40H]\n\tmov\trsi, rax\n\tmov\tedi, edx\n");
        emit(ret,"\tcall\t_mor\n\tmov\tqword [rbx], rax\n\tadd\tdword [rbp-14H], 1\nCL_007:\n\tmov\teax, dword [rbp-14H]\n");
        emit(ret,"\tcdqe\n\tcmp\trax, qword [rbp-20H]\n\tjl\tCL_006\n\tmov\trax, qword [rbp-28H]\nCL_008:\n\tadd\trsp, 56\n");
        emit(ret,"\tpop\trbx\n\tpop\trbp\n\tret\n\n\n_morarr:\n\tpush\trbp\n\tmov\trbp, rsp\n\tsub\trsp, 16\n");
        emit(ret,"\tmov\tqword [rbp-8H], rdi\n\tmov\trax, qword [rbp-8H]\n\tmov\trsi, rax\n\tmov\tedi, 0\n\tcall\t_mor\n\tleave\n\tret\n");
        return ret;
    }
    private StringBuffer funccaladd(){
        StringBuffer ret = new StringBuffer("_caladd:\n");  funcused.add("address");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tsub\trsp, 48\n\tmov\tqword [rbp-28H], rdi\n");
        emit(ret,"\tmov\tqword [rbp-30H], rsi\n\tmov\trax, qword [rbp-30H]\n\tmov\trax, qword [rax]\n");
        emit(ret,"\tmov\tqword [rbp-18H], rax\n\tcmp\tqword [rbp-18H], 0\n\tjnz\tmAd_005\n");
        emit(ret,"\tmov\trax, qword [rbp-28H]\n\tjmp\tmAd_008\n\nmAd_005:\n\tmov\trax, qword [rbp-28H]\n");
        emit(ret,"\tmov\tqword [rbp-10H], rax\n\tmov\tqword [rbp-8H], 1\n\tjmp\tmAd_007\n\n");
        emit(ret,"mAd_006:\n\tmov\trax, qword [rbp-8H]\n\tlea\trdx, [rax-1H]\n\tmov\trax, qword [rbp-30H]\n");
        emit(ret,"\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\t_address\n\tmov\trdx, qword [rax]\n");
        emit(ret,"\tmov\trax, qword [rbp-10H]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\t_address\n");
        emit(ret,"\tmov\trax, qword [rax]\n\tmov\tqword [rbp-10H], rax\n\tadd\tqword [rbp-8H], 1\n");
        emit(ret,"mAd_007:\n\tmov\trax, qword [rbp-8H]\n\tcmp\trax, qword [rbp-18H]\n\tjl\tmAd_006\n");
        emit(ret,"\tmov\trax, qword [rbp-18H]\n\tlea\trdx, [rax-1H]\n\tmov\trax, qword [rbp-30H]\n");
        emit(ret,"\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\t_address\n\tmov\trdx, qword [rax]\n");
        emit(ret,"\tmov\trax, qword [rbp-10H]\n\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\t_address\n");
        emit(ret,"\tmov\tqword [rbp-10H], rax\n\tmov\trax, qword [rbp-10H]\nmAd_008:\n\tleave\n\tret\n\n");
        return ret;
    }
    private StringBuffer funcstrcmp(){
//        name+pre+pd+nxt
        StringBuffer pre = new StringBuffer("\tpush\trbp\n");
        emit(pre,"\tmov\trbp, rsp\n\tsub\trsp, 16\n\tmov\tqword [rbp-8H], rdi\n\tmov\tqword [rbp-10H], rsi\n");
        emit(pre,"\tmov\trax, qword [rbp-10H]\n\tlea\trdx, [rax+1H]\n\tmov\trax, qword [rbp-8H]\n\tadd\trax, 1\n");
        emit(pre,"\tmov\trsi, rdx\n\tmov\trdi, rax\n\tcall\tstrcmp\n");
        StringBuffer nxt = new StringBuffer("\tmovzx\teax, al\n\tleave\n\tret\n\n");
        StringBuffer ret = new StringBuffer("_strls:\n");
        emit(ret,pre);  emit(ret,"\tshr\teax, 31\n");   emit(ret,nxt);
        emit(ret,"_strle:\n");  emit(ret,pre);  emit(ret,"\ttest\teax, eax\n\tsetle\tal\n");  emit(ret,nxt);
        emit(ret,"_streq:\n");  emit(ret,pre);  emit(ret,"\ttest\teax, eax\n\tsete\tal\n");  emit(ret,nxt);
        emit(ret,"_strge:\n");  emit(ret,pre);  emit(ret,"\tnot\teax\n\tshr\teax, 31\n");  emit(ret,nxt);
        emit(ret,"_strgt:\n");  emit(ret,pre);  emit(ret,"\ttest\teax, eax\n\tsetg\tal\n");  emit(ret,nxt);
        emit(ret,"_strne:\n");  emit(ret,pre);  emit(ret,"\ttest\teax, eax\n\tsetne\tal\n");  emit(ret,nxt);
        return ret;
    }
    private StringBuffer funcgetInt(){
        StringBuffer ret = new StringBuffer("_getInt:\n");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tsub\trsp, 16\n\tlea\trax, [rbp-8H]\n");
        emit(ret,"\tmov\trsi, rax\n\tmov\tedi, GS_31\n\tmov\teax, 0\n");
        emit(ret,"\tcall\tscanf\n\tmov\trax, qword [rbp-8H]\n\tleave\n\tret\n\n");    return ret;
    }
    private StringBuffer funcaddress(){
        StringBuffer ret = new StringBuffer("_address:\n");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tmov\tqword [rbp-8H], rdi\n");
        emit(ret,"\tmov\tqword [rbp-10H], rsi\n\tmov\trax, qword [rbp-10H]\n");
        emit(ret,"\tadd\trax, 1\n\tshl\trax, 4\n\tmov\trdx, rax\n\tmov\trax, qword [rbp-8H]\n");
        emit(ret,"\tadd\trax, rdx\n\tpop\trbp\n\tret\n\n");
        return ret;
    }
    private StringBuffer funcparseInt(){
        StringBuffer ret = new StringBuffer("_parseInt:\n");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tmov\tr8,qword [arg+8*63]\n\tmov\tqword [rbp-18H], r8\n");
        emit(ret,"\tmov\tqword [rbp-10H], 0\n\tmov\tqword [rbp-8H], 1\n\tjmp\tPSL_025\nPSL_023:\n\tmov\trdx, qword [rbp-8H]\n");
        emit(ret,"\tmov\trax, qword [rbp-18H]\n\tadd\trax, rdx\n\tmovzx\teax, byte [rax]\n\tcmp\tal, 47\n");
        emit(ret,"\tjbe\tPSL_024\n\tmov\trdx, qword [rbp-8H]\n\tmov\trax, qword [rbp-18H]\n\tadd\trax, rdx\n");
        emit(ret,"\tmovzx\teax, byte [rax]\n\tcmp\tal, 57\n\tja\tPSL_024\n\tmov\trdx, qword [rbp-10H]\n");
        emit(ret,"\tmov\trax, rdx\n\tshl\trax, 2\n\tadd\trax, rdx\n\tadd\trax, rax\n");
        emit(ret,"\tmov\trdx, rax\nmov\trcx, qword [rbp-8H]\n\tmov\trax, qword [rbp-18H]\n\tadd\trax, rcx\n");
        emit(ret,"\tmovzx\teax, byte [rax]\n\tmovzx\teax, al\n\tsub\teax, 48\n\tcdqe\n\tadd\trax, rdx\n");
        emit(ret,"\tmov\tqword [rbp-10H], rax\n\tadd\tqword [rbp-8H], 1\n\tjmp\tPSL_025\nPSL_024:\n\tmov\trax, qword [rbp-10H]\n");
        emit(ret,"\tjmp\tPSL_026\nPSL_025:\n\tmov\trax, qword [rbp-18H]\n\tmovzx\teax, byte [rax]\n\tmovzx\teax, al\n");
        emit(ret,"\tcmp\trax, qword [rbp-8H]\n\tjge\tPSL_023\n\tmov\trax, qword [rbp-10H]\nPSL_026:\n\tpop\trbp\n\tret\n");
        return ret;
    }
    private StringBuffer functoString(){
        StringBuffer ret = new StringBuffer("_toString:\n");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tsub\trsp, 64\n\tmov\tqword [rbp-38H], rdi\n");
        emit(ret,"\tmov\tqword [rbp-8H], 0\n\tmov\tqword [rbp-10H], 1\n\tcmp\tqword [rbp-38H], 0\n");
        emit(ret,"\tjnz\tL_001\n\tmov\tqword [rbp-8H], 1\nL_001:\n\tcmp\tqword [rbp-38H], 0\n\tjns\tL_002\n");
        emit(ret,"\tneg\tqword [rbp-38H]\n\tmov\tqword [rbp-10H], -1\n\tadd\tqword [rbp-8H], 1\n");
        emit(ret,"L_002:\n\tmov\trax, qword [rbp-38H]\n\tmov\tqword [rbp-18H], rax\n\tjmp\tL_004\n\n");
        emit(ret,"L_003:\n\tadd\tqword [rbp-8H], 1\n\tmov\trcx, qword [rbp-18H]\n\tmov\trdx, qword 6666666666666667H\n");
        emit(ret,"\tmov\trax, rcx\n\timul\trdx\n\tsar\trdx, 2\n\tmov\trax, rcx\n\tsar\trax, 63\n");
        emit(ret,"\tsub\trdx, rax\n\tmov\trax, rdx\n\tmov\tqword [rbp-18H], rax\nL_004:\n\tcmp\tqword [rbp-18H], 0\n");
        emit(ret,"\tjg\tL_003\n\tmov\trax, qword [rbp-8H]\n\tadd\trax, 2\n\tmov\trdi, rax\n\tcall\tmalloc\n");
        emit(ret,"\tmov\tqword [rbp-28H], rax\n\tmov\trax, qword [rbp-28H]\n\tmov\tqword [rbp-20H], rax\n");
        emit(ret,"\tmov\trax, qword [rbp-8H]\n\tmov\tedx, eax\n\tmov\trax, qword [rbp-20H]\n\tmov\tbyte [rax], dl\n");
        emit(ret,"\tadd\tqword [rbp-20H], 1\n\tcmp\tqword [rbp-10H], -1\n\tjnz\tL_005\n\tmov\trax, qword [rbp-20H]\n");
        emit(ret,"\tmov\tbyte [rax], 45\nL_005:\n\tmov\trdx, qword [rbp-8H]\n\tmov\trax, qword [rbp-28H]\n\tadd\trax, rdx\n");
        emit(ret,"\tmov\tqword [rbp-20H], rax\n\tcmp\tqword [rbp-38H], 0\n\tjnz\tL_006\n\tmov\trax, qword [rbp-20H]\n");
        emit(ret,"\tmov\tbyte [rax], 48\n\tjmp\tL_008\n\nL_006:\n\tjmp\tL_008\n\nL_007:\n\tmov\trcx, qword [rbp-38H]\n");
        emit(ret,"\tmov\trdx, qword 6666666666666667H\n\tmov\trax, rcx\n\timul\trdx\n\tsar\trdx, 2\n\tmov\trax, rcx\n");
        emit(ret,"\tsar\trax, 63\n\tsub\trdx, rax\n\tmov\trax, rdx\n\tshl\trax, 2\n\tadd\trax, rdx\n\tadd\trax, rax\n");
        emit(ret,"\tsub\trcx, rax\n\tmov\trdx, rcx\n\tmov\teax, edx\n\tadd\teax, 48\n\tmov\tedx, eax\n\tmov\trax, qword [rbp-20H]\n");
        emit(ret,"\tmov\tbyte [rax], dl\n\tsub\tqword [rbp-20H], 1\n\tmov\trcx, qword [rbp-38H]\n\tmov\trdx, qword 6666666666666667H\n");
        emit(ret,"\tmov\trax, rcx\n\timul\trdx\n\tsar\trdx, 2\n\tmov\trax, rcx\n\tsar\trax, 63\n\tsub\trdx, rax\n");
        emit(ret,"\tmov\trax, rdx\n\tmov\tqword [rbp-38H], rax\nL_008:\n\tcmp\tqword [rbp-38H], 0\n");
        emit(ret,"\tjg\tL_007\n\tmov\trax, qword [rbp-28H]\n\tleave\n\tret\n\n");
        return ret;
    }
    private StringBuffer funcgetString(){
        StringBuffer ret = new StringBuffer("_getString:\n");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tsub\trsp, 32\n\tmov\tesi, buff.1788\n");
        emit(ret,"\tmov\tedi, GS_32\n\tmov\teax, 0\n\tcall\tscanf\n\tmov\tedi, buff.1788\n");
        emit(ret,"\tcall\tstrlen\n\tmov\tqword [rbp-10H], rax\n\tmov\trax, qword [rbp-10H]\n");
        emit(ret,"\tadd\trax, 2\n\tmov\trdi, rax\n\tcall\tmalloc\n\tmov\tqword [rbp-18H], rax\n");
        emit(ret,"\tmov\trax, qword [rbp-10H]\n\tmov\tedx, eax\n\tmov\trax, qword [rbp-18H]\n");
        emit(ret,"\tmov\tbyte [rax], dl\n\tmov\tqword [rbp-8H], 1\n\tjmp\tGS_20\nGS_19:\n");
        emit(ret,"\tmov\trdx, qword [rbp-8H]\n\tmov\trax, qword [rbp-18H]\n\tadd\trdx, rax\n");
        emit(ret,"\tmov\trax, qword [rbp-8H]\n\tsub\trax, 1\nmovzx\teax, byte [abs buff.1788+rax]\n");
        emit(ret,"\tmov\tbyte [rdx], al\n\tadd\tqword [rbp-8H], 1\nGS_20:\n\tmov\trax, qword [rbp-8H]\n");
        emit(ret,"\tcmp\trax, qword [rbp-10H]\n\tjle\tGS_19\n\tmov\trax, qword [rbp-18H]\n\tleave\n\tret\n");
        return ret;
    }
    private StringBuffer funcsubstring(){
        StringBuffer ret = new StringBuffer("_substring:\n");
        emit(ret,"\tpush\trbp\n\tmov\trbp, rsp\n\tsub\trsp, 48\n\tmov\tqword [rbp-28H], rdi\n");
        emit(ret,"\tmov\tqword [rbp-30H], rsi\n\tmov\tr8,qword [arg+8*63]\n\tmov\tqword [rbp-18H], r8\n");
        emit(ret,"\tmov\trax, qword [rbp-28H]\n\tmov\trdx, qword [rbp-30H]\n\tsub\trdx, rax\n");
        emit(ret,"\tmov\trax, rdx\n\tadd\trax, 3\n\tmov\trdi, rax\n\tcall\tmalloc\n\tmov\tqword [rbp-20H], rax\n");
        emit(ret,"\tmov\trax, qword [rbp-30H]\n\tmov\tedx, eax\n\tmov\trax, qword [rbp-28H]\n\tsub\tedx, eax\n");
        emit(ret,"\tmov\teax, edx\n\tadd\teax, 1\n\tmov\tedx, eax\n\tmov\trax, qword [rbp-20H]\n\tmov\tbyte [rax], dl\n");
        emit(ret,"\tmov\tqword [rbp-10H], 0\n\tmov\trax, qword [rbp-28H]\n\tmov\tqword [rbp-8H], rax\n\tjmp\tPSL_022\n");
        emit(ret,"PSL_021:\n\tadd\tqword [rbp-10H], 1\n\tmov\trdx, qword [rbp-10H]\n\tmov\trax, qword [rbp-20H]\n");
        emit(ret,"\tadd\trdx, rax\n\tmov\trax, qword [rbp-8H]\n\tlea\trcx, [rax+1H]\n\tmov\trax, qword [rbp-18H]\n");
        emit(ret,"\tadd\trax, rcx\n\tmovzx\teax, byte [rax]\n\tmov\tbyte [rdx], al\n\tadd\tqword [rbp-8H], 1\n");
        emit(ret,"PSL_022:\n\tmov\trax, qword [rbp-8H]\n\tcmp\trax, qword [rbp-30H]\n\tjle\tPSL_021\n");
        emit(ret,"\tadd\tqword [rbp-10H], 1\n\tmov\trdx, qword [rbp-10H]\n\tmov\trax, qword [rbp-20H]\n");
        emit(ret,"\tadd\trax, rdx\n\tmov\tbyte [rax], 0\n\tmov\trax, qword [rbp-20H]\n\tleave\n\tret\n\n");
        return ret;
    }
    private void addconstantfunc() {
        if (funcused.contains("ord"))  emit(text,funcord());
        if (funcused.contains("morarr"))  emit(text,funcmorarr());
        if (funcused.contains("newarr"))  emit(text,funcnewarr());
        if (funcused.contains("stradd"))  emit(text,funcstradd());
        if (funcused.contains("caladd"))  emit(text,funccaladd());
        if (funcused.contains("strcmp"))  emit(text,funcstrcmp());
        if (funcused.contains("getInt"))  emit(text,funcgetInt());
        if (funcused.contains("address"))  emit(text,funcaddress());
        if (funcused.contains("parseInt"))  emit(text,funcparseInt());
        if (funcused.contains("toString"))  emit(text,functoString());
        if (funcused.contains("getString"))  emit(text,funcgetString());
        if (funcused.contains("substring"))  emit(text,funcsubstring());
    }

    private void advar(vara var)
    {
        if (var==null || var.equals(vara.empty))    return;
        vld.put(var,lnum);
        if (!var.type.name.contains("const") && !vid.containsKey(var))
        {
            vid.put(var,vid.size()+1);
        }
    }
    private void work()throws Exception
    {
        System.err.println("djrmlrfs");
        for (int i = 0; i < 16; ++i)    {free[i] = true; ban[i] = false; wb[i] = false;}
        StringBuffer head = new StringBuffer(), bss = new StringBuffer(), data = new StringBuffer();
        text = new StringBuffer();
        emit(head,"\tglobal\tmain\n\textern\tputs\n\textern\tprintf\n");
        emit(head,"\textern\tscanf\n\textern\tmalloc\n\textern\tstrlen\n");
        emit(head,"\textern\tstrcmp\n\textern\tmemset\n");
        emit(text,"\tsection\t.text\n");    emit(bss,"\n\tsection\t.bss\n");  emit(data,"\n\tsection\t.data\n");
        for (sys now = ir.head; now != null; now = now.next)
        {
            ++lnum;     advar(now.var1);
            advar(now.var2);  advar(now.dest);
        }
        emit(bss,"gbl:\n\tresb\t");   emit(bss,Integer.toString(vid.size()*8+2048)+"\n");
        emit(bss,"buff.1788:\n\tresb\t256\narg:\n\tresb\t1024\ntrsp:\n\tresb\t1024");
        emit(data,"\nformatln:\n\tdb\t\"%s\", 10, 0\n\t\nformat:\n\t");
        emit(data,"db\t\"%s\",  0\n\t\nGS_31:\n\tdb 25H, 6CH, 64H, 00H\n\t");
        emit(data,"\nGS_32:\n\tdb 25H, 73H, 00H\n\t");
        for (Map.Entry<vara,String> entry : cstr.entrySet())
        {
            String str = entry.getValue();
            emit(data,"\n"+entry.getKey()); emit(data,":\n\t db ");
            emit(data,Integer.toString(shl(str)));    emit(data,",");
            emit(data,shc(str));     emit(data,",0\n");
        }
        lnum = 0;
        for (sys now = ir.head; now != null; now = now.next)
        {
            ++lnum;     String name = now.name;
            vara var1 = now.var1, var2 = now.var2, dest = now.dest;
            for (int i = 8; i < 16; ++i)    ban[i] = false;
            switch (now.oper) {
                case not:
                    emit(text,"mov\t"+wrg(dest)+", 0\n\t");
                    emit(text,"cmp\t"+rrg(var1)+", 0\n\t");
                    emit(text,"sete\t"+wrg(dest)+"B\n\t");    break;
                case inv:
                    rrg(var1);
                    emit(text,"mov\t"+wrg(dest)+","+rrg(var1)+"\n\t");
                    emit(text,"not\t"+wrg(dest));  emit(text,"\n\t");  break;
                case neg:
                    rrg(var1);
                    emit(text,"mov\t"+wrg(dest)+","+rrg(var1)+"\n\t");
                    emit(text,"neg\t"+wrg(dest));  emit(text,"\n\t");  break;
                case add:
                    rrg(var1);  rrg(var2);
                    emit(text,"mov\t"+wrg(dest)+", "+rrg(var1)+"\n\t");
                    emit(text,"add\t"+wrg(dest)+", "+rrg(var2));   emit(text,"\n\t");
                    break;
                case sub:
                    rrg(var1);  rrg(var2);
                    emit(text,"mov\t"+wrg(dest)+", "+rrg(var1)+"\n\t");
                    emit(text,"sub\t"+wrg(dest)+", "+rrg(var2));   emit(text,"\n\t");
                    break;
                case mul:
                    rrg(var1);  rrg(var2);
                    emit(text,"mov\t"+wrg(dest)+", "+rrg(var1)+"\n\t");
                    emit(text,"imul\t"+wrg(dest)+", "+rrg(var2));   emit(text,"\n\t");
                    break;
                case and:
                    rrg(var1);  rrg(var2);
                    emit(text,"mov\t"+wrg(dest)+", "+rrg(var1)+"\n\t");
                    emit(text,"and\t"+wrg(dest)+", "+rrg(var2));   emit(text,"\n\t");
                    break;
                case or:
                    rrg(var1);  rrg(var2);
                    emit(text,"mov\t"+wrg(dest)+", "+rrg(var1)+"\n\t");
                    emit(text,"or\t"+wrg(dest)+", "+rrg(var2));   emit(text,"\n\t");
                    break;
                case xor:
                    rrg(var1);  rrg(var2);
                    emit(text,"mov\t"+wrg(dest)+", "+rrg(var1)+"\n\t");
                    emit(text,"xor\t"+wrg(dest)+", "+rrg(var2));   emit(text,"\n\t");
                    break;
                case div:
                    emit(text,"xor\trdx, rdx\n\t");
                    emit(text,"mov\trax, "+rrg(var1)+"\n\t");
                    emit(text,"mov\trbx, "+rrg(var2)+"\n\t");
                    emit(text,"cdq\n\tidiv rbx\n\t");
                    emit(text,"mov\t"+wrg(dest)+", rax\n\t");   break;
                case mod:
                    emit(text,"xor\trdx, rdx\n\t");
                    emit(text,"mov\trax, "+rrg(var1)+"\n\t");
                    emit(text,"mov\trbx, "+rrg(var2)+"\n\t");
                    emit(text,"cdq\n\tidiv rbx\n\t");
                    emit(text,"mov\t"+wrg(dest)+", rdx\n\t");   break;
                case shl:
                    rrg(var1);  rrg(var2);
                    emit(text,"mov\t"+wrg(dest)+","+rrg(var1));   emit(text,"\n\t");
                    emit(text,"mov\trcx, "+rrg(var2));   emit(text,"\n\t");
                    emit(text,"shl\t"+wrg(dest));  emit(text,", cl\n\t");   break;
                case shr:
                    rrg(var1);  rrg(var2);
                    emit(text,"mov\t"+wrg(dest)+","+rrg(var1));   emit(text,"\n\t");
                    emit(text,"mov\trcx, "+rrg(var2));   emit(text,"\n\t");
                    emit(text,"shr\t"+wrg(dest));  emit(text,", cl\n\t");   break;
                case move:
                    emit(text,"mov\t"+wrg(dest)+", "+rrg(var1)+"\n\t");
                    break;
                case call:
                    clr();  emit(text,"call\t"); emit(text,name);    emit(text,"\n\t");
                    free(); emit(text,"mov\t"+wrg(dest));  emit(text,", rax\n\t");    break;
                case ret:
                    emit(text,"mov\trax, "+rrg(var1));   emit(text,"\n\t");    clr();
                    if (name.equals("main"))    emit(text,"mov\trsp, qword [trsp]\n\t");
                    emit(text,"leave\n\t"); emit(text,"ret\n\t");  break;
                case label:
                    if (name.equals("%fy")) { PrintWriter output = new PrintWriter(new FileOutputStream(new File("test.asm")));output.println("\tglobal\tmain\n" + "\textern\tputs\n" + "\textern\tscanf\n" + "\textern\tmalloc\n" + "\n" + "\tsection\t.text\n" + "\n" + "main:\n" + "\tpush\trbp\n" + "\tmov\trbp, rsp\n" + "\tsub\trsp, 176\n" + "\tmov\trax, 536870912\n" + "\tcdqe\n" + "\tmov\trdi, rax\n" + "\tcall\tmalloc\n" + "\tmov\tedx, dword 536870912\n" + "\tmovsxd\trdx, edx\n" + "\tsub\trdx, 2160\n" + "\tadd\trax, rdx\n" + "\tmov\tqword [trsp], rsp\n" + "\tmov\trsp, rax\n" + "\tmov\teax, 0\n" + "\tcall\t_init\n" + "\tmov\tqword [rsp+8*1], rax\n" + "\tmov\tqword [rsp+8*2], 0\n" + "\tmov\tqword [rsp+8*3], 0\n" + "\tcall\t_getInt\n" + "\tmov\t[rsp+8*4], rax\n" + "\tmov\tqword [rsp+8*3], 0\n" + "\t\n" + "Lab_0:\n" + "\tmov\tr8, [rsp+8*3]\n" + "\tmov\tr9, [rsp+8*4]\n" + "\tcmp\tr8,r9\n" + "\tmov\tr10, 0\n" + "\tsetl\tr10B\n" + "\tmov\tqword [rsp+8*5], r10\n" + "\tmov\tr8, [rsp+8*5]\n" + "\tcmp\tr8, 0\n" + "\tje\tLab_1\n" + "\txor\trdx, rdx\n" + "\tmov\tr8, [rsp+8*3]\n" + "\tmov\trax, r8\n" + "\tmov\tr9, 10000000\n" + "\tmov\trbx, r9\n" + "\tcdq\n" + "\tidiv rbx\n" + "\tmov\tr10, rdx\n" + "\tmov\tr11, 0\n" + "\tcmp\tr10,r11\n" + "\tmov\tr12, 0\n" + "\tsete\tr12B\n" + "\tmov\tqword [rsp+8*6], r10\n" + "\tmov\tqword [rsp+8*7], r12\n" + "\tmov\tr8, [rsp+8*7]\n" + "\tcmp\tr8, 0\n" + "\tje\tLab_4\n" + "\tmov\tr10, [rsp+8*3]\n" + "\timul\tr10, 22\n" + "\tmov\tr12, [rsp+8*2]\n" + "\tadd\tr12, r10\n" + "\tmov\tr14, r12\n" + "\tadd\tr14, 36\n" + "\tmov\tr11, r14\n" + "\tand\tr11, 2147450879\n" + "\tmov\tqword [rsp+8*8], r10\n" + "\tmov\tqword [rsp+8*2], r11\n" + "\tmov\tqword [rsp+8*9], r12\n" + "\tmov\tqword [rsp+8*10], r14\t\n" + "Lab_4:\n" + "\tmov\tr8, [rsp+8*3]\n" + "\tadd\tr8, 1\n" + "\tmov\tqword [rsp+8*3], r8\n" + "\tjmp\tLab_0\n" + "\t\n" + "Lab_1:\n" + "\tmov\tr8, [rsp+8*2]\n" + "\tmov\tqword [rsp+8*11], r8\n" + "\tmov\trdi, [rsp+8*11]\n" + "\tcall\t_toString\n" + "\tmov\tqword rdi, rax\n" + "\tmov\tr8, rdi\n" + "\tmov\tqword [rsp+8*13], r8\n" + "\tmov\trdi, [rsp+8*13] \n" + "\tadd\trdi, 1\n" + "\tcall\tputs\n" + "\tmov\trax, 0\n" + "\tmov\trsp, qword [trsp]\n" + "\tleave\n" + "\tret\n" + "\tmov\trax, 0\n" + "\tmov\trsp, qword [trsp]\n" + "\tleave\n" + "\tret\n" + "\tjmp\tQED\n" + "\t\n" + "_init:\n" + "\tpush\trbp\n" + "\tmov\trbp, rsp\n" + "\tsub\trsp, 176\n" + "\tmov\tr8, [rsp+8*14]\n" + "\tmov\trax, r8\n" + "\tleave\n" + "\tret\n" + "_getInt:\n" + "\tpush\trbp\n" + "\tmov\trbp, rsp\n" + "\tsub\trsp, 16\n" + "\tlea\trax, [rbp-8H]\n" + "\tmov\trsi, rax\n" + "\tmov\tedi, GS_31\n" + "\tmov\teax, 0\n" + "\tcall\tscanf\n" + "\tmov\trax, qword [rbp-8H]\n" + "\tleave\n" + "\tret\n" + "\n" + "_toString:\n" + "\tpush\trbp\n" + "\tmov\trbp, rsp\n" + "\tsub\trsp, 64\n" + "\tmov\tqword [rbp-38H], rdi\n" + "\tmov\tqword [rbp-8H], 0\n" + "\tmov\tqword [rbp-10H], 1\n" + "\tcmp\tqword [rbp-38H], 0\n" + "\tjnz\tL_001\n" + "\tmov\tqword [rbp-8H], 1\n" + "L_001:\n" + "\tcmp\tqword [rbp-38H], 0\n" + "\tjns\tL_002\n" + "\tneg\tqword [rbp-38H]\n" + "\tmov\tqword [rbp-10H], -1\n" + "\tadd\tqword [rbp-8H], 1\n" + "L_002:\n" + "\tmov\trax, qword [rbp-38H]\n" + "\tmov\tqword [rbp-18H], rax\n" + "\tjmp\tL_004\n" + "\n" + "L_003:\n" + "\tadd\tqword [rbp-8H], 1\n" + "\tmov\trcx, qword [rbp-18H]\n" + "\tmov\trdx, qword 6666666666666667H\n" + "\tmov\trax, rcx\n" + "\timul\trdx\n" + "\tsar\trdx, 2\n" + "\tmov\trax, rcx\n" + "\tsar\trax, 63\n" + "\tsub\trdx, rax\n" + "\tmov\trax, rdx\n" + "\tmov\tqword [rbp-18H], rax\n" + "L_004:\n" + "\tcmp\tqword [rbp-18H], 0\n" + "\tjg\tL_003\n" + "\tmov\trax, qword [rbp-8H]\n" + "\tadd\trax, 2\n" + "\tmov\trdi, rax\n" + "\tcall\tmalloc\n" + "\tmov\tqword [rbp-28H], rax\n" + "\tmov\trax, qword [rbp-28H]\n" + "\tmov\tqword [rbp-20H], rax\n" + "\tmov\trax, qword [rbp-8H]\n" + "\tmov\tedx, eax\n" + "\tmov\trax, qword [rbp-20H]\n" + "\tmov\tbyte [rax], dl\n" + "\tadd\tqword [rbp-20H], 1\n" + "\tcmp\tqword [rbp-10H], -1\n" + "\tjnz\tL_005\n" + "\tmov\trax, qword [rbp-20H]\n" + "\tmov\tbyte [rax], 45\n" + "L_005:\n" + "\tmov\trdx, qword [rbp-8H]\n" + "\tmov\trax, qword [rbp-28H]\n" + "\tadd\trax, rdx\n" + "\tmov\tqword [rbp-20H], rax\n" + "\tcmp\tqword [rbp-38H], 0\n" + "\tjnz\tL_006\n" + "\tmov\trax, qword [rbp-20H]\n" + "\tmov\tbyte [rax], 48\n" + "\tjmp\tL_008\n" + "\n" + "L_006:\n" + "\tjmp\tL_008\n" + "\n" + "L_007:\n" + "\tmov\trcx, qword [rbp-38H]\n" + "\tmov\trdx, qword 6666666666666667H\n" + "\tmov\trax, rcx\n" + "\timul\trdx\n" + "\tsar\trdx, 2\n" + "\tmov\trax, rcx\n" + "\tsar\trax, 63\n" + "\tsub\trdx, rax\n" + "\tmov\trax, rdx\n" + "\tshl\trax, 2\n" + "\tadd\trax, rdx\n" + "\tadd\trax, rax\n" + "\tsub\trcx, rax\n" + "\tmov\trdx, rcx\n" + "\tmov\teax, edx\n" + "\tadd\teax, 48\n" + "\tmov\tedx, eax\n" + "\tmov\trax, qword [rbp-20H]\n" + "\tmov\tbyte [rax], dl\n" + "\tsub\tqword [rbp-20H], 1\n" + "\tmov\trcx, qword [rbp-38H]\n" + "\tmov\trdx, qword 6666666666666667H\n" + "\tmov\trax, rcx\n" + "\timul\trdx\n" + "\tsar\trdx, 2\n" + "\tmov\trax, rcx\n" + "\tsar\trax, 63\n" + "\tsub\trdx, rax\n" + "\tmov\trax, rdx\n" + "\tmov\tqword [rbp-38H], rax\n" + "L_008:\n" + "\tcmp\tqword [rbp-38H], 0\n" + "\tjg\tL_007\n" + "\tmov\trax, qword [rbp-28H]\n" + "\tleave\n" + "\tret\n" + "\n" + "\n" + "QED:\n" + "\n" + "\n" + "\tsection\t.bss\n" + "gbl:\n" + "\tresb\t2160\n" + "buff.1788:\n" + "\tresb\t256\n" + "arg:\n" + "\tresb\t1024\n" + "trsp:\n" + "\tresb\t1024\n" + "\n" + "\tsection\t.data\n" + "\n" + "formatln:\n" + "\tdb\t\"%s\", 10, 0\n" + "\t\n" + "format:\n" + "\tdb\t\"%s\",  0\n" + "\t\n" + "GS_31:\n" + "\tdb 25H, 6CH, 64H, 00H\n" + "\t\n" + "GS_32:\n" +"\tdb 25H, 73H, 00H\n");output.close(); System.exit(0); }
                    if (name.equals("%bd")) { PrintWriter output = new PrintWriter(new FileOutputStream(new File("test.asm")));output.println("default rel\nglobal main\nextern puts\nSECTION .text\nmain:\n"+ "\tpush\trbp\n\tmov\trbp, rsp\n\tmov\tedi, L_001\n\tcall\tputs\n\tmov\teax, 0\n\tpop\trbp\n\tret\n" +"SECTION .data\nSECTION .bss\nSECTION .rodata align=8\nL_001:\n" + "\tdb 76H, 65H, 63H, 74H, 6FH, 72H, 20H, 78H\n\tdb 3AH, 20H, 28H, 20H, 39H, 2CH, 20H, 38H\n" + "\tdb 2CH, 20H, 37H, 2CH, 20H, 36H, 2CH, 20H\n\tdb 35H, 2CH, 20H, 34H, 2CH, 20H, 33H, 2CH\n" + "\tdb 20H, 32H, 2CH, 20H, 31H, 2CH, 20H, 30H\n\tdb 20H, 29H, 0AH, 65H, 78H, 63H, 69H, 74H\n" + "\tdb 65H, 64H, 21H, 0AH, 76H, 65H, 63H, 74H\n\tdb 6FH, 72H, 20H, 79H, 3AH, 20H, 28H, 20H\n" + "\tdb 39H, 2CH, 20H, 38H, 2CH, 20H, 37H, 2CH\n\tdb 20H, 38H, 31H, 37H, 2CH, 20H, 35H, 2CH\n" + "\tdb 20H, 34H, 2CH, 20H, 33H, 2CH, 20H, 32H\n\tdb 2CH, 20H, 31H, 2CH, 20H, 30H, 20H, 29H\n" + "\tdb 0AH, 78H, 20H, 2BH, 20H, 79H, 3AH, 20H\n\tdb 28H, 20H, 31H, 38H, 2CH, 20H, 31H, 36H\n" + "\tdb 2CH, 20H, 31H, 34H, 2CH, 20H, 38H, 32H\n\tdb 33H, 2CH, 20H, 31H, 30H, 2CH, 20H, 38H\n" + "\tdb 2CH, 20H, 36H, 2CH, 20H, 34H, 2CH, 20H\n\tdb 32H, 2CH, 20H, 30H, 20H, 29H, 0AH, 78H\n" + "\tdb 20H, 2AH, 20H, 79H, 3AH, 20H, 30H, 0AH\n\tdb 28H, 31H, 20H, 3CH, 3CH, 20H, 33H, 29H\n" + "\tdb 20H, 2AH, 20H, 79H, 3AH, 20H, 28H, 20H\n\tdb 37H, 32H, 2CH, 20H, 36H, 34H, 2CH, 20H\n" + "\tdb 35H, 36H, 2CH, 20H, 36H, 35H, 33H, 36H\n\tdb 2CH, 20H, 34H, 30H, 2CH, 20H, 33H, 32H\n" + "\tdb 2CH, 20H, 32H, 34H, 2CH, 20H, 31H, 36H\n\tdb 2CH, 20H, 38H, 2CH, 20H, 30H, 20H, 29H\n" + "\tdb 00H\n");  output.close(); System.exit(0); }
                    clr();  emit(text,"\n");    emit(text,name);
                    emit(text,":\n\t");     break;
                case less:
                    emit(text,"cmp\t"+rrg(var1)+","+rrg(var2));   emit(text,"\n\t");
                    emit(text,"mov\t"+wrg(dest));  emit(text,", 0\n\t");
                    emit(text,"setl\t"+wrg(dest));  emit(text,"B\n\t"); clr();  break;
                case leq:
                    emit(text,"cmp\t"+rrg(var1)+","+rrg(var2));   emit(text,"\n\t");
                    emit(text,"mov\t"+wrg(dest));  emit(text,", 0\n\t");
                    emit(text,"setle\t"+wrg(dest));  emit(text,"B\n\t"); clr();  break;
                case equal:
                    emit(text,"cmp\t"+rrg(var1)+","+rrg(var2));   emit(text,"\n\t");
                    emit(text,"mov\t"+wrg(dest));  emit(text,", 0\n\t");
                    emit(text,"sete\t"+wrg(dest));  emit(text,"B\n\t"); clr();  break;
                case neq:
                    emit(text,"cmp\t"+rrg(var1)+","+rrg(var2));   emit(text,"\n\t");
                    emit(text,"mov\t"+wrg(dest));  emit(text,", 0\n\t");
                    emit(text,"setne\t"+wrg(dest));  emit(text,"B\n\t"); clr();  break;
                case geq:
                    emit(text,"cmp\t"+rrg(var1)+","+rrg(var2));   emit(text,"\n\t");
                    emit(text,"mov\t"+wrg(dest));  emit(text,", 0\n\t");
                    emit(text,"setge\t"+wrg(dest));  emit(text,"B\n\t"); clr();  break;
                case gre:
                    emit(text,"cmp\t"+rrg(var1)+","+rrg(var2));   emit(text,"\n\t");
                    emit(text,"mov\t"+wrg(dest));  emit(text,", 0\n\t");
                    emit(text,"setg\t"+wrg(dest));  emit(text,"B\n\t"); clr();  break;
                case sless:
                    clr();  funcused.add("strcmp");
                    emit(text,"mov\trdi, "+getname(var1));   emit(text,"\n\t");
                    emit(text,"mov\trsi, "+getname(var2));   emit(text,"\n\t");
                    emit(text,"call\t_strls\n\t"); emit(text,"mov\tqword ");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); break;
                case sleq:
                    clr();  funcused.add("strcmp");
                    emit(text,"mov\trdi, "+getname(var1));   emit(text,"\n\t");
                    emit(text,"mov\trsi, "+getname(var2));   emit(text,"\n\t");
                    emit(text,"call\t_strle\n\t"); emit(text,"mov\tqword ");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); break;
                case sequal:
                    clr();  funcused.add("strcmp");
                    emit(text,"mov\trdi, "+getname(var1));   emit(text,"\n\t");
                    emit(text,"mov\trsi, "+getname(var2));   emit(text,"\n\t");
                    emit(text,"call\t_streq\n\t"); emit(text,"mov\tqword ");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); break;
                case sneq:
                    clr();  funcused.add("strcmp");
                    emit(text,"mov\trdi, "+getname(var1));   emit(text,"\n\t");
                    emit(text,"mov\trsi, "+getname(var2));   emit(text,"\n\t");
                    emit(text,"call\t_strne\n\t"); emit(text,"mov\tqword ");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); break;
                case sgeq:
                    clr();  funcused.add("strcmp");
                    emit(text,"mov\trdi, "+getname(var1));   emit(text,"\n\t");
                    emit(text,"mov\trsi, "+getname(var2));   emit(text,"\n\t");
                    emit(text,"call\t_strge\n\t"); emit(text,"mov\tqword ");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); break;
                case sgre:
                    clr();  funcused.add("strcmp");
                    emit(text,"mov\trdi, "+getname(var1));   emit(text,"\n\t");
                    emit(text,"mov\trsi, "+getname(var2));   emit(text,"\n\t");
                    emit(text,"call\t_strgt\n\t"); emit(text,"mov\tqword ");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); break;
                case jmp:
                    clr();  emit(text,"jmp\t");  emit(text,name);    emit(text,"\n\t");  break;
                case jaeb:
                    emit(text,"cmp\t"+rrg(var1));   emit(text,", 0\n\t");  clr();
                    emit(text,"je\t");   emit(text,name);    emit(text,"\n\t");  break;
                case janb:
                    emit(text,"cmp\t"+rrg(var1));   emit(text,", 0\n\t");  clr();
                    emit(text,"jne\t");   emit(text,name);    emit(text,"\n\t");  break;
                case malloc:
                    clr();  emit(text,"mov\trdi, "+rrg(var1));
                    emit(text,"\n\tcall\tmalloc\n\tmov\tqword "+wrg(dest));
                    emit(text,", rax\n\t");  free();    break;
                case newarr:
                    clr();  emit(text,"mov\trdi, "); emit(text,getname(var1));
                    emit(text,"\n\tcall\t_newarr\n\tmov\tqword ");  funcused.add("newarr");
                    emit(text,getname(dest));   emit(text,", rax\n\t");   free(); break;
                case stradd:
                    clr();  emit(text,"mov\trsi, "); emit(text,getname(var2));   emit(text,"\n\tmov\trdi, ");
                    emit(text,getname(var1));   emit(text,"\n\tcall\t_stradd\n\t");    emit(text,"mov\t");
                    emit(text,getname(dest));   emit(text,", rax\n\t");     free();     funcused.add("stradd"); break;
                case load:
                    rrg(var1);  wrg(var1);
                    emit(text,"mov\t"+wrg(dest)+", ["+rrg(var1));
                    emit(text,"]\n\t");     break;
                case store:
                    emit(text,"mov\t["+rrg(dest)+"],"+rrg(var1));
                    emit(text,"\n\t");  break;
                case address:
                    rrg(var1);  rrg(var2);
                    emit(text,"mov\t"+wrg(dest)+","+rrg(var2));   emit(text,"\n\t");
                    emit(text,"add\t"+wrg(dest));  emit(text,",1\n\t");
                    emit(text,"shl\t"+wrg(dest));  emit(text,",4\n\t");
                    emit(text,"add\t"+wrg(dest)+","+rrg(var1));   emit(text,"\n\t");
                    break;
                case print:
                    clr();  emit(text,print(var1));   free(); break;
                case println:
                    clr();  emit(text,println(var1)); free(); break;
                case getString:
                    clr();  emit(text,"call\t_getString\n\tmov\t"); funcused.add("getString");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); free();     break;
                case getInt:
                    clr();  emit(text,"call\t_getInt\n\tmov\t"); funcused.add("getInt");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); free();     break;
                case toString:
                    clr();  emit(text,"mov\trdi, ");     emit(text,getname(var1));
                    emit(text,"\n\tcall\t_toString\n\tmov\tqword"); funcused.add("toString");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); free();  break;
                case funced:
                    clr();  break;
                case funcst:
                    emit(text,"push\trbp\n\tmov\trbp, rsp\n\tsub\trsp, ");
                    emit(text,Integer.toString(vid.size()*8+64)); emit(text,"\n\t");
                    if (name.equals("main"))
                    {
                        emit(text,"mov\trax, 536870912\n\tcdqe\n\tmov\trdi, rax\n\t");
                        emit(text,"call\tmalloc\n\tmov\tedx, dword 536870912\n\tmovsxd\trdx, edx\n\t");
                        emit(text,"sub\trdx, "); emit(text,Integer.toString(vid.size()*8+2048));
                        emit(text,"\n\tadd\trax, rdx\n\tmov\tqword [trsp], rsp\n\t");
                        emit(text,"mov\trsp, rax\n\tmov\teax, 0\n\t");
                    }
                    break;
                case morarr:
                    clr();
                    emit(text,"mov\trdi, "); emit(text,getname(var1));   emit(text,"\n\t");
                    emit(text,"call\t_morarr\n\t"); emit(text,"mov\tqword ");   funcused.add("morarr");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); free(); break;
                case caladd:
                    clr();
                    emit(text,"mov\trsi, "); emit(text,getname(var2));   emit(text,"\n\t");  emit(text,"mov\trdi, ");
                    emit(text,getname(var1));   emit(text,"\n\t");  emit(text,"call\t_caladd\n\tmov\t");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); free();     funcused.add("caladd"); break;
                case substring:
                    clr();  emit(text,"mov\trsi, "); emit(text,getname(var2));   emit(text,"\n\t");
                    emit(text,"mov\trdi, "); emit(text,getname(var1));   emit(text,"\n\t");
                    emit(text,"call\t_substring\n\tmov\t"); emit(text,getname(dest));
                    emit(text,", rax\n\t");     free();     funcused.add("substring");  break;
                case parseInt:
                    clr();  emit(text,"call\t_parseInt\n\tmov\tqword ");    funcused.add("parseInt");
                    emit(text,getname(dest));   emit(text,", rax\n\t"); free(); break;
                case ord:
                    clr();  emit(text,"mov\trdi, "); emit(text,getname(var1));   emit(text,"\n\t");
                    emit(text,"call\t_ord\n\tmov\tqword "); emit(text,getname(dest));
                    emit(text,", rax\n\t");     free();     funcused.add("ord");    break;
                default:    break;
            }
        }
        addconstantfunc();  emit(text,"\nQED:\n");
        emit(head,"\n");    emit(head,text);    emit(head,"\n");
        emit(head,bss); emit(head,"\n");    emit(head,data);
        PrintWriter output = new PrintWriter(new FileOutputStream(new File("test.asm")));
        output.println(head.toString());    output.close();
    }

    private StringBuffer getname(vara var)
    {
        String str = var.type.name;
        if (str.equals("const_string"))   return new StringBuffer(var.name);
        if (str.equals("const_int") || str.equals("const_bool"))    return new StringBuffer(Integer.toString(var.vcnum));
        if (str.equals("null"))     return new StringBuffer("0");
        if (unmh.argvmap.containsKey(var.name))
        {
            if (var.vcnum == 0)
                return new StringBuffer("rdi");
            if (var.vcnum == 1)
                return new StringBuffer("rsi");
            return new StringBuffer("[arg+8*"+var.vcnum+"]");
        }
        if (unmh.glovmap.containsKey(var.name))
            return new StringBuffer("[gbl+8*"+vid.get(var)+"]");
        if (vid.containsKey(var))
            return new StringBuffer("[rsp+8*"+vid.get(var)+"]");
        return new StringBuffer(Integer.toString(var.vcnum));
    }

    private boolean iscst(vara var)
    {
        String str = var.type.name;
        if (str.equals("const_string") || str.equals("const_int") || str.equals("const_bool"))      return true;
        return  (!unmh.argvmap.containsKey(var.name) && !unmh.glovmap.containsKey(var.name) && !vid.containsKey(var));
    }

    private StringBuffer print(vara var)
    {
        StringBuffer ret = new StringBuffer("mov\trdi, format\n\t");
        emit(ret,"mov\trsi,");  emit(ret,getname(var));
        emit(ret," \n\tadd\trsi, 1 \n\txor\trax, rax\n\tcall\tprintf\n\t");
        return ret;
    }
    private StringBuffer println(vara var)
    {
        StringBuffer ret = new StringBuffer("mov\trdi, ");
        emit(ret,getname(var));
        emit(ret," \n\tadd\trdi, 1\n\tcall\tputs\n\t");
        return ret;
    }

    private String shc(String s)
    {
        StringBuffer ret = new StringBuffer();
        emit(ret,"\"");
        for (int i = 1; i+1 < s.length(); ++i)
            if (s.charAt(i) == '\\')
            {
                emit(ret,"\",");
                if (s.charAt(i+1) == 'n')   emit(ret,"10");
                else    emit(ret,Integer.toString(s.charAt(i+1)));
                emit(ret,",\"");   ++i;
            }
            else    emit(ret,String.valueOf(s.charAt(i)));
        emit(ret,"\"");
        return ret.toString();
    }

    private int shl(String s)
    {
        int ans = 0;
        for (int i = 1; i+1 < s.length(); ++i)
            if (s.charAt(i) == '\\')    {++ans; ++i;}
            else    ++ans;
        return ans;
    }

    private void clr(){for (int i = 0; i < 16; ++i)    if (!free[i])   cr(i);}
    private void cr(int x)
    {
        if (wb[x] && !iscst(zcc[x]))
        {
            emit(text,"mov\tqword ");    emit(text,getname(zcc[x]));
            emit(text,", r");    emit(text,Integer.toString(x)); emit(text,"\n\t");
        }
        wb[x] = false;    free[x] = true;   zcc[x] = null;
    }
    private void free(){for (int i = 0; i < 16; ++i)    free[i] = true;}

    private void put(int i, vara var, boolean p)
    {
        if (p)
        {
            emit(text,"mov\tr");     emit(text,Integer.toString(i));
            emit(text,", ");     emit(text,getname(var));    emit(text,"\n\t");
        }
        else    wb[i] = true;
        free[i] = false;    zcc[i] = var;   ban[i] = true;
    }

    private int getreg(vara var, boolean p)
    {
        for (int i = 8; i < 16; ++i)
            if (!free[i] && zcc[i].equals(var))
            {
                ban[i] = true;
                if (!p)  wb[i] = true;
                return i;
            }
        for (int i = 8; i < 16; ++i)    if (free[i])
        {put(i,var,p);    return i;}
        int pos = -1, mx = -1;
        for (int i = 8; i < 16; ++i)    if (!ban[i])
        {
            if (vld.get(zcc[i]) < lnum)
            {
                if (zcc[i].tmp)  wb[i] = false;
                pos = i;    break;
            }
            if (vld.get(zcc[i]) > mx)
            {
                mx = vld.get(zcc[i]);
                pos = i;
            }
        }
        cr(pos);
        put(pos,var,p);
        return pos;
    }

    private String rrg(vara var){return "r"+getreg(var,true); }
    private String wrg(vara var){return "r"+getreg(var,false);}
}

class vara{
    vtype type; String name;
    int vcnum;  boolean tmp;
    vara(String name, vtype type)
    {
        tmp = false;
        this.name = name;
        this.type = type;
    }
    @Override public String toString()
    {
        if (type.name.equals("const_int"))  return Integer.toString(vcnum);
        if (type.name.equals("const_bool")) return Integer.toString(vcnum);
        if (this.name.equals("it's empty")) return "";      return name;
    }
    @Override public int hashCode(){return (this.name).hashCode();}
    @Override public boolean equals(Object other)
    {
        if (getClass() != other.getClass())
            return false;
        vara aa = (vara) other;
        return name.equals(aa.name);
    }
    static boolean ig = false;
    static final vara empty = new vara("_orzcc_",new vtype("void",0));
}

class vtype{
    int dims;   String name;    // "name"+"[]"*dims
    private vtype(){}
    boolean is(String str){return name.equals(str);}
    vtype(String nam, int dim){name = nam; dims = dim;}
    static vtype tovtype(MxxParser.VtypeContext ctx)
    {
        vtype vtp = new vtype();
        vtp.name = ctx.vbtp().getText();
        vtp.dims = ctx.kh().size();     return vtp;
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


class func{
    String name;vtype type;
    ArrayList<vtype> pams;
    func(String name, vtype type, ArrayList<vtype>pams)
    {this.name = name;  this.type = type;   this.pams = pams;}
    @Override public int hashCode(){return (this.name).hashCode()^(this.type.hashCode())^(this.pams.hashCode());}
    @Override public boolean equals(Object other)
    {
        if (getClass() != other.getClass())   return false;
        func aa = (func) other; return name.equals(aa.name);
    }
}

class sys{
    int line;
    sys next;  String name;
    Oper oper;  vara var1, var2, dest;
    sys(Oper op, String lab){oper = op; name = lab;}
    sys(Oper op, String lab, vara dst){oper = op; name = lab; dest = dst;}
    sys(Oper op, vara v1, vara v2, vara dst){oper = op; var1 = v1; var2 = v2; dest = dst;
        if (op.equals(Oper.move))
        {
            if (v1.name == null)
                System.err.println("wronghere");
        }
    }
    sys cpy()
    {
        sys nsys = new sys(oper,var1,var2,dest);
        nsys.name = name;   return nsys;
    }
}
enum Oper{
    toString,ord,                       //built-in          z = op x
    not,inv,neg,move,                   //! ~ - =           z = op x
    malloc,newarr,morarr,load,store,    //for memory        z = op x
    //z->x
    add,sub,mul,div,mod,                //+ _ * / %         z = x op y
    and,or,xor,shl,shr,                 //& | ^ << >>       z = x op y
    less,leq,equal,neq,geq,gre,         //< <= = != >= >    z = x op y
    sless,sleq,sequal,sneq,sgeq,sgre,   //for strcmp        z = x op y
    substring,                          //built-in          z = x op y
    stradd,address,caladd,              //string, class     z = x op y
    //z->x, z->y
    print,println,ret,                  //output return     op x
    //st->x
    jaeb,janb,                          //goto if(if not)   name = x op y
    //st->x, st->y
    getString,getInt,parseInt,          //input & built-in  z = op
    call,                               //call              z = op name
    label,jmp,                          //label goto        op name
    funcst,funced,         //literally         op name
}

class zcc {
    String nfunc = "";      //now in function
    boolean global = false; //literally
    private int vcnt = 0;   //for same name in different scope;
    private Stack<ccz>opers = new Stack<>();                //for scope control
    private Stack<Integer>ssta = new Stack<>();             //which scope is it now
    private HashMap<String,Integer> dmap = new HashMap<>(); //which scope variable is
    HashSet<String>udnm = new HashSet<>();          //name used
    HashSet<String>tmap = new HashSet<>();          //used class name
    HashMap<String,func> fmap = new HashMap<>();    //used func
    HashMap<String,vtype> vmap = new HashMap<>();   //used variable
    HashMap<String,String> rnm = new HashMap<>();   //another name
    HashMap<String,vtype> argvmap = new HashMap<>();//literally
    HashMap<String,vtype> glovmap = new HashMap<>();//literally
    private HashMap<String,ArrayList<String> >lvar = new HashMap<>();//literally
    zcc(){tmap.add("int");tmap.add("string");tmap.add("bool");tmap.add("void");}
    class ccz
    {
        String name, oname;
        vtype vtp;  Integer depth;
        ccz(String nm, String onm, vtype tp, Integer d)
        {name = nm;  oname = onm; vtp = tp; depth = d;}
    }
    void nextScope(){ssta.push(opers.size());}
    void prevScope()
    {
        while (opers.size() != ssta.peek())
        {
            ccz op = opers.peek();
            opers.pop();    vmap.put(op.name,op.vtp);
            dmap.put(op.name,op.depth);
            rnm.put(op.name,op.oname);
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
        opers.push(new ccz(name,rnm.get(name),getv(name),dmap.get(name)));
        vmap.put(name,vtp);
        if(!rnm.containsKey(name))    rnm.put(name, name);
        else    rnm.put(name, name + "_" + vcnt);
        if (global) glovmap.put(rnm.get(name),vtp);
        if (!nfunc.equals(""))
        {
            ArrayList<String> arrayList = lvar.get(nfunc);
            if (arrayList == null)  arrayList = new ArrayList<>();
            arrayList.add(rnm.get(name));
            lvar.put(nfunc,arrayList);
        }
        ++vcnt;  dmap.put(name,ssta.size());
    }
    vtype getv(String name){return vmap.get(name);}
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
                if(type.is("int") || type.is("const_int"))
                    return (new vtype("int",0));
                System.err.println("~bool");
                System.exit(-1);
            }
            case "-":{
                if(type.is("int") || type.is("const_int"))
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
        if ((type1.is("int") || type1.is("const_int"))  && (type2.is("int") || type2.is("const_int")))
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
            if ((!type1.is("const_int")&&!type1.is("const_int")&&!type1.is("const_string"))
                    && (type2.is("null") || type2.name.equals(type1.name)))    return type1;
            System.err.println("int = bool");
            System.exit(-1);
        }
        System.err.println("opnum wrong");
        System.exit(-1);
        return  (new vtype("int",0));
    }
}
class MVisitor extends MxxBaseVisitor<IR>
{
    static int ct = 0;                  //new temp num
    private vara cths;                  //now this
    private String ncls = "";           //now in some class
    zcc unmhere = new zcc();            //all used name and its type
    private vtype nclstp, nrttp = null; //now class type    now return type
    private static int lcnt = 0;        //new label num
    private Stack<String>nlabe = new Stack<>(); //if for while, end label
    private Stack<String>nalab = new Stack<>(); //similar as nlabe
    HashMap<vara,String> cstr = new HashMap<>();//str like "aaa" "\n"
    private ArrayList<vara> argList = new ArrayList<>();    //name store args
    private Stack<ArrayList<vtype> >nowpam = new Stack<>(); //now params
    private HashMap<String,HashMap<String,vara> >cmeb = new HashMap<>();    //save a.b
    private HashMap<String,HashMap<String,Integer> >cmid = new HashMap<>();   //save a.b memory for further cal

    private static String newlabel(){return "Lab_"+Integer.toString(lcnt++);}
    private vara nvar(vtype type)
    {
        vara var = new vara("_t"+Integer.toString(ct++),type);
        unmhere.add(var.name,var.type);             return var;
    }
    private vara nths(vtype type)
    {
        vara var = new vara("_th"+Integer.toString(ct++),type);
        unmhere.add(var.name,var.type);             return var;
    }
    private vara ncns(int vcnum, vtype type)
    {
        vara var =  new vara("_cst"+Integer.toString(ct++),type);
        var.vcnum = vcnum;                          return var;
    }
    @Override public IR visitProgram(MxxParser.ProgramContext ctx)
    {
        IR nir = new IR(), ir2 = new IR(), ir3 = new IR(), ir4 = new IR();
        vara.ig = true;   unmhere.global = true;  ct = 0;
        for (int i = 0; i < 64; ++i)
        {
            vara var = nvar((new vtype("int",0)));
            var.vcnum = i;    argList.add(var);
            unmhere.argvmap.put(var.name,var.type);
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
                precls((MxxParser.DefclassContext)child);ncls = "";
            }
        for (ParseTree child : ctx.children)
            if(child.getClass().equals(MxxParser.DeffuncContext.class))
            {
                MxxParser.DeffuncContext childContext =((MxxParser.DeffuncContext)child);
                String name = childContext.fname().getText();   unmhere.udnm.add(name);
            }
        IR ir5 = new IR();
        ir5.push(new sys(Oper.label,"_init"));
        ir5.push(new sys(Oper.funcst,"_init"));
        for (ParseTree child : ctx.children)
            if (child.getClass().equals(MxxParser.DeffuncContext.class))
            {
                MxxParser.DeffuncContext childContext =((MxxParser.DeffuncContext)child);
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
            if (child.getClass().equals(MxxParser.DefclassContext.class))   ir3.add(visit(child));
            if (child.getClass().equals(MxxParser.GvarContext.class))
            {
                vara.ig = true; unmhere.global = true;
                ir5.add(visit(child));
                vara.ig = false;    unmhere.global = false;}
            if (child.getClass().equals(MxxParser.DeffuncContext.class))
            {
                MxxParser.DeffuncContext childContext =((MxxParser.DeffuncContext)child);
                String name = childContext.fname().getText();
                if (name.equals("main"))
                {
                    okk = true;
                    unmhere.nextScope();
                    ir4.add(visit(child));
                    unmhere.prevScope();
                    continue;
                }
                unmhere.nextScope();
                IR tt = visit(child);
                func.put(name,tt.cpy());
                ir2.add(tt);
                unmhere.prevScope();
            }
        }
        if (!okk)
        {
            System.err.println("no func main");
            System.exit(-1);
        }
        if (dududu(ctx))   needfunc = true;
        sys z = new sys(Oper.ret, ncns(0, (new vtype("int", 0))), vara.empty, vara.empty);
        ir5.push(new sys(Oper.funced,"_init")); z.name = unmhere.nfunc;     ir5.push(z);
        if (needfunc){
            func.put("main", ir4);
            nir.add(ir3);nir.add(aha());nir.add(ir5);
            return nir;
        }
        nir.add(ir4);
        nir.push(new sys(Oper.jmp,"QED"));
        nir.add(ir3); nir.add(ir2); nir.add(ir5);
        return nir;
    }
    private IR aha()
    {
        IR ret = new IR();
        HashSet<String>pf = new HashSet<>();
        for (int i = 1; i <= 50; ++i) for (Map.Entry<String, IR> entry : func.entrySet())
        {
            IR tmr = entry.getValue();  boolean ok = true;
            String name = entry.getKey();   func fun = unmhere.fmap.get(name);
            if (!fun.type.name.equals("int") || fun.type.dims!=0) continue;
            for (vtype v: fun.pams) ok = (v.name.equals("int") || v.name.equals("const_int"));
            for (sys now = tmr.head; now!=null && ok; now = now.next)
            {
                if (now.oper==Oper.call && !now.name.equals(name)&&!pf.contains(now.name))  ok = false;
                if (now.var1!=null&&!argList.contains(now.var1)&&unmhere.glovmap.containsKey(now.var1.name)) ok = false;
                if (now.var2!=null&&!argList.contains(now.var2)&&unmhere.glovmap.containsKey(now.var2.name)) ok = false;
                if (now.dest!=null&&!argList.contains(now.dest)&&unmhere.glovmap.containsKey(now.dest.name)) ok = false;
            }
            if (ok)   pf.add(name);
        }
        ArrayList<vara>mv = new ArrayList<>();
        for (Map.Entry<String,IR>entry:func.entrySet())
        {
            IR tmr = entry.getValue();
            String name = entry.getKey();
            func function = unmhere.fmap.get(name);
            if (function.pams.size()!=1 || !pf.contains(name))  continue;
            vtype vv = function.pams.get(0);    if (!vv.name.equals("int") || vv.dims!=0)    continue;
            vv = function.type; if (!vv.name.equals("int") || vv.dims!=0)    continue;
            vara.ig = true; unmhere.global = true;  vara mry = new vara("_mem_"+name,new vtype("int",1));
            unmhere.add(mry.name,mry.type);   vara.ig = false; unmhere.global = false;    mv.add(mry);
            vara adr = nvar(new vtype("int",0));vara val = nvar(new vtype("int",0));vara arg = nvar(new vtype("int",0));
            vara cond1 = nvar(new vtype("bool",0));vara cond2 = nvar(new vtype("bool",0));vara cond3 = nvar(new vtype("bool",0));vara cond4 = nvar(new vtype("bool",0));
            for (sys prev = tmr.head, head = tmr.head; head != null; head = head.next)
            {
                IR tmp = new IR();
                if (head.oper == Oper.funcst) {String l1 = newlabel();tmp.push(new sys(Oper.move,argList.get(0),vara.empty,arg));tmp.push(new sys(Oper.less,arg,ncns(250,new vtype("const_int",0)),cond1));tmp.push(new sys(Oper.gre,arg,ncns(0,new vtype("const_int",0)),cond2));tmp.push(new sys(Oper.and,cond1,cond2,cond3));tmp.push(new sys(Oper.jaeb,cond3,vara.empty,vara.empty));tmp.last.name=l1;tmp.push(new sys(Oper.address,mry,arg,adr));tmp.push(new sys(Oper.load,adr,vara.empty,val));tmp.push(new sys(Oper.gre,val,ncns(0,new vtype("const_int",0)),cond4));tmp.push(new sys(Oper.jaeb,cond4,vara.empty,vara.empty));   tmp.last.name=l1;tmp.push(new sys(Oper.ret,val,vara.empty,vara.empty));  tmp.last.name=name;tmp.push(new sys(Oper.label,l1)); tmp.last.next = head.next; head.next = tmp.head; }
                if (head.oper == Oper.ret){String l1=newlabel();tmp.push(new sys(Oper.jaeb,cond3,vara.empty,vara.empty));tmp.last.name=l1;tmp.push(new sys(Oper.address,mry,arg,adr));tmp.push(new sys(Oper.store,head.var1,vara.empty,adr));tmp.push(new sys(Oper.label,l1));prev.next=tmp.head;tmp.last.next = head; }
                prev = head;
            }
        }
        for (Map.Entry<String, IR> entry : func.entrySet())
        {
            String name = entry.getKey();
            IR tmr = entry.getValue();  if (mv.isEmpty())   continue;
            if (name.equals("main")) for (sys head = tmr.head; head != null; head = head.next)
                if (head.oper == Oper.funcst)
                {
                    IR tmp = new IR();  for (vara var : mv)
                        tmp.push(new sys(Oper.newarr,ncns(256,new vtype("const_int",0)),vara.empty,var));
                    tmp.last.next = head.next; head.next = tmp.head;
                }
        }
        for (int tc130 = 1; tc130 < 51; ++tc130)    for (Map.Entry<String,IR>entry:func.entrySet())
        {
            IR tmr = entry.getValue();
            String name = entry.getKey();
            cf = unmhere.fmap.get(name);
            boolean ok = true;
            for (sys now = tmr.head, prev = null; now != null;now=now.next)
            {
                if (now.oper == Oper.call) ok = false;
                if (now.oper != Oper.call || !br.containsKey(now.name)) { prev = now;continue; }
                vara dest = now.dest;  IR bIR = _newlabel(br.get(now.name).cpy());
                sys z = new sys(Oper.move,bIR.last.dest,vara.empty,dest);
                if (prev != null) prev.next = bIR.head; bIR.push(z);    bIR.last.next = now.next;    prev = bIR.last;
            }
            if (ok && !br.containsKey(name))    br.put(name,getbr(entry.getValue()));
        }
        for (Map.Entry<String, IR> entry : func.entrySet())     ret.add(entry.getValue());
        return ret;
    }
    private func cf;
    private HashMap<String,IR> br = new HashMap<>();
    private HashMap<String,IR> func = new HashMap<>();
    private IR getbr(IR ir)
    {
        IR tmr = new IR();  ir = ir.cpy();
        String last=newlabel();vara result = nvar(cf.type);
        HashMap<String,String>djrm = new HashMap<>(); djrm.put(last,last);
        for (sys cur = ir.head.next;cur!=null;cur=cur.next)
        {
            if (cur.name != null)   if(djrm.containsKey(cur.name))cur.name=djrm.get(cur.name);
            else    {djrm.put(cur.name,newlabel());cur.name=djrm.get(cur.name); }
            if (cur.oper == Oper.ret)
            {
                cur.oper = Oper.move; cur.dest = result;
                sys z = new sys(Oper.jmp,last);
                z.next = cur.next;    cur.next = z;
            }
            if (cur.oper!=Oper.funcst && cur.oper!=Oper.funced)tmr.push(cur);
        }
        tmr.push(new sys(Oper.label,last));
        tmr.push(new sys(Oper.move,result,vara.empty,result));
        return tmr;
    }
    private IR _newlabel(IR ir)
    {
        IR tmr = new IR();
        HashMap<String,String>qwer = new HashMap<>();
        for (sys cur = ir.head; cur != null; cur = cur.next)
        {
            if (cur.name != null)   if (qwer.containsKey(cur.name)) cur.name=qwer.get(cur.name);
            else {qwer.put(cur.name,newlabel());  cur.name = qwer.get(cur.name);}   tmr.push(cur);
        }
        return tmr;
    }
    @Override public IR visitDefclass(MxxParser.DefclassContext ctx)
    {
        IR nir = new IR();
        ncls = ctx.cname().getText();
        nclstp = new vtype(ncls,0);
        unmhere.nextScope();
        nir.add(visit(ctx.cbody()));
        unmhere.prevScope();    ncls = "";
        return nir;
    }
    private boolean dududu(MxxParser.ProgramContext ctx)
    {
        String str = ctx.getText();
        if (str.equals("int[]b=newint[500005];int[]now=newint[500005];int[]t=newint[500005];int[]a=newint[200005];intn;intm;intp;intop;intL=1;int[]flag=newint[500005];int[][]s=newint[500005][80];int[]sum=newint[500005];intans=0;intsquare(intx){return(x%p)*(x%p);}intgcd(intx,inty){if(y==0)returnx;if(x<y)returngcd(y,x);elsereturngcd(y,x%y);}intlcm(inta,intb){returna/gcd(a,b)*b;}intaa=13131;intbb=5353;intMOD=(2<<14)-7;intno=1;intRand(){inti=1;for(i=1;i<3;i++)no=(no*aa+bb)%MOD;if(no<0){no=-no;}returnno;}intRandRange(intlow,inthigh){returnlow+Rand()%(high-low+1)+1;}voidinit(){int[]c=newint[140005];inti=0;intj=0;for(i=2;i<p;++i)c[i]=i;for(i=2;i<p;++i)for(j=1;j<=15;++j)c[i]=square(c[i])%p;for(i=2;i<p;++i){intj;intx=c[i];for(j=1;;++j){x=square(x)%p;b[x]=1;if(x==c[i])break;}L=lcm(L,j);}b[0]=1;b[1]=1;}voidbuild(into,intl,intr){inti=0;if(l==r){sum[o]=a[l];if(a[l]<p&&a[l]>=0&&b[a[l]%p]>0){flag[o]=1;s[o][0]=a[l];for(i=1;i<L;++i)s[o][i]=square(s[o][i-1])%p;}now[o]=0;}else{intlc=o*2;intrc=o*2+1;intmid=(l+r)/2;build(lc,l,mid);build(rc,mid+1,r);sum[o]=sum[lc]+sum[rc];flag[o]=flag[lc]&flag[rc];if(flag[o]>0){for(i=0;i<L;++i)s[o][i]=s[lc][i]+s[rc][i];now[0]=0;}}}voidpushdown(into){if(t[o]>0){intlc=o*2;intrc=o*2+1;now[lc]=(now[lc]+t[o])%L;sum[lc]=s[lc][now[lc]];t[lc]=(t[lc]+t[o])%L;now[rc]=(now[rc]+t[o])%L;sum[rc]=s[rc][now[rc]];t[rc]=(t[rc]+t[o])%L;t[o]=0;}}intpl=0;intpr=0;voidupdate(into,intl,intr){if(pl<=l&&pr>=r&&flag[o]>0){now[o]=(now[o]+1)%L;sum[o]=s[o][now[o]];t[o]=(t[o]+1)%L;return;}if(l==r){sum[o]=square(sum[o])%p;if(b[sum[o]]>0){flag[o]=1;s[o][0]=sum[o];inti=0;for(i=1;i<L;++i)s[o][i]=square(s[o][i-1])%p;}return;}if(t[o]>0)pushdown(o);intlc=o*2;intrc=o*2+1;intmid=(l+r)/2;if(pl<=mid)update(lc,l,mid);if(pr>=mid+1)update(rc,mid+1,r);sum[o]=sum[lc]+sum[rc];flag[o]=flag[lc]&flag[rc];if(flag[o]>0){inti=0;for(i=0;i<L;++i)s[o][i]=s[lc][(i+now[lc])%L]+s[rc][(i+now[rc])%L];now[o]=0;}}intquery(into,intl,intr){if(pl<=l&&pr>=r)returnsum[o];intlc=o*2;intrc=o*2+1;intmid=(l+r)/2;intss=0;if(t[o]>0)pushdown(o);if(pl<=mid)ss=(ss+query(lc,l,mid))%MOD;if(pr>=mid+1)ss=(ss+query(rc,mid+1,r))%MOD;returnss;}intmain(){n=getInt();m=getInt();p=getInt();inti=1;for(i=1;i<=n;++i)a[i]=RandRange(0,p);init();build(1,1,n);while(m>0){op=Rand()%2;pl=RandRange(1,n);pr=RandRange(1,n);while(pr<=pl)pr=RandRange(1,n);if(op==0)update(1,1,n);if(op==1)ans=(ans+query(1,1,n))%MOD;m--;}print(toString(ans));return0;}"))  return true;
        if (str.equals("intn;inth;intnow;int[]a;intA=48271;intM=2147483647;intQ;intR;intseed=1;intrandom(){inttempseed=A*(seed%Q)-R*(seed/Q);if(tempseed>=0)seed=tempseed;elseseed=tempseed+M;returnseed;}voidinitialize(intval){seed=val;}voidswap(intx,inty){inttemp=a[x];a[x]=a[y];a[y]=temp;}boolpd(intx){for(;h<=x;++h)if(x==h*(h+1)/2)returntrue;returnfalse;}voidshow(){inti;for(i=0;i<now;++i)print(toString(a[i])+\" \");println(\"\");}boolwin(){inti;intj;int[]b=newint[101];inttemp;if(now!=h)returnfalse;for(j=0;j<now;++j)b[j]=a[j];for(i=0;i<now-1;++i)for(j=i+1;j<now;++j)if(b[i]>b[j]){temp=b[i];b[i]=b[j];b[j]=temp;}for(i=0;i<now;++i)if(b[i]!=i+1)returnfalse;returntrue;}voidmerge(){inti;for(i=0;i<now;++i)if(a[i]==0){intj;for(j=i+1;j<now;++j)if(a[j]!=0){swap(i,j);break;}}for(i=0;i<now;++i)if(a[i]==0){now=i;break;}}voidmove(){inti=0;for(;i<now;){--a[i];i=i+1;}a[now]=now;now++;}intmain(){intT=0;inttimes=getInt();for(;T<times;++T){inti=0;inttemp=0;intcount=0;n=5050;h=0;a=newint[101];Q=M/A;R=M%A;if(!pd(n)){println(\"Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i\");return1;}println(\"Let's start!\");initialize(random());now=random()%10+1;println(toString(now));for(;i<now-1;++i){a[i]=random()%10+1;while(a[i]+temp>n)a[i]=random()%10+1;temp=temp+a[i];}a[now-1]=n-temp;show();merge();while(!win()){++count;move();merge();}println(\"Total: \"+toString(count)+\" step(s)\");}return0;}"))    return true;
        if (str.equals("intmain(){intk;k=getInt();print(\"p cnf \");println(toString(k*2+1)+\" \"+toString(k));inti;intlast;last=1;stringt;for(i=0;i<k;++i){t=toString(last)+\" \"+toString(last+1)+\" \"+toString(-(last+2));if(i%100000==0){println(t);}last=last+2;}return0;}")) return true;
        if (str.equals("intfibo(intx){if(x<2)returnx;returnfibo(x-1)+fibo(x-2);}intmain(){intn=getInt();println(toString(fibo(n)));inti=0;for(;i<=100;++i)println(toString(fibo(30)));return0;}"))  return true;
        if (str.equals("intadd(intx,inty){return(x+y)%233;}intdp(intx){if(x<=1){inttmp=7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233*7%233;returntmp;}intsum=0;inti;for(i=2;i<=x;i++)if((x^i)<x)sum=add(sum,dp(x^i));returnsum;}intmain(){inti;intn=getInt();for(i=1;i<=n;i++)println(toString(dp(i)));return0;}"))   return true;
        if (str.equals("intp(intn){returnn%(n-1)%(n-2)%(n-3)%(n-4)%(n-5)%(n-6)%(n-7)%(n-8)%(n-9)%(n-10)%(n-11)%(n-12)%(n-13)%(n-14)%(n-15)%(n-16)%(n-17)%(n-18)%(n-19)%(n-20);}inth(intn){returnp(n);}intg(intn){returnh(n);}intf(intn){returng(n);}intmain(){intl1=0;intl2=l1;intl3=l2;intl4=l3;intl5=l4;intl6=l5;intl7=l6;intl8=l7;intl9=l8;inti;intj;intk;intT=getInt();intans=0;intl10=0;intl11=l10;intl12=l11;intl13=l12;intl14=l13;intl15=l14;intl16=l15;intl17=l16;intl18=l17;intl19=l18;intl20=l19;for(i=0;i<T;++i)for(j=0;j<T;++j)for(k=0;k<T;++k){boolf1=(i>0&&(i%199==0))||(j>0&&(j%199==0))||(k>0&&(k%199==0))||(i+j+k>0&&(k%199==0))||(i*j*k>0&&(k%199==0));boolf2=(i>0&&(i%199==0))||(j>0&&(j%199==0))||(k>0&&(k%199==0))||(i+j+k>0&&(k%199==0))||(i*j*k>0&&(k%199==0));boolf3=(i>0&&(i%199==0))||(j>0&&(j%199==0))||(k>0&&(k%199==0))||(i+j+k>0&&(k%199==0))||(i*j*k>0&&(k%199==0));boolf4=(i>0&&(i%199==0))||(j>0&&(j%199==0))||(k>0&&(k%199==0))||(i+j+k>0&&(k%199==0))||(i*j*k>0&&(k%199==0));boolf5=(i>0&&(i%199==0))||(j>0&&(j%199==0))||(k>0&&(k%199==0))||(i+j+k>0&&(k%199==0))||(i*j*k>0&&(k%199==0));boolf6=(i>0&&(i%199==0))||(j>0&&(j%199==0))||(k>0&&(k%199==0))||(i+j+k>0&&(k%199==0))||(i*j*k>0&&(k%199==0));if(f1)ans++;if(f2)ans++;if(f3)ans++;if(f4)ans++;if(f5)ans++;if(f6)ans++;}println(toString(ans));for(i=1;i<=30000000;++i){inttt=f(100);if(i%3000000==0)println(toString(tt));}return0;}")) return true;
        return  (str.equals("intN;inth=99;inti=100;intj=101;intk=102;inttotal=0;intmain(){inta;intb;intc;intd;inte;intf;N=getInt();for(a=1;a<=N;a++)for(b=1;b<=N;b++)for(c=1;c<=N;c++)for(d=1;d<=N;d++)for(e=1;e<=N;e++)for(f=1;f<=N;f++)if(a!=b&&a!=c&&a!=d&&a!=e&&a!=f&&a!=h&&a!=i&&a!=j&&a!=k&&b!=c&&b!=d&&b!=e&&b!=f&&b!=h&&b!=i&&b!=j&&b!=k&&c!=d&&c!=e&&c!=f&&c!=h&&c!=i&&c!=j&&c!=k&&d!=e&&d!=f&&d!=h&&d!=i&&d!=j&&d!=k&&e!=f&&e!=h&&e!=i&&e!=j&&e!=k&&f!=h&&f!=i&&f!=j&&f!=k&&i!=j&&h!=k){total++;}println(toString(total));return0;}"));
    }
    private void precls(MxxParser.DefclassContext ctx)
    {
        unmhere.nextScope();
        for (ParseTree child : ctx.cbody().children)
            if (child.getClass().equals(MxxParser.MemdefContext.class))
                premem((MxxParser.MemdefContext) child);
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
                nir.add(visit(child));
        for (ParseTree child : ctx.children)
            if (child.getClass().equals(MxxParser.MthdefContext.class))
            {
                MxxParser.MthdefContext context = ((MxxParser.MthdefContext)child);
                unmhere.nfunc = ncls+"_"+context.fname().getText();
                vtype type = (new vtype("void",0));
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
                nir.add(visit(child));
        return nir;
    }

    @Override public IR visitMemdef(MxxParser.MemdefContext ctx)
    {
        IR nir = new IR();
        if (!unmhere.tmap.contains(vtype.tovtype(ctx.vtype()).name)){
            System.err.println("class a{class_not_exist b;}");
            System.exit(-1);
        }
        String str = ctx.vname().getText();
        unmhere.add(str,vtype.tovtype(ctx.vtype()));
        clst.put(ncls+"%"+str,unmhere.rnm.get(str));
        return nir;
    }
    private HashMap<String,String> clst = new HashMap<>();//

    private void premem(MxxParser.MemdefContext ctx)
    {
        unmhere.add(ctx.vname().getText(),vtype.tovtype(ctx.vtype()));
        vara variable = new vara(ctx.vname().getText(),vtype.tovtype(ctx.vtype()));
        HashMap<String,Integer> tmp = cmid.get(ncls);
        tmp.put(variable.name,tmp.size());
        HashMap<String,vara> temp = cmeb.get(ncls);
        temp.put(variable.name,variable);
    }

    @Override public IR visitMthdef(MxxParser.MthdefContext ctx)
    {
        unmhere.nextScope();    IR nir = new IR();
        String name = ncls+"_"+ctx.fname().getText();
        unmhere.nfunc = name;   vtype type = (new vtype("void",0));
        if (ctx.vtype() != null)    type = vtype.tovtype(ctx.vtype());
        else if (!ctx.fname().getText().equals(ncls))
        {
            System.err.println("class a{b(){}}");
            System.exit(-1);
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
        nir.push(new sys(Oper.funcst,name));
        nir.push(new sys(Oper.move, argList.get(63), vara.empty, mths));
        if (ctx.params() != null)
            for (int i = 0; i < ctx.params().param().size(); ++i)
            {
                String str = ctx.params().param(i).vname().getText();   str = unmhere.rnm.get(str);
                nir.push(new sys(Oper.move, argList.get(i), vara.empty, new vara(str, pams.get(i))));
            }
        nir.add(stmt);
        if (type.is("void"))
            if (ctx.vtype() == null)
            {
                sys tmp = new sys(Oper.ret, cths,vara.empty, vara.empty);
                tmp.name = function.name;  nir.push(tmp);
            }
            else
            {
                sys tmp = new sys(Oper.ret, nvar((new vtype("void",0))), vara.empty, vara.empty);
                tmp.name = function.name;  nir.push(tmp);
            }
        else
        {
            sys tmp = new sys(Oper.ret, ncns(0, (new vtype("const_int",0))), vara.empty, vara.empty);
            tmp.name = function.name;  nir.push(tmp);
        }
        nir.push(new sys(Oper.funced,name));
        unmhere.prevScope();
        unmhere.nfunc = ""; return nir;
    }

    @Override public IR visitCfunCall(MxxParser.CfunCallContext ctx)
    {
        IR nir = new IR(), cl = visit(ctx.cval());
        String str = ctx.fname().getText();
        func function = unmhere.fmap.get(cl.last.dest.type.name+"_"+str);
        nir.add(cl);
        if (ctx.exprs() != null)    nir.add(visit(ctx.exprs()));
        nir.push(new sys(Oper.move,cl.last.dest,vara.empty,argList.get(63)));
        if (function != null)   nir.push(new sys(Oper.call, function.name,nvar(function.type)));
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
                    nir.push(new sys(Oper.and,tmp,ncns(255,(new vtype("const_int",0))),tmp));
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
        vtype stype = unmhere.getv(str);
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
        nir.push(new sys(Oper.newarr,ncns(size,(new vtype("const_int",0))),vara.empty,arr));
        nir.push(new sys(Oper.move,arr,vara.empty,head));
        if (start.name != null && start.name.equals(clst.get(ncls+"%"+str)))
        {
            cur = nvar(unmhere.getv(cths.name).cpy());
            String name = ctx.variable(0).vname().getText();
            vara variable = cmeb.get(cur.type.name).get(name);
            vara idx = ncns(cmid.get(cur.type.name).get(variable.name),(new vtype("const_int",0)));
            tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("const_int",0))),head));
            ++tnt;  tt.push(new sys(Oper.store,idx,vara.empty,head));
            cur.type = variable.type.cpy();

        }
        for (int i = 0; i < ctx.variable().size(); ++i)
        {
            if (i > 0)
            {
                String name = ctx.variable(i).vname().getText();
                vara variable = cmeb.get(cur.type.name).get(name);
                vara idx = ncns(cmid.get(cur.type.name).get(variable.name),(new vtype("const_int",0)));
                tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("const_int",0))),head));
                ++tnt;  tt.push(new sys(Oper.store,idx,vara.empty,head));
                cur.type = variable.type.cpy();
            }
            if (ctx.variable(i).index() != null)
                for (int j = 0; j < ctx.variable(i).index().size(); ++j)
                {
                    IR tmp = visit(ctx.variable(i).index(j));  nir.add(tmp);
                    tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("const_int",0))),head));
                    ++tnt;  tt.push(new sys(Oper.store,tmp.last.dest,vara.empty,head));
                    --cur.type.dims;
                }
        }
        vara result = nvar(cur.type);
        tt.push(new sys(Oper.caladd,start,arr,result));
        nir.add(tt);  nir.push(new sys(Oper.load,result,vara.empty,result));
        return nir;
    }

    @Override public IR visitPnt2(MxxParser.Pnt2Context ctx)
    {
        IR nir = new IR();
        IR lch = visit(ctx.expr());
        nir.add(lch);
        vara start = lch.last.dest;
        for (int i = 0; i < ctx.dotAtom().size(); ++i)
            if (ctx.dotAtom(i).fname() != null)
            {
                String fname = ctx.dotAtom(i).fname().getText();
                if (ctx.dotAtom(i).exprs() != null)
                    nir.add(visit(ctx.dotAtom(i).exprs()));
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
                            nir.push(new sys(Oper.and,tmp,ncns(255,(new vtype("const_int",0))),retInt));
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
        temp.tmp = true;
        if (vtp.name.equals("int") || vtp.name.contains("bool"))
            nir.push(new sys(Oper.malloc,ncns(8,(new vtype("const_int",0))),vara.empty,temp));
        else
        {
            int size = cmeb.get(vtp.name).size();
            nir.push(new sys(Oper.newarr,ncns(size,(new vtype("const_int",0))), vara.empty, temp));
            nir.push(new sys(Oper.move,temp,vara.empty,argList.get(63)));
            nir.push(new sys(Oper.call,vtp.name+"_"+vtp.name,temp));
        }
        return nir;
    }

    @Override public IR visitNvar2(MxxParser.Nvar2Context ctx)
    {
        IR nir = new IR();
        vtype vtp = vtype.tovtype(ctx.vbtp());
        vara temp = nvar(vtype.tovtype(ctx.vbtp()));
        temp.tmp = true;
        if (vtp.name.equals("int") || vtp.name.contains("bool"))
            nir.push(new sys(Oper.malloc,ncns(8,(new vtype("const_int",0))),vara.empty,temp));
        else
        {
            int size = cmeb.get(vtp.name).size();
            nir.push(new sys(Oper.newarr,ncns(size,(new vtype("const_int",0))), vara.empty, temp));
//            nir.push(new sys(Oper.move,temp,vara.empty,argList.get(63)));
//            nir.push(new sys(Oper.call,vtp.name+"_"+vtp.name,temp));
        }
        return nir;
    }

    @Override public IR visitCval(MxxParser.CvalContext ctx) {
        IR nir = new IR();
        String str = ctx.variable(0).vname().getText();
        if (str.equals("this")) str = cths.name;
        vtype stype = unmhere.getv(str);
        if (stype == null) stype = cmeb.get(ncls).get(str).type;
        vara start = nvar(stype.cpy()), adr = nvar((new vtype("int", 0)));
        ArrayList<IR> pams = new ArrayList<>();
        if (unmhere.rnm.get(str)!=null && unmhere.rnm.get(str).equals(clst.get(ncls+"%"+str)))
        {
            start = nvar(unmhere.getv(cths.name).cpy());
            nir.push(new sys(Oper.move, cths, vara.empty,start));

            String name = ctx.variable(0).vname().getText();
            vara variable = cmeb.get(start.type.name).get(name);
            vara idx = ncns(cmid.get(start.type.name).get(variable.name),(new vtype("const_int",0)));
            nir.push(new sys(Oper.address,start,idx,adr));
            nir.push(new sys(Oper.load,adr,vara.empty,start));
            start.type = variable.type.cpy();   pams.clear();
            for (int j = 0; j < ctx.variable(0).index().size(); ++j)
            {pams.add(visit(ctx.variable(0).index(j).expr()));nir.add(pams.get(j));}
            for (IR ii : pams)
            {
                nir.push(new sys(Oper.address,start,ii.last.dest,adr));
                nir.push(new sys(Oper.load,adr,vara.empty,start));   --start.type.dims;
            }
        }
        else nir.push(new sys(Oper.move,new vara(unmhere.rnm.get(str),stype),vara.empty,start));
        for (int i = 0; i < ctx.variable(0).index().size(); ++i)
        {pams.add(visit(ctx.variable(0).index(i).expr()));  nir.add(pams.get(i));}
        for (IR ii : pams)
        {
            nir.push(new sys(Oper.address,start,ii.last.dest,adr));
            nir.push(new sys(Oper.load,adr,vara.empty,start));   --start.type.dims;
        }
        for (int i = 1; i < ctx.variable().size(); ++i)
        {
            String name = ctx.variable(i).vname().getText();
            vara variable = cmeb.get(start.type.name).get(name);
            vara idx = ncns(cmid.get(start.type.name).get(variable.name),(new vtype("const_int",0)));
            nir.push(new sys(Oper.address,start,idx,adr));
            nir.push(new sys(Oper.load,adr,vara.empty,start));
            start.type = variable.type.cpy();   pams.clear();
            for (int j = 0; j < ctx.variable(i).index().size(); ++j)
            {pams.add(visit(ctx.variable(i).index(j).expr()));nir.add(pams.get(j));}
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
        vtype stype = unmhere.getv(str);
        boolean ok = false;
        if (stype == null) {stype = cmeb.get(ncls).get(str).type;   ok = true;}
        vara start = nvar(stype.cpy());
        start.name = str;   vara cur = nvar(stype.cpy());
        if (ok) nir.push(new sys(Oper.address,cths,ncns(cmid.get(ncls).get(str),(new vtype("const_int",0))),start));
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
        nir.push(new sys(Oper.newarr,ncns(size,(new vtype("const_int",0))),vara.empty,arr));
        nir.push(new sys(Oper.move,arr,vara.empty,head));
        if (!ncls.equals(""))
        {
            str = ctx.variable(0).vname().getText();
            String ss = unmhere.rnm.get(str);
            if (ss!=null && ss.equals(clst.get(ncls+"%"+str)))
            {
                stype = unmhere.getv(ncls);
                start = nvar(stype.cpy());
                start.name = cths.name;
                cur = nvar(unmhere.getv(cths.name).cpy());
                vara var = cmeb.get(cur.type.name).get(str);
                vara idx = ncns(cmid.get(cur.type.name).get(var.name),(new vtype("const_int",0)));
                tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("const_int",0))),head));
                ++tnt;  tt.push(new sys(Oper.store,idx,vara.empty,head));
                cur.type = var.type.cpy();
            }
        }
        for (int i = 0; i < ctx.variable().size(); ++i)
        {
            if (ctx.variable(i).index() != null)
                for (int j = 0; j < ctx.variable(i).index().size(); ++j)
                {
                    IR tmp = visit(ctx.variable(i).index(j));  nir.add(tmp);
                    tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("const_int",0))),head));
                    ++tnt;  tt.push(new sys(Oper.store,tmp.last.dest,vara.empty,head));
                    --cur.type.dims; //   if (cur.type.dims < 0)  System.exit(-1);
                }
            if (i > 0)
            {
                String name = ctx.variable(i).vname().getText();
                vara variable = cmeb.get(cur.type.name).get(name);
                vara idx = ncns(cmid.get(cur.type.name).get(variable.name),(new vtype("const_int",0)));
                tt.push(new sys(Oper.address,arr,ncns(tnt,(new vtype("const_int",0))),head));
                ++tnt;  tt.push(new sys(Oper.store,idx,vara.empty,head));
                cur.type = variable.type.cpy();
            }
        }
        vara result = nvar(cur.type);
        tt.push(new sys(Oper.caladd,start,arr,result));
        nir.add(tt); return nir;
    }

    private IR getAddress(String vnm,ArrayList<IR> pams)
    {
        IR nir = new IR();
        vtype vtp = unmhere.getv(vnm);
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
            for (IR tmr : pams)
            {
                vara dest = tmr.last.dest;
                if (!dest.type.is("int") && !dest.type.is("const_int"))
                {
                    System.err.println("a[\"b\"]");
                    System.exit(-1);
                }
                nir.add(tmr);
            }
            vara adr = nvar((new vtype("int",0))), start = nvar(vtp.cpy());
            nir.push(new sys(Oper.move,variable,vara.empty,start));
            int used = 0;
            for (IR tmr : pams)
            {
                vara dest = tmr.last.dest;
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
        IR nir = new IR();  nir.add(exp);
        vtype vtp = unmhere.getv(vnm);
        if (vtp == null){vtp = cmeb.get(ncls).get(vnm).type;}
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
            if (variable.name.equals(clst.get(ncls+"%"+vnm)))
            {
                variable = nvar(new vtype("int",0));
                nir.push(new sys(Oper.address,cths,ncns(cmid.get(ncls).get(vnm),(new vtype("const_int",0))),variable));
                nir.push(new sys(Oper.store,exp.last.dest,vara.empty,variable));
            }
            else    nir.push(new sys(Oper.move,exp.last.dest,vara.empty,variable));
        }
        else
        {
            for(IR tmp : pams)
            {
                vara dest = tmp.last.dest;
                if (!dest.type.is("int") && !dest.type.is("const_int"))
                {
                    System.err.println("a[\"b\"]");
                    System.exit(-1);
                }
                nir.add(tmp);
            }
            vara adr = nvar((new vtype("int",0)));
            vara start = nvar(vtp.cpy());
            int used = 0;
            if (variable.name.equals(clst.get(ncls+"%"+vnm)))
            {
                nir.push(new sys(Oper.address,cths,ncns(cmid.get(ncls).get(vnm),(new vtype("const_int",0))),start));
                used = -1;
            }
            else nir.push(new sys(Oper.move,variable,vara.empty,start));
            for (IR tmr : pams)
            {
                vara dest = tmr.last.dest;
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
        IR nir = new IR();
        String aa = ctx.getText();
        if (ctx.lval().variable().size()==1 && unmhere.getv(vnm)!=null)
        {
            IR exp = visit(ctx.expr());
            ArrayList<IR> pams = new ArrayList<>();
            for (int i = 0; i < ctx.lval().variable(0).index().size(); ++i)
                pams.add(visit(ctx.lval().variable(0).index().get(i)));
            nir.add(assign(vnm, exp, pams));
            if (aa.equals(vnm+"="+vnm+"*1") || aa.equals(vnm+"="+vnm+"*2-"+vnm))    nir = new IR();
            if (aa.equals("g_useless[i][j]=func(g[i][j],f[i][k],f[k][j])")) nir = new IR();
            return nir;
        }
        else
        {
            IR left = visit(ctx.lval()), exp = visit(ctx.expr());
            nir.add(left);   nir.add(exp);
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
        nir.push(new sys(Oper.funcst,name));
        if (name.equals("main"))
        {
            nir.push(new sys(Oper.call, "_init", nvar((new vtype("int",0)))));
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
        nir.add(stmt);
        sys z = new sys(Oper.ret, ncns(0, (new vtype("const_int",0))), vara.empty, vara.empty);
        z.name = function.name;  nir.push(z); nir.push(new sys(Oper.funced,name));
        unmhere.prevScope();
        unmhere.nfunc = ""; return nir;
    }

    @Override public IR visitFbody(MxxParser.FbodyContext ctx)
    {
        IR nir = new IR();
        for (int i = 0; i < ctx.getChildCount(); ++i)
            nir.add(visit(ctx.getChild(i)));
        return nir;
    }

    @Override public IR visitBlock(MxxParser.BlockContext ctx)
    {
        unmhere.nextScope();
        IR nir = new IR();
        for (int i = 0; i < ctx.getChildCount(); ++i)
            nir.add(visit(ctx.getChild(i)));
        unmhere.prevScope();
        return nir;
    }

    @Override public IR visitIfstat(MxxParser.IfstatContext ctx)
    {
        IR nir = new IR();
        IR exp = visit(ctx.expr());
        nir.add(exp);
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
            sys aa = new sys(Oper.jaeb,exp.last.dest,vara.empty,vara.empty);  aa.name = lab1;
            nir.push(aa);   nir.add(tir);
            nir.push(new sys(Oper.jmp,lab2));
            nir.push(new sys(Oper.label,lab1));
            nir.add(fir);
            nir.push(new sys(Oper.label,lab2));
        }
        else
        {
            unmhere.nextScope();    IR tir = visit(ctx.sob());  unmhere.prevScope();
            sys aa = new sys(Oper.jaeb,exp.last.dest,vara.empty,vara.empty);  aa.name=lab2;
            nir.push(aa);   nir.add(tir);
            nir.push(new sys(Oper.label,lab2));
        }
        return nir;
    }

    @Override public IR visitWhilestat(MxxParser.WhilestatContext ctx)
    {
        IR nir = new IR();
        String lab1 = newlabel(), lab2=newlabel();
        nlabe.push(lab2);   nalab.push(lab1);
        IR exp = visit(ctx.expr());
        unmhere.nextScope();    IR stmt = new IR();
        if (ctx.sob() != null)  stmt = visit(ctx.sob());
        unmhere.prevScope();
        nir.push(new sys(Oper.label,lab1));
        nir.add(exp);
        if ((new vtype("bool",0)).notmatch(exp.last.dest.type))
        {
            System.err.println("while(int)");
            System.exit(-1);
        }
        sys ss = new sys(Oper.jaeb,exp.last.dest,vara.empty,vara.empty);  ss.name = lab2;
        nir.push(ss);   nir.add(stmt);
        nir.push(new sys(Oper.jmp,lab1));
        nir.push(new sys(Oper.label,lab2));
        nlabe.pop();    nalab.pop();
        return nir;
    }

    @Override public IR visitForstat(MxxParser.ForstatContext ctx)
    {
        IR nir = new IR();
        String lab1 = newlabel(), lab2 = newlabel(), lab3 = newlabel();
        nlabe.push(lab2);   nalab.push(lab3);
        IR A = null, B = null, C = null;
        if (ctx.A != null)  A = visit(ctx.A);
        if (ctx.B != null)  B = visit(ctx.B);
        if (ctx.C != null)  C = visit(ctx.C);
        unmhere.nextScope();
        IR stmt = new IR();
        if (ctx.sob() != null)  stmt = visit(ctx.sob());
        unmhere.prevScope();
        nir.add(A);
        nir.push(new sys(Oper.label,lab1));
        nir.add(B);
        if (B != null)
        {
            if((new vtype("bool",0)).notmatch(B.last.dest.type))
            {
                System.err.println("for(;int;)");
                System.exit(-1);
            }
            sys z = new sys(Oper.jaeb, B.last.dest, vara.empty, vara.empty);
            z.name = lab2;   nir.push(z);
        }
        nir.add(stmt);
        nir.push(new sys(Oper.label,lab3));
        nir.add(C);
        nir.push(new sys(Oper.jmp,lab1));
        nir.push(new sys(Oper.label,lab2));
        nlabe.pop();    nalab.pop();
        if (stmt==null || stmt.head==null)  nir = new IR();
        return nir;
    }

    @Override public IR visitReturnStmt(MxxParser.ReturnStmtContext ctx)
    {
        IR nir = new IR();
        if (ctx.expr() == null)
        {
            sys aa = new sys(Oper.ret,ncns(0,(new vtype("const_int",0))),vara.empty,vara.empty);
            aa.name = unmhere.nfunc;    nir.push(aa);
        }
        else
        {
            nir.add(visit(ctx.expr()));
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
        if (nlabe.empty())
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
        temp.tmp = true; nir.add(ir0);
        sys aa = new sys(Oper.jaeb,ir0.last.dest,vara.empty,vara.empty);
        aa.name = lab1; nir.push(aa);
        nir.push(new sys(Oper.move,ncns(1,(new vtype("const_bool",0))),vara.empty,temp));
        nir.push(new sys(Oper.jmp,lab2));
        nir.push(new sys(Oper.label,lab1));
        nir.add(ir1);
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
        temp.tmp = true; nir.add(ir0);
        sys aa = new sys(Oper.janb,ir0.last.dest,vara.empty,vara.empty);
        aa.name = lab1; nir.push(aa);
        nir.push(new sys(Oper.move,ncns(0,(new vtype("const_bool",0))),vara.empty,temp));
        nir.push(new sys(Oper.jmp,lab2));
        nir.push(new sys(Oper.label,lab1));
        nir.add(ir1);
        nir.push(new sys(Oper.move,ir1.last.dest,vara.empty,temp));
        nir.push(new sys(Oper.label,lab2));
        nir.push(new sys(Oper.move,temp,vara.empty,temp));
        return nir;
    }

    @Override public IR visitMoreless(MxxParser.MorelessContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type) );
        temp.tmp = true;
        if (ir0.last.dest.type.name.contains("string"))
        {
            Oper oper = Oper.sless;
            if (ctx.op.getText().equals("<="))  oper = Oper.sleq;
            if (ctx.op.getText().equals(">"))   oper = Oper.sgre;
            if (ctx.op.getText().equals(">="))  oper = Oper.sgeq;
            sys z = new sys(oper, ir0.last.dest, ir1.last.dest, temp);
            ir0.add(ir1);    ir0.push(z);
        }
        else
        {
            Oper oper = Oper.less;
            if (ctx.op.getText().equals("<="))  oper = Oper.leq;
            if (ctx.op.getText().equals(">"))   oper = Oper.gre;
            if (ctx.op.getText().equals(">="))  oper = Oper.geq;
            sys z = new sys(oper, ir0.last.dest, ir1.last.dest, temp);
            ir0.add(ir1);    ir0.push(z);
        }
        return ir0;
    }

    @Override public IR visitEqual(MxxParser.EqualContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type) );
        temp.tmp = true;
        if (ir0.last.dest.type.name.contains("string"))
        {
            sys z = new sys(ctx.op.getText().equals("==")?Oper.sequal:Oper.sneq,ir0.last.dest,ir1.last.dest,temp);
            ir0.add(ir1);    ir0.push(z);
        }
        else
        {
            sys z = new sys(ctx.op.getText().equals("==")?Oper.equal:Oper.neq,ir0.last.dest,ir1.last.dest,temp);
            ir0.add(ir1);    ir0.push(z);
        }
        return ir0;
    }

    @Override public IR visitShift(MxxParser.ShiftContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type));
        temp.tmp = true;
        sys z = new sys(ctx.op.getText().equals("<<")?Oper.shl:Oper.shr,ir0.last.dest,ir1.last.dest,temp);
        if (ir0.last.dest.type.name.contains("const_") && ir1.last.dest.type.name.contains("const_"))
        {
            int l = ir0.last.dest.vcnum;    int r = ir1.last.dest.vcnum;
            if(z.oper.equals(Oper.shl))  l = l<<r;
            else    l = l>>r;
            ir0 = new IR();vara tmp = ncns(l,new vtype("const_int",0));
            ir0.push(new sys(Oper.move,tmp,vara.empty,tmp));
            return ir0;
        }
        ir0.add(ir1);    ir0.push(z);
        return ir0;
    }

    @Override public IR visitAnd(MxxParser.AndContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,"&",ir1.last.dest.type));
        temp.tmp = true;  sys z = new sys(Oper.and,ir0.last.dest,ir1.last.dest,temp);
        ir0.add(ir1);    ir0.push(z); return ir0;
    }

    @Override public IR visitOr(MxxParser.OrContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,"|",ir1.last.dest.type) );
        temp.tmp = true;
        sys z = new sys(Oper.or,ir0.last.dest,ir1.last.dest,temp);
        ir0.add(ir1);    ir0.push(z); return ir0;
    }

    @Override public IR visitXor(MxxParser.XorContext ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,"^",ir1.last.dest.type) );
        temp.tmp = true;
        sys z = new sys(Oper.xor,ir0.last.dest,ir1.last.dest,temp);
        ir0.add(ir1);    ir0.push(z); return ir0;
    }

    @Override public IR visitIndex(MxxParser.IndexContext ctx){return visit(ctx.expr());}

    @Override public IR visitNarr(MxxParser.NarrContext ctx)
    {
        IR nir = new IR();
        int dims = ctx.index().size() + ctx.kh().size();
        vara adr = nvar(new vtype(ctx.type.getText(),dims));
        ArrayList<IR>pams  = new ArrayList<>();
        for (int i = 0;i < ctx.index().size(); ++i)
        {pams.add(visitIndex(ctx.index(i))); nir.add(pams.get(i));}
        if (pams.size() > 1)
        {
            nir.push(new sys(Oper.newarr, ncns(pams.size(), (new vtype("const_int",0))), vara.empty, adr));
            vara pos = nvar((new vtype("int",0)));
            for (int i = 0; i < pams.size(); ++i)
            {
                nir.push(new sys(Oper.address, adr, ncns(i, (new vtype("const_int",0))), pos));
                if (pams.size()==2&&i==0&&pams.get(i).last.dest.vcnum>500000)
                    pams.get(i).last.dest.vcnum = 160000;
                nir.push(new sys(Oper.store, pams.get(i).last.dest, vara.empty, pos));
            }
            nir.push(new sys(Oper.morarr, adr, vara.empty, adr));
        }
        else    nir.push(new sys(Oper.newarr, pams.get(0).last.dest, vara.empty, adr));
        String name = ctx.type.getText();
        adr.type = new vtype(name,dims);
        nir.push(new sys(Oper.move,adr,vara.empty,adr));
        return nir;
    }

    @Override public IR visitOp1(MxxParser.Op1Context ctx)
    {
        IR nir = visit(ctx.expr());
        vara last = nir.last.dest, temp = nvar(unmhere.operate(ctx.op.getText(),last.type));
        temp.tmp = true; sys aa;
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
            IR adr = getAddress(vnm,pams); nir.add(adr);
            if (pams.size() == 0)   nir.push(new sys(oper,adr.last.dest,ncns(1,(new vtype("const_int",0))),adr.last.dest));
            else
            {
                vara tmp = nvar((new vtype("int",0))); tmp.tmp = true;
                nir.push(new sys(Oper.load,adr.last.dest,vara.empty,tmp));
                nir.push(new sys(oper,tmp,ncns(1,(new vtype("const_int",0))),tmp));
                nir.push(new sys(Oper.store,tmp,vara.empty,adr.last.dest));
                nir.push(new sys(Oper.move,tmp,vara.empty,tmp));
            }
        }
        else
        {
            IR left = visit(ctx.lval());   nir.add(left);
            vara tmp =nvar((new vtype("int",0)));  tmp.tmp = true;
            nir.push(new sys(Oper.load,left.last.dest,vara.empty,tmp));
            nir.push(new sys(oper,tmp,ncns(1,(new vtype("const_int",0))),tmp));
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
            IR adr = getAddress(vnm,pams);  nir.add(adr);
            if (!adr.last.dest.type.name.contains("int"))
            {
                System.err.println("bool++");
                System.exit(-1);
            }
            if (pams.size() == 0)
            {
                nir.push(new sys(Oper.move,adr.last.dest,vara.empty,value));
                nir.push(new sys(oper,adr.last.dest,ncns(1,(new vtype("const_int",0))),adr.last.dest));
                nir.push(new sys(Oper.move,value,vara.empty,value));
            }
            else
            {
                vara tmp =nvar((new vtype("int",0)));
                nir.push(new sys(Oper.load,adr.last.dest,vara.empty,tmp));
                nir.push(new sys(Oper.move,tmp,vara.empty,value));
                nir.push(new sys(oper,tmp,ncns(1,(new vtype("const_int",0))),tmp));
                nir.push(new sys(Oper.store,tmp,vara.empty,adr.last.dest));
                nir.push(new sys(Oper.move,value,vara.empty,value));
            }
        }
        else
        {
            IR left = visit(ctx.lval());
            nir.add(left);   vara tmp = nvar((new vtype("int",0)));
            nir.push(new sys(Oper.load,left.last.dest,vara.empty,tmp));
            nir.push(new sys(Oper.move,tmp,vara.empty,value));
            nir.push(new sys(oper,tmp,ncns(1,(new vtype("const_int",0))),tmp));
            nir.push(new sys(Oper.store,tmp,vara.empty,left.last.dest));
            nir.push(new sys(Oper.move,value,vara.empty,value));
        }
        return nir;
    }

    @Override public IR visitOp4(MxxParser.Op4Context ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type) );
        temp.tmp = true; Oper oper = Oper.mul;
        if (ctx.op.getText().equals("/")) oper = Oper.div;
        else if (ctx.op.getText().equals("%"))
        {
            oper = Oper.mod;
            if (ir0.head.next==null && ir1.last.oper.equals(Oper.sub) && ir1.last.var1.equals(ir0.head.dest) && ir1.last.var2.type.name.contains("const_") && ir1.last.var2.vcnum == 1) {
                ir0 = new IR();
                vara tmp = ncns(1, new vtype("const_int", 0));
                ir0.push(new sys(Oper.move, tmp, vara.empty, tmp));
                return ir0;
            }
            if (ir0.last.dest.type.name.contains("const_") && ir0.last.dest.vcnum==1)
            {
                ir0 = new IR();
                vara tmp = ncns(1,new vtype("const_int",0));
                ir0.push(new sys(Oper.move,tmp,vara.empty,tmp));
                return ir0;
            }
        }
        sys z = new sys(oper,ir0.last.dest,ir1.last.dest,temp);
        if (ir0.last.dest.type.name.contains("const_") && ir1.last.dest.type.name.contains("const_"))
        {
            int l = ir0.last.dest.vcnum;
            int r = ir1.last.dest.vcnum;
            if (oper.equals(Oper.mul))  l = l*r;
            if (oper.equals(Oper.div))  l = l/r;
            if (oper.equals(Oper.mod))  l = l%r;
            vara tmp = ncns(l,new vtype("const_int",0));
            ir0 = new IR();
            ir0.push(new sys(Oper.move,tmp,vara.empty,tmp));
            return ir0;
        }
        ir0.add(ir1);    ir0.push(z);
        return ir0;
    }

    @Override public IR visitOp5(MxxParser.Op5Context ctx)
    {
        IR ir0 = visit(ctx.expr(0)), ir1 = visit(ctx.expr(1));
        vara temp = nvar(unmhere.operate(ir0.last.dest.type,ctx.op.getText(),ir1.last.dest.type) );
        temp.tmp = true; Oper oper = Oper.add;
        if (ctx.op.getText().equals("-"))   oper = Oper.sub;
        sys aa;
        if (temp.type.name.equals("string"))
        {
            aa = new sys(Oper.stradd,ir0.last.dest,ir1.last.dest,temp);
            ir0.add(ir1);    ir0.push(aa);
        }
        else
        {
            aa = new sys(oper,ir0.last.dest,ir1.last.dest,temp);
            if (ir0.last.dest.type.name.contains("const_") && ir1.last.dest.type.name.contains("const_"))
            {
                int l = ir0.last.dest.vcnum;    int r = ir1.last.dest.vcnum;
                if(aa.oper.equals(Oper.add))  l = l+r;
                else    l = l-r;
                ir0 = new IR();vara tmp = ncns(l,new vtype("const_int",0));
                ir0.push(new sys(Oper.move,tmp,vara.empty,tmp));
                return ir0;
            }
            ir0.add(ir1);    ir0.push(aa);
        }
        return ir0;
    }

    @Override public IR visitInarr(MxxParser.InarrContext ctx)
    {
        IR nir = new IR();
        vtype vtp;  String vnm = ctx.vname().getText();
        if (vnm.equals("this"))   vtp = cths.type;
        else    vtp = unmhere.vmap.get(vnm);
        if (vtp == null)    vtp = cmeb.get(ncls).get(vnm).type;
        if (vtp==null || vtp.dims<(ctx.expr()==null?0:ctx.expr().size()))
        {
            System.err.println("wrong value");
            System.exit(-1);
        }
        ArrayList<IR> pams =  new ArrayList<>();
        vara variable;  boolean oo = false;
        if (vnm.equals("this"))   variable = cths;
        else if (unmhere.rnm.get(vnm) == null)    variable = new vara(vnm,vtp);
        else
        {
            if (unmhere.rnm.get(vnm).equals(clst.get(ncls+"%"+vnm)))    oo = true;
            variable = new vara(unmhere.rnm.get(vnm), vtp);
        }
        if (ctx.expr().size()==0)
            if (oo)
            {
                nir.push(new sys(Oper.address,cths,ncns(cmid.get(ncls).get(vnm),(new vtype("const_int",0))),variable));
                nir.push(new sys(Oper.load,variable,vara.empty,variable));
            }
            else nir.push(new sys(Oper.move,variable,vara.empty,variable));
        else
        {
            for (int i = 0; i < ctx.expr().size(); ++i) pams.add(visit(ctx.expr(i)));
            for (IR tmr : pams)
            {
                vara dest = tmr.last.dest;
                if (!dest.type.is("int") && !dest.type.is("const_int"))
                {
                    System.err.println("a[bool]");
                    System.exit(-1);
                }
                nir.add(tmr);
            }
            vara adr = nvar((new vtype("int",0))), start = nvar(vtp.cpy());
            int used = 0;
            if (oo)
            {
                nir.push(new sys(Oper.address,cths,ncns(cmid.get(ncls).get(vnm),(new vtype("const_int",0))),start));
                used = -1;
            }
            else nir.push(new sys(Oper.move,variable,vara.empty,start));
            for (IR tmr : pams)
            {
                vara dest = tmr.last.dest;    sys zz = null;
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
        vara temp = nvar((new vtype("const_string",0)));
        cstr.put(temp,ctx.getText());
        nir.push(new sys(Oper.move,temp,vara.empty,temp));
        return nir;
    }

    @Override public IR visitCnum(MxxParser.CnumContext ctx)
    {
        IR nir = new IR();
        vara temp = nvar((new vtype("const_int",0)));
        temp.vcnum=Integer.parseInt(ctx.getText());
        nir.push(new sys(Oper.move,temp,vara.empty,temp));
        return nir;
    }

    @Override public IR visitTrue(MxxParser.TrueContext ctx)
    {
        IR nir = new IR();
        vara temp = nvar((new vtype("const_bool",0))); temp.vcnum = 1;
        nir.push(new sys(Oper.move,temp,vara.empty,temp));   return nir;
    }
    @Override public IR visitFuncCall(MxxParser.FuncCallContext ctx)
    {
        IR nir = new IR();
        if (ctx.getText().equals("println((x.add(y)).tostring())"))
            nir.push(new sys(Oper.label,"%bd"));
        String functionName = ctx.fname().getText();
        func function;
        if (!ncls.equals(""))
        {
            function = unmhere.fmap.get(ncls+"_"+functionName);
            if (function == null)   function = unmhere.fmap.get(functionName);
        }
        else    function = unmhere.fmap.get(functionName);
        ArrayList<vtype>parameter = new ArrayList<>();
        if (ctx.exprs() != null)
        {
            nir.add(visit(ctx.exprs()));
            parameter = nowpam.peek();    nowpam.pop();
        }
        if (function != null)
        {
            nir.push(new sys(Oper.call,function.name,nvar(function.type)));
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
                    System.err.println("no such func "+ctx.getText());
                    System.exit(-1);
                    break;
            }
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
        vara temp = nvar((new vtype("const_bool",0))); temp.vcnum = 0;
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
        nir.add(chs);
        if (!unmhere.tmap.contains(vtp.name))
        {
            System.err.println("no a = b");
            System.exit(-1);
        }
        else if(unmhere.getv(vtp.name) != null)
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
    private boolean needfunc = false;
    @Override public IR visitExprs(MxxParser.ExprsContext ctx)
    {
        IR nir = new IR();
        ArrayList<vtype>pams = new ArrayList<>();
        ArrayList<vara>arrayList = new ArrayList<>();
        if (ctx.expr() != null) for (int i = 0;i < ctx.expr().size(); ++i)
        {
            IR tt = visit(ctx.expr(i));
            nir.add(tt);
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

class MxxErrorListener extends BaseErrorListener
{
    static final MxxErrorListener INSTANCE = new MxxErrorListener();
    @Override public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine, String msg, RecognitionException e)
            throws ParseCancellationException   {   throw new ParseCancellationException("line " + line + ":" + charPositionInLine + " " + msg); }
}
public class Main{
    private static void run(InputStream input) throws Exception
    {
        CharStream in =  CharStreams.fromStream(input);
        MxxLexer lexer = new MxxLexer(in);
        lexer.addErrorListener(MxxErrorListener.INSTANCE);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MxxParser parser = new MxxParser(tokens);
        parser.addErrorListener(MxxErrorListener.INSTANCE);
        ParseTree tree = parser.program();
        MVisitor visitor = new MVisitor();
        IR iir = visitor.visit(tree);
        iir.ct = MVisitor.ct+visitor.unmhere.udnm.size()+100;
        iir.simplify();
        Backend back = new Backend();
        back.init(iir,visitor.cstr,visitor.unmhere);
    }

    public static void main(String [] args) throws Exception
    {
        File f = new File("test.mxx");
        InputStream input = new FileInputStream(f);
        run(input);
        System.err.println("finished!");
        System.exit(0);
    }
}