######################################################################
#<
#
# Function:
#	p6_aws_opsworks_raid_arrays_describe()
#
#>
######################################################################
p6_aws_opsworks_raid_arrays_describe() {

    p6_run_read_cmd aws opsworks describe-raid-arrays "$@"
}