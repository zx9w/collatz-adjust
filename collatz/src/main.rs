fn main() {
    println!("{:#?}", collatz(3));
}

fn collatz(n: i64) -> Vec<i64> {
    let mut x = n;
    let mut rtn = vec![n];
    while x != 1 {
        if x % 2 == 0 {
            x = x/2;
        } else {
            x = 3*x+1;
        }
        rtn.push(x);
    }
    return rtn
}
