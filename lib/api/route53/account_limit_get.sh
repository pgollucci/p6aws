######################################################################
#<
#
# Function:
#      = p6_aws_route53_account_limit_get(type)
#
# Arg(s):
#    type - 
#
#
#>
######################################################################
p6_aws_route53_account_limit_get() {
    local type="$1"
    shift 1

    p6_run_read_cmd aws route53 get-account-limit --type $type "$@"
}