######################################################################
#<
#
# Function:
#      = p6_aws_es_domain_names_list()
#
#
#
#>
######################################################################
p6_aws_es_domain_names_list() {

    p6_run_read_cmd aws es list-domain-names "$@"
}