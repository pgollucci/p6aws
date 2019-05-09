p6_aws_xray_group_create() {
    local group_name="$1"
    shift 1

    p6_log_or_run aws xray create-group --group-name $group_name "$@"
}
