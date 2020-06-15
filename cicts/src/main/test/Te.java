/**
 * 多利设计模式，可以获取多个对象
 */
class Colour{
    private static final Colour RED=new Colour("红色");
    private static final Colour GREEN=new Colour("绿色");
    private static final Colour BLUE=new Colour("蓝色");
    private String title;
    private Colour(String title){		//构造方法私有化
        this.title=title;
    }

    /**
     * 静态方式
     * @param str   用户所传递的对象信息
     * @return  返回用户所需要的对象
     */
    public static Colour getInfo(String str){   //当外部传来所使用的对象时返回所对应的对象
        if("red".equals(str)){
            return RED;
        }else if("green".equals(str)){
            return GREEN;
        }else if("blue".equals(str)){
            return BLUE;
        }else{
            return null;
        }
    }
    public String toString(){
        return this.title;
    }
}
public class Te{
    public static void main(String []args){
        Colour c=Colour.getInfo("red");     //获取红色对象
        Colour o=Colour.getInfo("green");   //获取绿色对象
        Colour l=Colour.getInfo("blue");    //获取蓝色对象
        System.out.println(c);
        System.out.println(o);
        System.out.println(l);
    }
}
