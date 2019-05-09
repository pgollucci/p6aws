p6_aws_glue_connection_update() {
    local name="$1"
    local connection_input="$2"
    shift 2

    p6_log_or_run aws glue update-connection --name $name --connection-input $connection_input "$@"
}
