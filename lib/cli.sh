p6_aws_cmd() {
  local service="$1"
  local cmd="$2"
  shift 2

  local log_type="p6_run_write_cmd"
  case $cmd in
    describe|get|list) log_type=p6_run_read_cmd ;;
  esac

  local arg_str="$@"

  p6_log "eval \"$log_type aws $service $cmd $str\""
}

