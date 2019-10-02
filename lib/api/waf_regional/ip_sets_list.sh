######################################################################
#<
#
# Function:
#	p6_aws_waf_regional_ip_sets_list()
#
#>
######################################################################
p6_aws_waf_regional_ip_sets_list() {

    p6_run_read_cmd aws waf-regional list-ip-sets "$@"
}