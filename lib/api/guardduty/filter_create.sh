p6_aws_guardduty_filter_create() {
    local detector_id="$1"
    local finding_criteria="$2"
    local name="$3"
    shift 3

    p6_log_or_run aws guardduty create-filter --detector-id $detector_id --finding-criteria $finding_criteria --name $name "$@"
}
