######################################################################
#<
#
# Function: code rc = p6_aws_cmd(service, cmd, ...)
#
#  Args:
#	service - 
#	cmd - 
#	... - 
#
#  Returns:
#	code - rc
#
#>
######################################################################
p6_aws_cmd() {
  local service="$1"
  local cmd="$2"
  shift 2

  local log_type="p6_run_write_cmd"
  case $cmd in
    describe|get|list) log_type=p6_run_read_cmd ;;
  esac

  p6_run_code "aws $service $cmd $@"
  local rc=$?

  p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function: p6_aws_cli_qload(svc)
#
#  Args:
#	svc - 
#
#>
######################################################################
p6_aws_cli_qload() {
    local svc="$1"

    . $P6_DFZ_SRC_DIR/p6m7g8/p6common/lib/_bootstrap.sh
    p6_bootstrap "$P6_DFZ_SRC_DIR/p6m7g8/p6common"
    p6_bootstrap "$P6_DFZ_SRC_DIR/p6m7g8/p6aws"

    p6_return_void
}

######################################################################
#<
#
# Function: str str = p6_aws_cli_jq_tag_name_get()
#
#  Returns:
#	str - str
#
#>
######################################################################
p6_aws_cli_jq_tag_name_get() {

    local str="Tags[?Key==\`Name\`].Value | [0]"

    p6_return_str "$str"
}