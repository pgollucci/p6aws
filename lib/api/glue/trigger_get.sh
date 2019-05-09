p6_aws_glue_trigger_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws glue get-trigger --name $name "$@"
}
