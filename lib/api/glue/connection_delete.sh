p6_aws_glue_connection_delete() {
    local connection_name="$1"
    shift 1

    p6_log_or_run aws glue delete-connection --connection-name $connection_name "$@"
}
