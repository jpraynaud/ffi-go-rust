#[no_mangle]
pub extern "C" fn hello() {
    println!("Hello World in Rust");
}

#[no_mangle]
pub extern "C" fn addition(x: u32, y: u32) -> u32 {
    x + y
}
