######################################################################
#<
#
# Function:
#      = p6_aws_waf_web_acl_get(web_acl_id)
#
# Arg(s):
#    web_acl_id - 
#
#
#>
######################################################################
p6_aws_waf_web_acl_get() {
    local web_acl_id="$1"
    shift 1

    p6_run_read_cmd aws waf get-web-acl --web-acl-id $web_acl_id "$@"
}