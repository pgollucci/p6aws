######################################################################
#<
#
# Function:
#      = p6_aws_waf_regional_resources_for_web_acl_list(web_acl_id)
#
# Arg(s):
#    web_acl_id - 
#
#
#>
######################################################################
p6_aws_waf_regional_resources_for_web_acl_list() {
    local web_acl_id="$1"
    shift 1

    p6_run_read_cmd aws waf-regional list-resources-for-web-acl --web-acl-id $web_acl_id "$@"
}