#![no_std]
#![no_main]

use core::panic::PanicInfo;
use core::sync::atomic::{self, Ordering};

#[inline(never)]
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {
        atomic::compiler_fence(Ordering::SeqCst);
    }
}

use esp_hal::main;
use esp_hal::{
    delay::Delay,
    gpio::{Level, Output},
};
use esp_println::println;

#[main]
fn main() -> ! {
    let peripherals = esp_hal::init(esp_hal::Config::default());
    println!("Peripherals initialized");

    let mut led = Output::new(peripherals.GPIO8, Level::High);
    println!("LED pin configured");
    let delay = Delay::new();
    println!("Delay initialized");

    println!("Led base level is {:?}", led.output_level());
    loop {
        println!("Toggling LED");
        led.toggle();
        println!("Led level is {:?}", led.output_level());
        delay.delay_millis(500);
    }
}
