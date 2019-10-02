######################################################################
#<
#
# Function:
#	p6_aws_redshift_reserved_nodes_describe()
#
#>
######################################################################
p6_aws_redshift_reserved_nodes_describe() {

    p6_run_read_cmd aws redshift describe-reserved-nodes "$@"
}