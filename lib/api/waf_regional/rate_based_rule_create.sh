######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_rate_based_rule_create(name, metric_name, rate_key, rate_limit, change_token)
#
# Arg(s):
#    name - 
#    metric_name - 
#    rate_key - 
#    rate_limit - 
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_regional_rate_based_rule_create() {
    local name="$1"
    local metric_name="$2"
    local rate_key="$3"
    local rate_limit="$4"
    local change_token="$5"
    shift 5

    p6_run_write_cmd aws waf-regional create-rate-based-rule --name $name --metric-name $metric_name --rate-key $rate_key --rate-limit $rate_limit --change-token $change_token "$@"
}