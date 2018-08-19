Ruby gem with Rust extension

---

1. Install [Rust](https://www.rust-lang.org/)

`curl https://sh.rustup.rs -sSf | sh`

Don't miss this message:

```
Rust is installed now. Great!

To get started you need Cargo's bin directory ($HOME/.cargo/bin) in your PATH 
environment variable. Next time you log in this will be done automatically.

To configure your current shell run source $HOME/.cargo/env

```

2. In `crates/helix_gem` run `gem build helix_gem`

3. Move `helix_gem-0.1.0.gem` to `vendor/cache`

4. Run bundle

`bundle`

5. Run helix_gem

`bundle exec ruby helix_gem.rb`
