p6_aws_sns_sms_attributes_set() {
    local attributes="$1"
    shift 1

    p6_log_or_run aws sns set-sms-attributes --attributes $attributes "$@"
}
