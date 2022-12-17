// https://news.mynavi.jp/techplus/article/programinglanguageoftheworld-45/
// cmd: $ rustc ./rust/bubble_sort.rs && ./bubble_sort
fn main() {
    let mut data = [5, 18, 3, 19, 9, 20, 15, 1, 12, 2];
    bubble_sort(&mut data);
    println!("{:?}", data)
}

fn bubble_sort(arr: &mut [isize]) {
    for i in 0..arr.len() {
        for j in 0..arr.len() - i - 1 {
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
            }
        }
    }
}