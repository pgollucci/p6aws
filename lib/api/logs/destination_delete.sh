p6_aws_logs_destination_delete() {
    local destination_name="$1"
    shift 1

    p6_log_or_run aws logs delete-destination --destination-name $destination_name "$@"
}
