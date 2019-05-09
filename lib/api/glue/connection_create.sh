p6_aws_glue_connection_create() {
    local connection_input="$1"
    shift 1

    p6_run_write_cmd aws glue create-connection --connection-input $connection_input "$@"
}
