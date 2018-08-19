use std::collections::{HashMap};

#[macro_use]
extern crate helix;

ruby! {
    class HelixGemClass {
        struct {
            a_string: String,
            a_number: i32,
            a_hash: HashMap<String, String>,
        }

        def initialize(helix, a_string: String, a_number: i32, a_hash: HashMap<String, String>) {
            HelixGemClass { helix, a_string, a_number, a_hash }
        }

        def a_string(&self) -> String {
            self.a_string.clone()
        }

        def a_number(&self) -> i32 {
            self.a_number
        }

        def a_hash(&self) -> HashMap<String, String> {
            self.a_hash.clone()
        }
    }

    class HelixGem {
        def construct_helix_gem_class(a_string: String, a_number: i32, a_hash: HashMap<String, String>) -> Option<HelixGemClass> {
            if a_number < 0 {
                None
            } else {
                Some(
                    HelixGemClass::new(a_string, a_number, a_hash)
                )
            }
        }
    }
}
