######################################################################
#<
#
# Function:
#	p6_aws_rds_source_regions_describe()
#
#>
######################################################################
p6_aws_rds_source_regions_describe() {

    p6_run_read_cmd aws rds describe-source-regions "$@"
}