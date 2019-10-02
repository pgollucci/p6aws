######################################################################
#<
#
# Function:
#	p6_aws_machinelearning_data_sources_describe()
#
#>
######################################################################
p6_aws_machinelearning_data_sources_describe() {

    p6_run_read_cmd aws machinelearning describe-data-sources "$@"
}