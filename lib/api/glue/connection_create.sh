p6_aws_glue_connection_create() {
    local connection_input="$1"
    shift 1

    p6_log_or_run aws glue create-connection --connection-input $connection_input "$@"
}
