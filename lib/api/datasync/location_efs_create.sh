######################################################################
#<
#
# Function:
#	p6_aws_datasync_location_efs_create(efs_filesystem_arn, ec2_config)
#
#  Args:
#	efs_filesystem_arn - 
#	ec2_config - 
#
#>
######################################################################
p6_aws_datasync_location_efs_create() {
    local efs_filesystem_arn="$1"
    local ec2_config="$2"
    shift 2

    p6_run_write_cmd aws datasync create-location-efs --efs-filesystem-arn $efs_filesystem_arn --ec2-config $ec2_config "$@"
}