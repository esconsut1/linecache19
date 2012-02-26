require "mkmf"
require "ruby_core_source"

if RUBY_VERSION < "1.9"
  STDERR.print("Ruby version is too old\n")
  exit(1)
end

hdrs = proc {
  have_header("vm_core.h") and have_header("version.h")
}

dir_config("ruby")
if !Ruby_core_source::create_makefile_with_core(hdrs, "trace_nums19")
  STDERR.print("Makefile creation failed\n")
  exit(1)
end
