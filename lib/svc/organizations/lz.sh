# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_svc_organizations_lz_do(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6_aws_svc_organizations_lz_do() {
    shift 0

    local account_id
    for account_id in $(p6_aws_svc_organizations_accounts_list | awk '!/Admin/ { print $1 }'); do
        (p6_aws_svc_organizations_sts_run_as "$account_id" "$*" 2>&/dev/null | sed -e "s,^,$account_id\t,") &
    done | grep -v '^\['

    p6_return_void
}
