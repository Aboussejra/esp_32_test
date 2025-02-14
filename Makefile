install:
	rustup target add riscv32imac-unknown-none-elf 
	cargo install espup
	espup install
	cargo install ldproxy  # may be needed for https://docs.esp-rs.org/book/installation/std-requirements.html
	source ~/export-esp.sh
	cargo install cargo-espflash

apt_install:
	apt install libudev-dev

board_info: # Permits checking conneciton is okey
	cargo espflash board-info
setup_ubs_port_perm:
	sudo usermod -a -G dialout $USER

bash_completion_enable:
	cargo espflash completions bash > ./bash_completion.sh
	source ./bash_completion.sh

build:
	cargo build --target riscv32imac-unknown-none-elf 
	cargo espflash flash -M -c esp32c6

clean:
	cargo clean