p6_aws_workdocs_labels_create() {
    local resource_id="$1"
    local labels="$2"
    shift 2

    p6_log_or_run aws workdocs create-labels --resource-id $resource_id --labels $labels "$@"
}
