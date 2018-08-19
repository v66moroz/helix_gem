$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require 'helix_gem'

val = HelixGem.construct_helix_gem_class("Some string", 1, "key" => "value")
p val.a_string
p val.a_number
p val.a_hash

val = HelixGem.construct_helix_gem_class("Some string", -1, "key" => "value")
p val
