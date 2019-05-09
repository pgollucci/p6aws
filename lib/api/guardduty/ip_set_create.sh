p6_aws_guardduty_ip_set_create() {
    local activate="$1"
    local detector_id="$2"
    local format="$3"
    local location="$4"
    local name="$5"
    shift 5

    p6_log_or_run aws guardduty create-ip-set --activate $activate --detector-id $detector_id --format $format --location $location --name $name "$@"
}
