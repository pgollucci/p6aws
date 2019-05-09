p6_aws_athena_work_group_delete() {
    local work_group="$1"
    shift 1

    p6_run_write_cmd aws athena delete-work-group --work-group $work_group "$@"
}
