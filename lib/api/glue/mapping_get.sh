p6_aws_glue_mapping_get() {
    local source="$1"
    shift 1

    p6_log_and_run aws glue get-mapping --source $source "$@"
}
