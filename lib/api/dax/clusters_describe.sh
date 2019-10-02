######################################################################
#<
#
# Function:
#	p6_aws_dax_clusters_describe()
#
#>
######################################################################
p6_aws_dax_clusters_describe() {

    p6_run_read_cmd aws dax describe-clusters "$@"
}