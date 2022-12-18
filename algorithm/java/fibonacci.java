public class Main {
   public static void main(String[] args) throws Exception {
       long start = System.nanoTime();
       System.out.println("result:" + fib(40));
       System.out.println("time:" + (System.nanoTime() - start) /1000000000.0 + " sec");
   }
   
   static int fib(int n){
       if (n < 2){
           return n;
       }
       return fib(n - 2) + fib(n - 1);
   }
}