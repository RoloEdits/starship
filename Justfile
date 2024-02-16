set shell := ["nu", "-c"]

build:
	RUSTFLAGS='-C target-cpu=native' cargo build --release --bin starship
