use std::time::{Instant};

fn main(){
    let start = Instant::now();
    println!("result: {}", fib(40));
    let end = start.elapsed();
    println!("time: {}.{:03} sec", end.as_secs(), end.subsec_nanos() / 1000000);
}

fn fib(n: i32) -> i32 {
    if n < 2 {
        return n;
    }
    return fib(n - 2) + fib(n - 1);
}