######################################################################
#<
#
# Function:
#	p6_aws_waf_web_acl_create(name, metric_name, default_action, change_token)
#
#  Args:
#	name - 
#	metric_name - 
#	default_action - 
#	change_token - 
#
#>
######################################################################
p6_aws_waf_web_acl_create() {
    local name="$1"
    local metric_name="$2"
    local default_action="$3"
    local change_token="$4"
    shift 4

    p6_run_write_cmd aws waf create-web-acl --name $name --metric-name $metric_name --default-action $default_action --change-token $change_token "$@"
}