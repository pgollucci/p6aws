p6df::modules::p6aws::version() { echo "0.0.1"; }

p6df::modules::p6aws::init() {

  local dir="$P6_DFZ_SRC_DIR/p6m7g8/p6aws"

  p6df::util::path_if "$dir/bin"
  p6_bootstrap "$dir"
}
