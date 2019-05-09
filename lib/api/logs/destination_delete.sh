p6_aws_logs_destination_delete() {
    local destination_name="$1"
    shift 1

    p6_run_write_cmd aws logs delete-destination --destination-name $destination_name "$@"
}
