p6_aws_gamelift_script_delete() {
    local script_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift delete-script --script-id $script_id "$@"
}
