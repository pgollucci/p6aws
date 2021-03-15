# shellcheck shell=bash
######################################################################
#<
#
# Function: p6_aws_alfred_browser_console(pfunc)
#
#  Args:
#	pfunc -
#
#>
######################################################################
p6_aws_alfred_browser_console() {
    local pfunc="$1"

    p6_run_yield "p6_awsa_$pfunc"
    p6_aws_svc_sts_role_federation_assume "$pfunc"

    local login_url
    login_url=$(p6_aws_svc_sts_identity_broker_custom_login_url "$(p6_aws_env_shared_credentials_file_active)")

    open -na 'Google Chrome' --args --incognito --user-data-dir="$HOME/Library/Application Support/Google/Chrome/Profile p6cli-$pfunc" "$login_url"

    p6_return_void
}
