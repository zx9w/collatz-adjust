fn main() {
    let theseq = find_second_longest(gen_seqs(10000000));
    let thesum: u32 = theseq.iter().sum();
    println!("{:#?}", theseq.len());
    println!("{:#?}", thesum);
}

fn collatz(n: u32) -> Vec<u32> {
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

fn gen_seqs(n: u32) -> Vec<Vec<u32>> {
    let mut rtn = vec![vec![1]];
    for x in 2..n {
        rtn.push(collatz(x));
    }
    return rtn
}


fn find_second_longest(seqs: Vec<Vec<u32>>) -> Vec<u32> {
    let mut longest = vec![];
    let mut second = vec![];

    for seq in seqs {
        if seq.len() > longest.len() {
            second = longest;
            longest = seq;
        } else if seq.len() > second.len() {
            second = seq;
        }
    }
    return second
}

