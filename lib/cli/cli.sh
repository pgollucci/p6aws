######################################################################
#<
#
# Function: code rc = p6_aws_cli_cmd(service, cmd, ...)
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
p6_aws_cli_cmd() {
  local service="$1"
  local cmd="$2"
  shift 2

  p6_run_code "aws $service $cmd $*"
  local rc=$?

  p6_return_code_as_code "$rc"
}

######################################################################
#<
#
# Function: p6_aws_cli_qload(dir)
#
#  Args:
#	dir -
#
#>
######################################################################
p6_aws_cli_qload() {
  local dir="$1"

  . "$dir/p6common/lib/_bootstrap.sh"
  p6_bootstrap "$dir/p6common"
  p6_bootstrap "$dir/p6aws"

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