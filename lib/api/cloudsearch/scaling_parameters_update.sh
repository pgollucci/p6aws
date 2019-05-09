p6_aws_cloudsearch_scaling_parameters_update() {
    local domain_name="$1"
    local scaling_parameters="$2"
    shift 2

    p6_run_write_cmd aws cloudsearch update-scaling-parameters --domain-name $domain_name --scaling-parameters $scaling_parameters "$@"
}
