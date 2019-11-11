######################################################################
#<
#
# Function: p6_aws_cmd(service, cmd)
#
#  Args:
#	service - 
#	cmd - 
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
