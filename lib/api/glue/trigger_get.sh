p6_aws_glue_trigger_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws glue get-trigger --name $name "$@"
}
