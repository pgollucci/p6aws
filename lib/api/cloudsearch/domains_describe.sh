######################################################################
#<
#
# Function:
#	p6_aws_cloudsearch_domains_describe()
#
#>
######################################################################
p6_aws_cloudsearch_domains_describe() {

    p6_run_read_cmd aws cloudsearch describe-domains "$@"
}