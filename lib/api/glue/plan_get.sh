p6_aws_glue_plan_get() {
    local mapping="$1"
    local source="$2"
    shift 2

    p6_log_and_run aws glue get-plan --mapping $mapping --source $source "$@"
}
