p6_aws_cloudsearch_availability_options_describe() {
    local domain_name="$1"
    shift 1

    p6_run_read_cmd aws cloudsearch describe-availability-options --domain-name $domain_name "$@"
}
