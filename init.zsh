######################################################################
#<
#
# Function: p6df::modules::p6aws::deps()
#
#  Depends:	 p6_bootstrap
#>
######################################################################
p6df::modules::p6aws::deps() { 
  ModuleDeps=(
    p6m7g8/p6types
  ) 
}
######################################################################
#<
#
# Function: p6df::modules::p6aws::init()
#
#  Depends:	 p6_bootstrap
#  Environment:	 P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::p6aws::init() {

  local dir="$P6_DFZ_SRC_DIR/p6m7g8/p6aws"

  p6_bootstrap "$dir"
}
