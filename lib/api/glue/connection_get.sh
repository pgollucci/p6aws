p6_aws_glue_connection_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws glue get-connection --name $name "$@"
}
