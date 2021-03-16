######################################################################
#<
#
# Function: p6_aws_svc_ec2_regions_iterator()
#
#>
######################################################################
p6_aws_svc_ec2_regions_iterator() {

    local save_region
    save_region=$(p6_aws_env_region_active)
    local region
    for region in $(p6_aws_svc_ec2_regions_list); do
        p6_aws_env_region_active "$region" >/dev/null
        p6_run_code "$@" | sed -e "s,^,$region\t,"
    done

    p6_aws_env_region_active "$save_region" >/dev/null
}

######################################################################
#<
#
# Function: p6_aws_svc_ec2_regions_list()
#
#>
######################################################################
p6_aws_svc_ec2_regions_list() {

    p6_aws_cli_cmd ec2 describe-regions \
        --output text \
        --filters Name="'region-name,Values=us-*'" \
        --query "'Regions[].[RegionName]'" |
        sort
}
