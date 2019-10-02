######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_web_acls_list()
#
#>
######################################################################
p6_aws_waf_regional_web_acls_list() {

    p6_run_read_cmd aws waf-regional list-web-acls "$@"
}