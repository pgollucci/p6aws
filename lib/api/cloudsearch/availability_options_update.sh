p6_aws_cloudsearch_availability_options_update() {
    local domain_name="$1"
    local multi_az="$2"
    shift 2

    p6_run_write_cmd aws cloudsearch update-availability-options --domain-name $domain_name --multi-az $multi_az "$@"
}
