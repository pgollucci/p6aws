p6_aws_medialive_offering_purchase() {
    local count="$1"
    local offering_id="$2"
    shift 2

    p6_log_or_run aws medialive purchase-offering --count $count --offering-id $offering_id "$@"
}
