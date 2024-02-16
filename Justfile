flags := "-march=native -O3 -flto"

export CC := "clang"
export CXX := "clang++"
export CFLAGS := flags
export CXXFLAGS := flags
export RUSTFLAGS := "-C target-cpu=native -C linker=clang -C link-arg=-fuse-ld=lld -C linker-plugin-lto -C link-args=-Wl,--icf=all"

default: build

build:
    cargo build --release

install:
    cp -f target/release/starship ~/.local/bin/starship
