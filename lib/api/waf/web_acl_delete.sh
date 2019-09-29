######################################################################
#<
#
# Function:
#      = p6_aws_waf_web_acl_delete(web_acl_id, change_token)
#
# Arg(s):
#    web_acl_id - 
#    change_token - 
#
#
#>
######################################################################
p6_aws_waf_web_acl_delete() {
    local web_acl_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf delete-web-acl --web-acl-id $web_acl_id --change-token $change_token "$@"
}