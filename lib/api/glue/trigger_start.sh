p6_aws_glue_trigger_start() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue start-trigger --name $name "$@"
}
