p6_aws_guardduty_ip_set_create() {
    local detector_id="$1"
    local name="$2"
    local format="$3"
    local location="$4"
    local activate="$5"
    shift 5

    p6_run_write_cmd aws guardduty create-ip-set --detector-id $detector_id --name $name --format $format --location $location --activate $activate "$@"
}
