######################################################################
#<
#
# Function:
#      = p6_aws_cloudsearch_domain_names_list()
#
#
#
#>
######################################################################
p6_aws_cloudsearch_domain_names_list() {

    p6_run_read_cmd aws cloudsearch list-domain-names "$@"
}