######################################################################
#<
#
# Function:
#      = p6_aws_batch_compute_environments_describe()
#
#
#
#>
######################################################################
p6_aws_batch_compute_environments_describe() {

    p6_run_read_cmd aws batch describe-compute-environments "$@"
}