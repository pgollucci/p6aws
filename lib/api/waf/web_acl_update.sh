######################################################################
#<
#
# Function:
#	p6_aws_waf_web_acl_update(web_acl_id, change_token)
#
#  Args:
#	web_acl_id - 
#	change_token - 
#
#>
######################################################################
p6_aws_waf_web_acl_update() {
    local web_acl_id="$1"
    local change_token="$2"
    shift 2

    p6_run_write_cmd aws waf update-web-acl --web-acl-id $web_acl_id --change-token $change_token "$@"
}