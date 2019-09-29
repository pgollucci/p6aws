######################################################################
#<
#
# Function:
#      = p6_aws_cloudfront_distributions_by_web_acl_id_list(web_acl_id)
#
# Arg(s):
#    web_acl_id - 
#
#
#>
######################################################################
p6_aws_cloudfront_distributions_by_web_acl_id_list() {
    local web_acl_id="$1"
    shift 1

    p6_run_read_cmd aws cloudfront list-distributions-by-web-acl-id --web-acl-id $web_acl_id "$@"
}