fn add(x: i32) -> Box<Fn(i32) -> i32> {
    Box::new(move |y| x + y)
}

fn each<F>(list: &[i32], callback: F) -> () where F: Fn(i32) -> () {
    for item in list {
        callback(*item)
    }
}

fn main() {
    add(1)(2);
    each(&[1, 2, 3], |n| println!("{}", n))
}
