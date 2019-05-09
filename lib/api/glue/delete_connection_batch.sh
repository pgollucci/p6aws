p6_aws_glue_delete_connection_batch() {
    local connection_name_list="$1"
    shift 1

    p6_log_or_run aws glue batch-delete-connection --connection-name-list $connection_name_list "$@"
}
